.class public final Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form4rcc.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

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

    const/4 v0, 0x4

    return v0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    .line 55
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 6

    .line 70
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 74
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 75
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    .line 76
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v3

    .line 77
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_60

    .line 81
    :cond_1e
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 82
    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v0, :cond_27

    return v1

    .line 86
    :cond_27
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 87
    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-nez v0, :cond_30

    return v1

    .line 91
    :cond_30
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_3b

    return v2

    .line 97
    :cond_3b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInByte(I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 98
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 99
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 100
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->isRegListSequential(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v1, 0x1

    :cond_60
    :goto_60
    return v1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 8

    .line 106
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v2, v2

    .line 108
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    int-to-short v0, v0

    .line 110
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 113
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    int-to-short v1, v1

    .line 115
    :cond_22
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v3

    .line 118
    invoke-static {p2, v3}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    invoke-static {p1, p2, v2, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form4rcc;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSS)V

    return-void
.end method
