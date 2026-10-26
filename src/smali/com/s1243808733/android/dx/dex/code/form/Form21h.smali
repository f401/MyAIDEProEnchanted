.class public final Lcom/s1243808733/android/dx/dex/code/form/Form21h;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form21h.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form21h;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 4

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->unsignedFitsInByte(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 4

    .line 47
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 48
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->literalBitsString(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 57
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    .line 60
    :goto_0
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->literalBitsComment(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/16 v1, 0x40

    goto :goto_0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 74
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->unsignedFitsInByte(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 83
    instance-of v4, v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v4, :cond_0

    .line 87
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 90
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    const v3, 0xffff

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v4

    const-wide v6, 0xffffffffffffL

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 5

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    move-object v0, p2

    .line 113
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 117
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    .line 120
    :goto_0
    int-to-short v0, v0

    .line 123
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form21h;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    const/16 v0, 0x30

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0
.end method
