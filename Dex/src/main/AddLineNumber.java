
import java.util.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.rewriter.*;

import com.google.common.collect.Lists;
import java.io.File;
import java.io.FileFilter;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.debug.DebugItem;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.immutable.debug.ImmutableLineNumber;

public class AddLineNumber{

	public static void main2(String[] args) throws Exception{

		String dexDir = "";
		//AIDE OUT(在修改的基础上再修改)
		dexDir = "/storage/emulated/0/.MyAicy/分类/apk/AIDE/AIDE2/out/";


		File dexFileDirs = new File(dexDir);
		File[] listFiles = dexFileDirs.listFiles(new FileFilter(){
				@Override
				public boolean accept(File file){
					return file.isFile() && file.getName().endsWith(".dex");
				}
			}
		);
		//所有dex
		ArrayList<File> dexListFile = new ArrayList<File>(Arrays.asList(listFiles));
		
		//dexListFile.remove(0);
		//RewriterModule zeroAicyRewriterModule = new ZeroAicyRewriterModule();
		//去除 类名中类名过长的 '混淆混淆'
		//rewriterModule = zeroAicyRewriterModule;
		
		// 为每个类重写行号
		//RewriterModule lineRewriterModule = new RewriterLineModule();
		//添加行号
		//rewriterModule = lineRewriterModule;
		
		RewriterModule rewriterModule = null;
		
		
		rewriterModule = new 修复初始化调用();


		DexRewriter rewriter = new DexRewriter(rewriterModule);
		File outDir = new File(dexDir, "out");
		if(!outDir.exists()){
			outDir.mkdirs();
		}
		
		//加载dexs
		for(File file : dexListFile){
			DexBackedDexFile loadDexFile = DexFileFactory.loadDexFile(file, Opcodes.forApi(29));
			DexFile rewriteDexFile = rewriter.getDexFileRewriter().rewrite(loadDexFile);

			File outFile = new File(outDir.getAbsolutePath(), file.getName());
			System.out.println("修改 " + outFile.getAbsolutePath());
			DexFileFactory.writeDexFile(outFile.getAbsolutePath(), rewriteDexFile);
			System.out.println("写入 " + outFile.getAbsolutePath());

		}
		System.out.println("ok");
	}


	public static class RewriterLineModule extends RewriterModule{


		@Override
		@Nonnull
		public Rewriter<ClassDef> getClassDefRewriter(@Nonnull Rewriters rewriters){
			AddLineNumber.ClassDefRewriterLine classDefRewriterLine = new ClassDefRewriterLine(rewriters);
			return classDefRewriterLine;
		}
	}
	
	//对每一个类重写行号
	public static class ClassDefRewriterLine extends ClassDefRewriter{

		public class RewrittenClassDefLine extends ClassDefRewriter.RewrittenClassDef{
			class MethodImplementationRewriterLine extends MethodImplementationRewriter{
				final HashMap<MethodImplementation, RewrittenMethodImplementation> cHashMap = new HashMap<>();

				public MethodImplementationRewriterLine(@Nonnull Rewriters rewriters){
					super(rewriters);
				}
				@Nonnull
				@Override
				public MethodImplementation rewrite(@Nonnull MethodImplementation methodImplementation){

					if(cHashMap.containsKey(methodImplementation)){
						return cHashMap.get(methodImplementation);
					}
					RewrittenMethodImplementation rewrittenMethodImplementation = new RewrittenMethodImplementation(methodImplementation){
						int curCodeUnits = 0;
						List<DebugItem> debugItemsCache;
						@Override
						@Nonnull
						public Iterable<? extends DebugItem> getDebugItems(){
							if(debugItemsCache == null){
								debugItemsCache = new ArrayList<DebugItem>();
								System.out.println("当前行号: " + curLine);
								for(Instruction Instruction : methodImplementation.getInstructions()){
									debugItemsCache.add(new ImmutableLineNumber(curCodeUnits , curLine++));
									curCodeUnits += Instruction.getCodeUnits();
								}
							}
							return debugItemsCache;
						}
					};
					cHashMap.put(methodImplementation, rewrittenMethodImplementation);
					return rewrittenMethodImplementation;

				}
			}

			MethodImplementationRewriterLine methodImplementationRewriterLine = new MethodImplementationRewriterLine(ClassDefRewriterLine.this.rewriters);
			int curLine;
			public RewrittenClassDefLine(ClassDef classDef){
				super(classDef);
			}

			Iterable<Method> directMethods;

			Iterable<Method> virtualMethods;
			@Override
			@Nonnull
			public Iterable<? extends Method> getDirectMethods(){
				this.curLine = 1;
				if(directMethods != null){
					System.out.println("第二次");
					return directMethods;
				}
				directMethods = RewriterUtils.rewriteIterable(getMethodRewriterLine(rewriters), classDef.getDirectMethods());
				return directMethods;
			}

			@Override
			@Nonnull
			public Iterable<? extends Method> getVirtualMethods(){
				if(virtualMethods != null){
					System.out.println("第二次");
					return virtualMethods;
				}
				virtualMethods = RewriterUtils.rewriteIterable(getMethodRewriterLine(rewriters), classDef.getVirtualMethods());
				return virtualMethods;
			}
			MethodRewriter methodRewriter ;

			@Nonnull
			public Rewriter<Method> getMethodRewriterLine(@Nonnull Rewriters rewriters){

				if(methodRewriter == null){
					methodRewriter = new MethodRewriter(rewriters){
						HashMap<Method, RewrittenMethod> methodMap = new HashMap<>();
						@Nonnull
						@Override
						public Method rewrite(@Nonnull Method value){
							MethodRewriter.RewrittenMethod rewrittenMethodCache = methodMap.get(value);
							if(rewrittenMethodCache == null){
								rewrittenMethodCache = new RewrittenMethod(value){
									MethodImplementation methodImplementation = RewriterUtils.rewriteNullable(methodImplementationRewriterLine, method.getImplementation());
									@Override
									@Nullable
									public MethodImplementation getImplementation(){
										return methodImplementation;
									}
								};
							}
							return rewrittenMethodCache;
						}
					};
				}
				return methodRewriter;
			}
		}

		//
		public ClassDefRewriterLine(Rewriters rewriters){
			super(rewriters);
		}
		Map<String, ClassDef> classDefMap = new HashMap<>();
		@Nonnull @Override public ClassDef rewrite(@Nonnull ClassDef classDef){
			ClassDef classDefCache = classDefMap.get(classDef.getType());

			//System.out.println(hashCode() + " " + classDef.getType());
			if(classDefCache == null){
				classDefCache = new RewrittenClassDefLine(classDef);
				classDefMap.put(classDef.getType(), classDefCache);
			}
			return classDefCache;

		}

	}
}
