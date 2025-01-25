.class public final Lcom/s1243808733/android/dx/dex/code/form/Form3rc;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form3rc.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->regRangeString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    .line 56
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 5

    .line 71
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 75
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 76
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 79
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 83
    :cond_17
    instance-of v0, v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v0, :cond_24

    instance-of v0, v2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_24

    instance-of v0, v2, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-nez v0, :cond_24

    return v1

    .line 89
    :cond_24
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    .line 92
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eqz v0, :cond_4f

    .line 93
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->isRegListSequential(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 94
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 95
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->unsignedFitsInByte(I)Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_4f
    const/4 v1, 0x1

    :cond_50
    return v1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 7

    .line 101
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 102
    move-object v1, p2

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 103
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_13

    goto :goto_1b

    :cond_13
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 104
    :goto_1b
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v0

    .line 106
    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short v0, v1

    int-to-short v1, v3

    invoke-static {p1, p2, v0, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form3rc;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSS)V

    return-void
.end method
