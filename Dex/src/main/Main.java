import com.google.common.base.Throwables;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.Sets;

import java.io.*;
import java.util.*;

import com.google.common.io.ByteStreams;
import com.google.common.io.Closeables;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.dexbacked.reference.DexBackedTypeReference;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.Field;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.formats.Instruction21c;
import org.jf.dexlib2.iface.reference.FieldReference;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.immutable.instruction.ImmutableInstruction31c;
import org.jf.dexlib2.immutable.instruction.ImmutableInstruction31i;
import org.jf.dexlib2.rewriter.*;
import com.google.common.base.Joiner;

import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

import com.google.common.collect.Collections2;
import zhao.arsceditor.AndrolibResources;
import zhao.arsceditor.ResDecoder.ARSCCallBack;
import zhao.arsceditor.ResDecoder.data.ResResource;

import javax.annotation.Nonnull;

public class Main {
    public static final String apkFile = "";
    public static final String WORK_DIR = "/home/fred";
    public static final String PACKAGE_CLASS = "Lcom/example/library/R";
    public static final Map<Pair<String, String>, Integer> RESID_MAP = new HashMap<>();
    public static void main(String[] args) throws Exception {
//        System.out.println("Reading Apk File");
//        System.out.println("Reading dex arsc files.");
//        unzip(apkFile, WORK_DIR, "classes.dex", "resources.arsc");
        FileInputStream arscStream = new FileInputStream(new File(WORK_DIR, "resources.arsc"));
        AndrolibResources arscReader = new AndrolibResources();
        arscReader.decodeARSC(arscReader.getResTable(arscStream), new ARSCCallBack() {
            @Override
            public void back(String config, String type, String key, String value, int id) {
                System.out.printf("Got config %s, type %s, key %s, value %s id %x\n", config, type, key, value, id);
                RESID_MAP.put(new Pair<>(type, key), id);

            }
        });


        DexBackedDexFile dexFile = DexFileFactory.loadDexFile(new File(WORK_DIR, "classes.dex"), Opcodes.getDefault());
        DexRewriter dexRewriter = new DexRewriter(new RewriterModule() {
            @Nonnull
            @Override
            public Rewriter<Instruction> getInstructionRewriter(@Nonnull Rewriters rewriters) {
                return new InstructionRewriter(rewriters) {
                    @Nonnull
                    @Override
                    public Instruction rewrite(@Nonnull Instruction instruction) {
                        if (instruction.getOpcode() == Opcode.SGET) {
                            Instruction21c instruction21c = (Instruction21c) instruction;
                            if (instruction21c.getReference() instanceof FieldReference) {
                                FieldReference fieldReference = (FieldReference) instruction21c.getReference();
                                String definingClass = fieldReference.getDefiningClass();
                                if (definingClass.startsWith(PACKAGE_CLASS)) {
                                    System.out.println("Find reference of " + definingClass);
                                    String type = definingClass.substring(
                                            definingClass.lastIndexOf('$') + 1,
                                            definingClass.length() - 1
                                    );
                                    String name = fieldReference.getName();
                                    Pair<String, String> key = new Pair<>(type, name);
//                                    System.out.println("Type " +type + " key " + name);
                                    if (RESID_MAP.get(key) != null) {
                                        System.out.println("Found reference of " + type + "." + name + ", id " + RESID_MAP.get(key));
                                        return new ImmutableInstruction31i(Opcode.CONST, instruction21c.getRegisterA(), RESID_MAP.get(key));
                                    }
//                                    System.out.println("Instuction type " + instruction21c.getClass());
                                }
                            }
                        }
                        return super.rewrite(instruction);
                    }
                };
            }
        });
        DexFile file = dexRewriter.getDexFileRewriter().rewrite(dexFile);
        DexFileFactory.writeDexFile("/tmp/new.dex", file);
	}

    public static void unzip(String apk, String target, String...needle) {
        ZipFile zipFile = null;
        try {
            zipFile = new ZipFile(apk);
            for (String file : needle) {
                ZipEntry entry;
                if ((entry = zipFile.getEntry(file)) != null) {
                    FileOutputStream fos = new FileOutputStream(new File(target, entry.getName()));
                    ByteStreams.copy(zipFile.getInputStream(entry), fos);
                    fos.close();
                } else {
                    System.out.println("Can not find " + file + " in " + apk);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (zipFile != null) {
                    zipFile.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

}