.class public final Lcom/s1243808733/android/dx/dex/code/form/Form11n;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form11n.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form11n;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

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

    const/4 v0, 0x1

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 4

    .line 92
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 93
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->unsignedFitsInNibble(I)Z

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

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->literalBitsString(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    .line 56
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 57
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->literalBitsComment(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 6

    .line 69
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 71
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 72
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3d

    .line 73
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->unsignedFitsInNibble(I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_3d

    .line 77
    :cond_1f
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 78
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    .line 80
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-nez v0, :cond_2a

    return v2

    .line 84
    :cond_2a
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 86
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->signedFitsInNibble(I)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    :goto_3d
    return v2
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 6

    .line 102
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 103
    move-object v1, p2

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 104
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v1

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->makeByte(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    .line 106
    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/dex/code/form/Form11n;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;S)V

    return-void
.end method
