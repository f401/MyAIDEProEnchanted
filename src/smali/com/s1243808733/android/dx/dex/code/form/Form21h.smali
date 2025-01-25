.class public final Lcom/s1243808733/android/dx/dex/code/form/Form21h;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form21h.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form21h;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 4

    .line 102
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->unsignedFitsInByte(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 5

    .line 47
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 48
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->literalBitsString(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4

    .line 56
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    .line 57
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    const/16 p2, 0x20

    goto :goto_1d

    :cond_1b
    const/16 p2, 0x40

    .line 60
    :goto_1d
    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->literalBitsComment(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 8

    .line 73
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 74
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    .line 75
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_53

    .line 76
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->unsignedFitsInByte(I)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_53

    .line 80
    :cond_1f
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    .line 83
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-nez v1, :cond_2a

    return v2

    .line 87
    :cond_2a
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 90
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-ne v0, v3, :cond_42

    .line 91
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    if-nez p1, :cond_41

    const/4 v2, 0x1

    :cond_41
    return v2

    .line 94
    :cond_42
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v0

    const-wide v4, 0xffffffffffffL

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_53

    const/4 v2, 0x1

    :cond_53
    :goto_53
    return v2
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 8

    .line 112
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 113
    move-object v1, p2

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 118
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_28

    .line 120
    :cond_20
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v3

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    :goto_28
    int-to-short v1, v1

    .line 123
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
