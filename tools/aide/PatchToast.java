import zeroaicy.org.objectweb.asm.*;
import java.io.*;
import java.util.zip.*;

public class PatchToast {
    public static void main(String[] args) throws Exception {
        String in = args[0], out = args[1];
        String target = "com/s1243808733/util/Utils.class";
        int patched = 0;
        try (ZipFile zf = new ZipFile(in);
             ZipOutputStream zo = new ZipOutputStream(new FileOutputStream(out))) {
            java.util.Enumeration<? extends ZipEntry> en = zf.entries();
            while (en.hasMoreElements()) {
                ZipEntry e = en.nextElement();
                byte[] data = readAll(zf.getInputStream(e));
                if (e.getName().equals(target)) { data = patch(data); patched++; }
                ZipEntry ne = new ZipEntry(e.getName());
                ne.setTime(e.getTime());
                zo.putNextEntry(ne);
                zo.write(data);
                zo.closeEntry();
            }
        }
        System.out.println("patched=" + patched);
    }
    static byte[] readAll(InputStream is) throws IOException {
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        byte[] b = new byte[8192]; int n;
        while ((n = is.read(b)) > 0) bo.write(b, 0, n);
        return bo.toByteArray();
    }
    static byte[] patch(byte[] cls) {
        ClassReader cr = new ClassReader(cls);
        ClassWriter cw = new ClassWriter(cr, ClassWriter.COMPUTE_FRAMES) {
            protected String getCommonSuperClass(String a, String b) { return "java/lang/Object"; }
        };
        ClassVisitor cv = new ClassVisitor(Opcodes.ASM9, cw) {
            public MethodVisitor visitMethod(int acc, String name, String desc, String sig, String[] ex) {
                if (name.equals("toast") && desc.equals("(Ljava/lang/Throwable;Z)Landroid/widget/Toast;")) {
                    MethodVisitor mv = super.visitMethod(acc, name, desc, sig, ex);
                    return new MethodVisitor(Opcodes.ASM9, mv) {
                        public void visitCode() {
                            super.visitCode();
                            Label elseL = new Label(), after = new Label();
                            super.visitVarInsn(Opcodes.ILOAD, 1);
                            super.visitJumpInsn(Opcodes.IFEQ, elseL);
                            super.visitVarInsn(Opcodes.ALOAD, 0);
                            super.visitMethodInsn(Opcodes.INVOKESTATIC, "com/s1243808733/util/Utils",
                                "getStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/String;", false);
                            super.visitJumpInsn(Opcodes.GOTO, after);
                            super.visitLabel(elseL);
                            super.visitVarInsn(Opcodes.ALOAD, 0);
                            super.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Throwable",
                                "getMessage", "()Ljava/lang/String;", false);
                            super.visitLabel(after);
                            super.visitVarInsn(Opcodes.ASTORE, 2);
                            Label t0 = new Label(), t1 = new Label(), th = new Label(), end = new Label();
                            super.visitTryCatchBlock(t0, t1, th, "java/lang/Throwable");
                            super.visitLabel(t0);
                            super.visitTypeInsn(Opcodes.NEW, "java/io/FileWriter");
                            super.visitInsn(Opcodes.DUP);
                            super.visitLdcInsn("/storage/emulated/0/aide_err.txt");
                            super.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/io/FileWriter",
                                "<init>", "(Ljava/lang/String;)V", false);
                            super.visitVarInsn(Opcodes.ASTORE, 3);
                            super.visitVarInsn(Opcodes.ALOAD, 3);
                            super.visitVarInsn(Opcodes.ALOAD, 2);
                            super.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/io/FileWriter",
                                "write", "(Ljava/lang/String;)V", false);
                            super.visitVarInsn(Opcodes.ALOAD, 3);
                            super.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/io/FileWriter",
                                "close", "()V", false);
                            super.visitLabel(t1);
                            super.visitJumpInsn(Opcodes.GOTO, end);
                            super.visitLabel(th);
                            super.visitVarInsn(Opcodes.ASTORE, 3);
                            super.visitLabel(end);
                            super.visitVarInsn(Opcodes.ALOAD, 2);
                            super.visitMethodInsn(Opcodes.INVOKESTATIC, "com/s1243808733/util/Utils",
                                "toastError", "(Ljava/lang/String;)Landroid/widget/Toast;", false);
                            super.visitInsn(Opcodes.ARETURN);
                        }
                        public void visitMaxs(int a, int b) { super.visitMaxs(0, 0); }
                        public void visitEnd() {
                            super.visitEnd();
                        }
                    };
                }
                return super.visitMethod(acc, name, desc, sig, ex);
            }
        };
        cr.accept(cv, ClassReader.EXPAND_FRAMES);
        return cw.toByteArray();
    }
}
