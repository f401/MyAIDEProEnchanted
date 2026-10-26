.class public final Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form4rcc.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

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

    const/4 v0, 0x4

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->regRangeString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    instance-of v2, p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 75
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    .line 76
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v3

    .line 77
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 82
    instance-of v2, v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 87
    instance-of v2, v2, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInByte(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->isRegListSequential(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 5

    const/4 v1, 0x0

    .line 106
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 107
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v2, v2

    .line 108
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    int-to-short v3, v0

    .line 110
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    int-to-short v0, v0

    .line 115
    :goto_0
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v1

    .line 118
    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    invoke-static {p1, v1, v2, v0, v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSS)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
