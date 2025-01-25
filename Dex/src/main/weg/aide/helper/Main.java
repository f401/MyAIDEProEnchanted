package weg.aide.helper;

import java.io.File;
import java.io.FileWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nonnull;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.Annotation;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.immutable.ImmutableAnnotation;
import org.jf.dexlib2.rewriter.ClassDefRewriter;
import org.jf.dexlib2.rewriter.DexRewriter;
import org.jf.dexlib2.rewriter.FieldReferenceRewriter;
import org.jf.dexlib2.rewriter.MethodReferenceRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.RewriterModule;
import org.jf.dexlib2.rewriter.Rewriters;
import org.jf.dexlib2.writer.pool.DexPool;
import org.jf.dexlib2.immutable.ImmutableClassDef;

public class Main{

    public static void main(String[] args) throws Exception{
        Thread thread = new Thread(new Runnable(){

				@Override
				public void run(){
					try{
                        System.out.println("start");
						Main.run("/storage/emulated/0/Myfiles/work/aide/classes.dex");
						Main.run("/storage/emulated/0/Myfiles/work/aide/classes2.dex");
                        Main.run("/storage/emulated/0/Myfiles/work/aide/classes3.dex");
                        Main.run("/storage/emulated/0/Myfiles/work/aide/packaging.dex");
                        System.out.println("All finished");
					}
					catch (Exception e){
						e.printStackTrace();
					}
				}
			});
        thread.setName("AIDE");
        thread.start();
    }

    private static final Map<String, ClassDefRewriteItem> sClassTables = Collections.synchronizedMap(new HashMap<>(100000));

    static {
        sClassTables.put("Labcd/wu;", ClassDefRewriteItem.of("Labcd/ApplicationUtils;")
            .addField("j6", "mApplication").addField("FH", "mClassLock")
            .addMethod("j6", "getApplication").addMethod("j6", "getApplicationByContext", "Ljava/lang/Object;"));
            
        /*sClassTables.put("Lcom/aide/ui/build/packagingservice/ExternalPackagingService;", ClassDefRewriteItem.of("Lcom/aide/ui/build/packagingservice/ExternalPackagingService;")
            .addField("Hw", "mBinder"));
            
        sClassTables.put("Lcom/aide/ui/build/packagingservice/e;", ClassDefRewriteItem.of("Lcom/aide/ui/build/packagingservice/IExternalPackagingService;"));
        
        sClassTables.put("Lcom/aide/ui/build/packagingservice/e$a;", ClassDefRewriteItem.of("Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Stub;")
            );
            
        sClassTables.put("Lcom/aide/ui/build/packagingservice/e$a$a;", ClassDefRewriteItem.of("Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Stub$Proxy;")
                         );
                         
        sClassTables.put("Labcd/d;", ClassDefRewriteItem.of("Landroidx/core/graphics/drawable/DrawableCompat;")
            .addMethod("DW", "wrap", "Landroid/graphics/drawable/Drawable;")
            .addMethod("j6", "setTintList", "Landroid/graphics/drawable/Drawable;", "Landroid/content/res/ColorStateList;")
            .addMethod("j6", "setTintMode", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/PorterDuff$Mode;")
            .addMethod("j6", "setLayoutDirection", "Landroid/graphics/drawable/Drawable;", "I")
            .addMethod("j6", "isAutoMirrored", "Landroid/graphics/drawable/Drawable;"));
            
        sClassTables.put("Labcd/i;", ClassDefRewriteItem.of("Landroidx/core/graphics/drawable/TintAwareDrawable;"));
        sClassTables.put("Labcd/e;", ClassDefRewriteItem.of("Landroidx/core/graphics/drawable/WrappedDrawable;"));
        */
    }

    private static void run(String dexPath) throws Exception{
        System.out.println("start rewrite");
        
		File file = new File(dexPath);
        final DexBackedDexFile dexFile = DexFileFactory.loadDexFile(file, Opcodes.getDefault());
        FileWriter writer = new FileWriter(file.getAbsolutePath() + "." + System.currentTimeMillis());

		//重写器
        DexRewriter rewriter = new DexRewriter(new RewriterModule() {
				@Nonnull
				@Override
				public Rewriter<String> getTypeRewriter(@Nonnull Rewriters rewriters){
					return new Rewriter<String>() {
						@Nonnull
						@Override
						public String rewrite(@Nonnull String value){
							//重写类名
							return getType(value);
						}
					};
				}

				@Nonnull
				@Override
				public Rewriter<Annotation> getAnnotationRewriter(@Nonnull Rewriters rewriters){
					return new Rewriter<Annotation>() {
						@Nonnull
						@Override
						public Annotation rewrite(@Nonnull Annotation value){
							return new ImmutableAnnotation(value.getVisibility(), getType(value.getType()), value.getElements());
						}
					};
				}
                
                @Nonnull public Rewriter<FieldReference> getFieldReferenceRewriter(@Nonnull Rewriters rewriters) {
                    return new FieldReferenceRewriter(rewriters) {
                        @Nonnull @Override public FieldReference rewrite(@Nonnull FieldReference fieldReference) {
                            return new RewrittenFieldReference(fieldReference) {
                                @Override @Nonnull public String getName() {
                                    String declareClass = fieldReference.getDefiningClass();
                                    
                                    
                                    
                                    ClassDefRewriteItem item = sClassTables.get(declareClass);
                                    if (item != null) 
                                        return item.getFieldType(fieldReference.getName());
                                    return fieldReference.getName();
                                }
                            };
                        }
                    };
                }

                @Nonnull public Rewriter<MethodReference> getMethodReferenceRewriter(@Nonnull Rewriters rewriters) {
                    return new MethodReferenceRewriter(rewriters) {
                        @Nonnull @Override public MethodReference rewrite(@Nonnull MethodReference methodReference) {
                            return new RewrittenMethodReference(methodReference) {
                                @Override @Nonnull public String getName() {
                                    String declareClass = methodReference.getDefiningClass();
                                    ClassDefRewriteItem item = sClassTables.get(declareClass);
                                    if (item != null)
                                        return item.getMethodType(methodReference.getName(), methodReference.getParameterTypes());
                                    return methodReference.getName();
                                }
                            };
                        }
                    };
                }
                
                

				@Nonnull
				@Override
				public Rewriter<ClassDef> getClassDefRewriter(@Nonnull Rewriters rewriters){
					return new ClassDefRewriter(rewriters);/* {
						@Nonnull
						@Override
						public ClassDef rewrite(@Nonnull ClassDef classDef){
							if ( classDef.getType().startsWith("Lcom/aide/ui") ){
								if ( AccessFlags.PRIVATE.isSet(classDef.getAccessFlags()) ){
									int accessFlags = classDef.getAccessFlags();
									accessFlags &= AccessFlags.PRIVATE.getValue();
									accessFlags |= AccessFlags.PUBLIC.getValue();

									return new ImmutableClassDef(classDef.getType(),
																 accessFlags,
																 classDef.getSuperclass(),
																 classDef.getInterfaces(),
																 classDef.getSourceFile(),
																 classDef.getAnnotations(),
																 classDef.getStaticFields(),
																 classDef.getMethods());
								}
							}
							return super.rewrite(classDef);
						}
					};*/
				}
			});
        DexFile newDexFile = rewriter.getDexFileRewriter().rewrite(dexFile);
        File outputDir = new File(file.getParentFile(), "rewrite");
        if ( !outputDir.exists() )
            outputDir.mkdirs();
        File outputDex = new File(outputDir, file.getName());
        DexFileFactory.writeDexFile(outputDex.getAbsolutePath(), newDexFile);
        for ( String key : sClassTables.keySet() ){
            writer.write(key + "    ->      " + sClassTables.get(key));
            writer.write("\n");
        }
        writer.close();
        System.out.println("finish");
    }

    synchronized private static String getType(String type){

        if ( sClassTables.containsKey(type) ){
            return sClassTables.get(type).newNane;
        }

        if ( type.startsWith("[") ){
            String key = type.substring(1);
            if ( sClassTables.containsKey(key) ){
                return "[" + sClassTables.get(key);
            }
        }

        if ( type.contains("$") ){
            String simple = type.substring(0, type.indexOf("$"));
            if ( sClassTables.containsKey(simple + ";") ){
                String value = sClassTables.get(simple + ";").newNane;
                value = value.substring(0, value.length() - 1);
                value += type.substring(simple.length());
                return value;
            }
        }
        return type;
    }
    
    
}
