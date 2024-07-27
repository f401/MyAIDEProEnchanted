.class public final Lcom/s1243808733/android/dx/dex/code/form/Form45cc;
.super Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.source "Form45cc.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->THE_ONE:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method

.method private static explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 8

    const/4 v1, 0x0

    .line 197
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v2

    .line 198
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 200
    if-ne v2, v4, :cond_0

    .line 220
    :goto_0
    return-object p0

    .line 204
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v2, v1

    move v3, v1

    .line 207
    :goto_1
    if-lt v2, v4, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    move-object p0, v0

    .line 220
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v3, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 210
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 211
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 213
    add-int/lit8 v1, v3, 0x2

    .line 207
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    .line 215
    :cond_2
    add-int/lit8 v1, v3, 0x1

    goto :goto_2
.end method

.method private static wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I
    .registers 8

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 163
    if-le v4, v6, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v3

    move v1, v3

    .line 170
    :goto_1
    if-lt v2, v4, :cond_2

    .line 184
    if-gt v1, v6, :cond_0

    move v0, v1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v1, v5

    .line 179
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public codeSize()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 70
    const/4 v0, 0x4

    return v0
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 108
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 110
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 112
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 124
    return-object v3

    .line 113
    :cond_0
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 54
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

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    instance-of v2, p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 81
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    .line 86
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v3

    .line 87
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 92
    instance-of v2, v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 97
    instance-of v2, v2, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->wordCount(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)I

    move-result v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 16
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

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 131
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v6, v2

    .line 132
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    int-to-short v7, v0

    .line 134
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/form/Form45cc;->explicitize(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 135
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v9

    .line 136
    if-lez v9, :cond_0

    invoke-virtual {v8, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v5, v0

    .line 137
    :goto_0
    if-le v9, v3, :cond_1

    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v4, v0

    .line 138
    :goto_1
    if-le v9, v10, :cond_2

    invoke-virtual {v8, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v3, v0

    .line 139
    :goto_2
    if-le v9, v11, :cond_3

    invoke-virtual {v8, v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    move v2, v0

    .line 140
    :goto_3
    if-le v9, v12, :cond_4

    invoke-virtual {v8, v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 143
    :goto_4
    invoke-static {v0, v9}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->makeByte(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S

    move-result v0

    invoke-static {v5, v4, v3, v2}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeUnit(IIII)S

    move-result v1

    invoke-static {p1, v0, v6, v1, v7}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSS)V

    return-void

    :cond_0
    move v5, v1

    .line 136
    goto :goto_0

    :cond_1
    move v4, v1

    .line 137
    goto :goto_1

    :cond_2
    move v3, v1

    .line 138
    goto :goto_2

    :cond_3
    move v2, v1

    .line 139
    goto :goto_3

    :cond_4
    move v0, v1

    .line 140
    goto :goto_4
.end method
