.class public final Lcom/s1243808733/android/dx/dex/code/form/Form45cc;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form45cc.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method

.method private static explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 8

    .line 197
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-object p0

    .line 204
    :cond_b
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, v1, :cond_3b

    .line 208
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 209
    invoke-virtual {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 210
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    .line 212
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 211
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_38

    :cond_36
    add-int/lit8 v3, v3, 0x1

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 219
    :cond_3b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    return-object v2
.end method

.method private static wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I
    .registers 8

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_9

    return v1

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v0, :cond_2b

    .line 171
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v4, v6

    .line 179
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->unsignedFitsInNibble(I)Z

    move-result v5

    if-nez v5, :cond_28

    return v1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2b
    if-gt v4, v2, :cond_2e

    move v1, v4

    :cond_2e
    return v1
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 7

    .line 108
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 110
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_29

    .line 113
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 121
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 120
    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->unsignedFitsInNibble(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return-object v1
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    .line 53
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->regListString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 6

    .line 76
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 80
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    return v1

    .line 85
    :cond_10
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    .line 86
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v3

    .line 87
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_43

    .line 91
    :cond_26
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 92
    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v0, :cond_2f

    return v1

    .line 96
    :cond_2f
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 97
    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-nez v0, :cond_38

    return v1

    .line 101
    :cond_38
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result p1

    if-ltz p1, :cond_43

    const/4 v1, 0x1

    :cond_43
    :goto_43
    return v1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 13

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v2, v2

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    int-to-short v0, v0

    .line 134
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v5

    if-lez v5, :cond_26

    .line 136
    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    :goto_27
    if-le v5, v3, :cond_32

    .line 137
    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    const/4 v7, 0x2

    if-le v5, v7, :cond_3f

    .line 138
    invoke-virtual {v4, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    goto :goto_40

    :cond_3f
    const/4 v7, 0x0

    :goto_40
    const/4 v8, 0x3

    if-le v5, v8, :cond_4c

    .line 139
    invoke-virtual {v4, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    :goto_4d
    const/4 v9, 0x4

    if-le v5, v9, :cond_58

    .line 140
    invoke-virtual {v4, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 144
    :cond_58
    invoke-static {v1, v5}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->makeByte(II)I

    move-result v1

    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    .line 146
    invoke-static {v6, v3, v7, v8}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->codeUnit(IIII)S

    move-result v1

    .line 143
    invoke-static {p1, p2, v2, v1, v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSS)V

    return-void
.end method
