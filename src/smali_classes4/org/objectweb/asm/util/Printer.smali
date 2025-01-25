.class public abstract Lorg/objectweb/asm/util/Printer;
.super Ljava/lang/Object;


# static fields
.field public static final HANDLE_TAG:[Ljava/lang/String;

.field public static final OPCODES:[Ljava/lang/String;

.field public static final TYPES:[Ljava/lang/String;


# instance fields
.field protected final api:I

.field protected final buf:Ljava/lang/StringBuffer;

.field public final text:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x2c

    const/4 v1, 0x0

    invoke-static {}, Lorg/objectweb/asm/util/Printer;->_clinit_()V

    const/16 v0, 0xc8

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    move v0, v1

    move v2, v1

    :goto_e
    const-string v3, "NOP,ACONST_NULL,ICONST_M1,ICONST_0,ICONST_1,ICONST_2,ICONST_3,ICONST_4,ICONST_5,LCONST_0,LCONST_1,FCONST_0,FCONST_1,FCONST_2,DCONST_0,DCONST_1,BIPUSH,SIPUSH,LDC,,,ILOAD,LLOAD,FLOAD,DLOAD,ALOAD,,,,,,,,,,,,,,,,,,,,,IALOAD,LALOAD,FALOAD,DALOAD,AALOAD,BALOAD,CALOAD,SALOAD,ISTORE,LSTORE,FSTORE,DSTORE,ASTORE,,,,,,,,,,,,,,,,,,,,,IASTORE,LASTORE,FASTORE,DASTORE,AASTORE,BASTORE,CASTORE,SASTORE,POP,POP2,DUP,DUP_X1,DUP_X2,DUP2,DUP2_X1,DUP2_X2,SWAP,IADD,LADD,FADD,DADD,ISUB,LSUB,FSUB,DSUB,IMUL,LMUL,FMUL,DMUL,IDIV,LDIV,FDIV,DDIV,IREM,LREM,FREM,DREM,INEG,LNEG,FNEG,DNEG,ISHL,LSHL,ISHR,LSHR,IUSHR,LUSHR,IAND,LAND,IOR,LOR,IXOR,LXOR,IINC,I2L,I2F,I2D,L2I,L2F,L2D,F2I,F2L,F2D,D2I,D2L,D2F,I2B,I2C,I2S,LCMP,FCMPL,FCMPG,DCMPL,DCMPG,IFEQ,IFNE,IFLT,IFGE,IFGT,IFLE,IF_ICMPEQ,IF_ICMPNE,IF_ICMPLT,IF_ICMPGE,IF_ICMPGT,IF_ICMPLE,IF_ACMPEQ,IF_ACMPNE,GOTO,JSR,RET,TABLESWITCH,LOOKUPSWITCH,IRETURN,LRETURN,FRETURN,DRETURN,ARETURN,RETURN,GETSTATIC,PUTSTATIC,GETFIELD,PUTFIELD,INVOKEVIRTUAL,INVOKESPECIAL,INVOKESTATIC,INVOKEINTERFACE,INVOKEDYNAMIC,NEW,NEWARRAY,ANEWARRAY,ARRAYLENGTH,ATHROW,CHECKCAST,INSTANCEOF,MONITORENTER,MONITOREXIT,,MULTIANEWARRAY,IFNULL,IFNONNULL,"

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_2b

    sget-object v4, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    if-ne v5, v3, :cond_24

    const/4 v0, 0x0

    :goto_1d
    aput-object v0, v4, v2

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    const-string v5, "NOP,ACONST_NULL,ICONST_M1,ICONST_0,ICONST_1,ICONST_2,ICONST_3,ICONST_4,ICONST_5,LCONST_0,LCONST_1,FCONST_0,FCONST_1,FCONST_2,DCONST_0,DCONST_1,BIPUSH,SIPUSH,LDC,,,ILOAD,LLOAD,FLOAD,DLOAD,ALOAD,,,,,,,,,,,,,,,,,,,,,IALOAD,LALOAD,FALOAD,DALOAD,AALOAD,BALOAD,CALOAD,SALOAD,ISTORE,LSTORE,FSTORE,DSTORE,ASTORE,,,,,,,,,,,,,,,,,,,,,IASTORE,LASTORE,FASTORE,DASTORE,AASTORE,BASTORE,CASTORE,SASTORE,POP,POP2,DUP,DUP_X1,DUP_X2,DUP2,DUP2_X1,DUP2_X2,SWAP,IADD,LADD,FADD,DADD,ISUB,LSUB,FSUB,DSUB,IMUL,LMUL,FMUL,DMUL,IDIV,LDIV,FDIV,DDIV,IREM,LREM,FREM,DREM,INEG,LNEG,FNEG,DNEG,ISHL,LSHL,ISHR,LSHR,IUSHR,LUSHR,IAND,LAND,IOR,LOR,IXOR,LXOR,IINC,I2L,I2F,I2D,L2I,L2F,L2D,F2I,F2L,F2D,D2I,D2L,D2F,I2B,I2C,I2S,LCMP,FCMPL,FCMPG,DCMPL,DCMPG,IFEQ,IFNE,IFLT,IFGE,IFGT,IFLE,IF_ICMPEQ,IF_ICMPNE,IF_ICMPLT,IF_ICMPGE,IF_ICMPGT,IF_ICMPLE,IF_ACMPEQ,IF_ACMPNE,GOTO,JSR,RET,TABLESWITCH,LOOKUPSWITCH,IRETURN,LRETURN,FRETURN,DRETURN,ARETURN,RETURN,GETSTATIC,PUTSTATIC,GETFIELD,PUTFIELD,INVOKEVIRTUAL,INVOKESPECIAL,INVOKESTATIC,INVOKEINTERFACE,INVOKEDYNAMIC,NEW,NEWARRAY,ANEWARRAY,ARRAYLENGTH,ATHROW,CHECKCAST,INSTANCEOF,MONITORENTER,MONITOREXIT,,MULTIANEWARRAY,IFNULL,IFNONNULL,"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_2b
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/objectweb/asm/util/Printer;->TYPES:[Ljava/lang/String;

    const/4 v2, 0x4

    move v0, v1

    :goto_33
    const-string v3, "T_BOOLEAN,T_CHAR,T_FLOAT,T_DOUBLE,T_BYTE,T_SHORT,T_INT,T_LONG,"

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_4a

    sget-object v4, Lorg/objectweb/asm/util/Printer;->TYPES:[Ljava/lang/String;

    const-string v5, "T_BOOLEAN,T_CHAR,T_FLOAT,T_DOUBLE,T_BYTE,T_SHORT,T_INT,T_LONG,"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4a
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/objectweb/asm/util/Printer;->HANDLE_TAG:[Ljava/lang/String;

    const/4 v0, 0x1

    :goto_51
    const-string v2, "H_GETFIELD,H_GETSTATIC,H_PUTFIELD,H_PUTSTATIC,H_INVOKEVIRTUAL,H_INVOKESTATIC,H_INVOKESPECIAL,H_NEWINVOKESPECIAL,H_INVOKEINTERFACE,"

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_68

    sget-object v3, Lorg/objectweb/asm/util/Printer;->HANDLE_TAG:[Ljava/lang/String;

    const-string v4, "H_GETFIELD,H_GETSTATIC,H_PUTFIELD,H_PUTSTATIC,H_INVOKEVIRTUAL,H_INVOKESTATIC,H_INVOKESPECIAL,H_NEWINVOKESPECIAL,H_INVOKEINTERFACE,"

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_68
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/util/Printer;->api:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/Printer;->buf:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/Printer;->text:Ljava/util/List;

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method public static appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x10

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    const-string v1, "\\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    const/16 v2, 0xd

    if-ne v1, v2, :cond_28

    const-string v1, "\\r"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_28
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_32

    const-string v1, "\\\\"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_32
    if-ne v1, v3, :cond_3a

    const-string v1, "\\\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_3a
    const/16 v2, 0x20

    if-lt v1, v2, :cond_42

    const/16 v2, 0x7f

    if-le v1, v2, :cond_6a

    :cond_42
    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v1, v4, :cond_56

    const-string v2, "000"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    :goto_4e
    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_56
    const/16 v2, 0x100

    if-ge v1, v2, :cond_60

    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4e

    :cond_60
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_4e

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4e

    :cond_6a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_6e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method static printList(Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_19

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/Printer;->printList(Ljava/io/PrintWriter;Ljava/util/List;)V

    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_15

    :cond_21
    return-void
.end method


# virtual methods
.method public getText()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/util/Printer;->text:Ljava/util/List;

    return-object v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/Printer;->text:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/Printer;->printList(Ljava/io/PrintWriter;Ljava/util/List;)V

    return-void
.end method

.method public abstract visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract visit(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitAnnotationDefault()Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitAnnotationEnd()V
.end method

.method public abstract visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitClassAttribute(Lorg/objectweb/asm/Attribute;)V
.end method

.method public abstract visitClassEnd()V
.end method

.method public visitClassTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitCode()V
.end method

.method public abstract visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitFieldAttribute(Lorg/objectweb/asm/Attribute;)V
.end method

.method public abstract visitFieldEnd()V
.end method

.method public abstract visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public visitFieldTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
.end method

.method public abstract visitIincInsn(II)V
.end method

.method public abstract visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract visitInsn(I)V
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitIntInsn(II)V
.end method

.method public varargs abstract visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
.end method

.method public abstract visitJumpInsn(ILorg/objectweb/asm/Label;)V
.end method

.method public abstract visitLabel(Lorg/objectweb/asm/Label;)V
.end method

.method public abstract visitLdcInsn(Ljava/lang/Object;)V
.end method

.method public abstract visitLineNumber(ILorg/objectweb/asm/Label;)V
.end method

.method public abstract visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
.end method

.method public abstract visitMaxs(II)V
.end method

.method public abstract visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitMethodAttribute(Lorg/objectweb/asm/Attribute;)V
.end method

.method public abstract visitMethodEnd()V
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/util/Printer;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_16

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_14

    const/4 v5, 0x1

    :goto_b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_14
    const/4 v5, 0x0

    goto :goto_b

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/util/Printer;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1b

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_b
    if-eq p5, v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESPECIAL/STATIC on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    :cond_17
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitMethodTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitMultiANewArrayInsn(Ljava/lang/String;I)V
.end method

.method public abstract visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
.end method

.method public abstract visitSource(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be overriden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
.end method

.method public abstract visitTypeInsn(ILjava/lang/String;)V
.end method

.method public abstract visitVarInsn(II)V
.end method
