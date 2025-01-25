package io.github.zeroaicy.dexlib;

import java.io.File;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.DexFile;
import java.io.IOException;
import org.jf.dexlib2.iface.MultiDexContainer;
import org.jf.dexlib2.rewriter.DexRewriter;

public class Main{
	public static void main(String[] args) throws IOException{
		String dexZipPath = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/DexLib2-3/data/" + "classes.zip";

		File dexZipFile = new File(dexZipPath);
		File file = new File("/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/DexLib2-3/data/out");
		file.mkdirs();
		DexRewriter rewriter = new DexRewriter(new RenameRewriterModule());

		MultiDexContainer<? extends DexBackedDexFile> loadDexContainer = DexFileFactory.loadDexContainer(dexZipFile, Opcodes.getDefault());
		for ( String dexEntryName : loadDexContainer.getDexEntryNames() ){
			DexBackedDexFile loadDexFile = loadDexContainer.getEntry(dexEntryName).getDexFile();
			DexFile rewriteDexFile = rewriter.getDexFileRewriter().rewrite(loadDexFile);

			DexFileFactory.writeDexFile(new File(file, dexEntryName).getAbsolutePath(), rewriteDexFile);
		}
		System.out.println("写入完成");
	}

	public static void 架构设计(){

		/**
		 * 1.类名修改
		 *  1.1 类名修改需要重写 TypeRewriter类的rewriteUnwrappedType方法
		 *      判断是否是类(L.*;)，是则从 类重命名规则中替换
		 *  1.2 支持8正则表达式替换
		 *      1.2.3 先从[全局类名重命名Map]中查询
		 *      没有包名的可批量重命名
		 *      没有再判断正则，修改后put[全局类名重命名Map]
		 *      如何减少正则的判断呢，可以限定包名
		 
		 *   1.3 规则设计
		 *      规则1：类名重命名，显示指定，一对一
		 *      ReTypeName了[分隔符]Labcd/a123;[分隔符]Lcom/aide/123;
		 
		 *      规则2：包名重命名，显示指定，不包括子包
		 *      RePackageName[分隔符]Lold_package/;[分隔符]Lnew_package/;
		 *          Labcd/a123; -> Lcom/aide/a123; ✔
		 *          Labcd/b99656/a123; ❌
		 *      规则2.1: ReTypeName了[分隔符][分隔符]Lcom/aide/123;
		 *      则替换没有包名的类，充分利用规则2
		 *      当被替换的包名为空时，相当于插入，而又因为不会替换子包名
		 *      所以有包名的类不会被替换
		 
		 *      规则3：包名重命名，显示指定包括子包
		 *      RePackageNameAll[分隔符]Labcd/;[分隔符]Lcom/aide/;
		 *      Labcd/a123; -> Lcom/aide/a123; ✔
		 *      Labcd/b99656/a123; -> Lcom/aide/b99656/a123;✔
		 */

	}
}
