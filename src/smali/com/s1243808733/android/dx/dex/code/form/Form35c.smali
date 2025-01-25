.class public final Lcom/s1243808733/android/dx/dex/code/form/Form35c;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form35c.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form35c;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method

.method private static explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 8

    .line 187
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-object p0

    .line 194
    :cond_b
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, v1, :cond_3b

    .line 198
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 199
    invoke-virtual {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 200
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    .line 202
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 201
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_38

    :cond_36
    add-int/lit8 v3, v3, 0x1

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 209
    :cond_3b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    return-object v2
.end method

.method private static wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I
    .registers 8

    .line 151
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

    .line 161
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v4, v6

    .line 169
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

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

    const/4 v0, 0x3

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 7

    .line 102
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 104
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_29

    .line 107
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 115
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 114
    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return-object v1
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 4

    .line 54
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->regListString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

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

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 5

    .line 77
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 81
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 82
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 84
    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 88
    :cond_13
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 89
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v2, :cond_24

    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v2, :cond_24

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-nez v0, :cond_24

    return v1

    .line 95
    :cond_24
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result p1

    if-ltz p1, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 12

    .line 124
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 125
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1f

    .line 127
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x1

    if-le v2, v5, :cond_2c

    .line 128
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    const/4 v6, 0x2

    if-le v2, v6, :cond_39

    .line 129
    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    const/4 v7, 0x3

    if-le v2, v7, :cond_46

    .line 130
    invoke-virtual {v1, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    :goto_47
    const/4 v8, 0x4

    if-le v2, v8, :cond_52

    .line 131
    invoke-virtual {v1, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 135
    :cond_52
    invoke-static {v3, v2}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->makeByte(II)I

    move-result v1

    .line 134
    invoke-static {p2, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short v0, v0

    .line 137
    invoke-static {v4, v5, v6, v7}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->codeUnit(IIII)S

    move-result v1

    .line 133
    invoke-static {p1, p2, v0, v1}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSS)V

    return-void
.end method
