.class public final Lcom/s1243808733/android/dx/dex/code/form/Form35c;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form35c.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form35c;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method

.method private static explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 8

    const/4 v1, 0x0

    .line 187
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 190
    if-ne v2, v4, :cond_0

    .line 210
    :goto_0
    return-object p0

    .line 194
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v2, v1

    move v3, v1

    .line 197
    :goto_1
    if-lt v2, v4, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    move-object p0, v0

    .line 210
    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v3, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 200
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 201
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 203
    add-int/lit8 v1, v3, 0x2

    .line 197
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    .line 205
    :cond_2
    add-int/lit8 v1, v3, 0x1

    goto :goto_2
.end method

.method private static wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I
    .registers 8

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 151
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 153
    if-le v4, v6, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v3

    move v1, v3

    .line 160
    :goto_1
    if-lt v2, v4, :cond_2

    .line 174
    if-gt v1, v6, :cond_0

    move v0, v1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v1, v5

    .line 169
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public codeSize()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 104
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 106
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 118
    return-object v3

    .line 107
    :cond_0
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->regListString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 77
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    .line 82
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 84
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 89
    instance-of v2, v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v2, :cond_2

    instance-of v1, v1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v1, :cond_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v6

    .line 125
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form35c;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 126
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    .line 127
    if-lez v8, :cond_0

    invoke-virtual {v7, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v5, v0

    .line 128
    :goto_0
    if-le v8, v2, :cond_1

    invoke-virtual {v7, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v4, v0

    .line 129
    :goto_1
    if-le v8, v3, :cond_2

    invoke-virtual {v7, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v3, v0

    .line 130
    :goto_2
    if-le v8, v9, :cond_3

    invoke-virtual {v7, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v2, v0

    .line 131
    :goto_3
    if-le v8, v10, :cond_4

    invoke-virtual {v7, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 133
    :goto_4
    invoke-static {v0, v8}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->makeByte(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v0

    int-to-short v1, v6

    invoke-static {v5, v4, v3, v2}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeUnit(IIII)S

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSS)V

    return-void

    :cond_0
    move v5, v1

    .line 127
    goto :goto_0

    :cond_1
    move v4, v1

    .line 128
    goto :goto_1

    :cond_2
    move v3, v1

    .line 129
    goto :goto_2

    :cond_3
    move v2, v1

    .line 130
    goto :goto_3

    :cond_4
    move v0, v1

    .line 131
    goto :goto_4
.end method
