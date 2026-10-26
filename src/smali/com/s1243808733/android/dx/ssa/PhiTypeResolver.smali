.class public Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;
.super Ljava/lang/Object;
.source "PhiTypeResolver.java"


# instance fields
.field ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 59
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    return-void
.end method

.method private static equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->run()V

    return-void
.end method

.method private run()V
    .locals 6

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    .line 70
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v3

    if-nez v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 88
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->resolveResultType(Lcom/s1243808733/android/dx/ssa/PhiInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 99
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 100
    instance-of v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method resolveResultType(Lcom/s1243808733/android/dx/ssa/PhiInsn;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->updateSourcesToDefinitions(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 129
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 135
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v9

    const/4 v2, -0x1

    move-object v1, v6

    move v3, v5

    :goto_0
    if-ge v3, v9, :cond_0

    .line 137
    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v7

    if-eqz v7, :cond_b

    move v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    .line 195
    :cond_1
    :goto_2
    return v5

    .line 150
    :cond_2
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v3

    .line 151
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    move v7, v5

    move v1, v4

    :goto_3
    if-ge v7, v9, :cond_6

    if-ne v7, v2, :cond_4

    .line 168
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 158
    :cond_4
    invoke-virtual {v8, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 161
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    .line 168
    :goto_5
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    goto :goto_4

    :cond_5
    move v1, v5

    .line 166
    goto :goto_5

    .line 168
    :cond_6
    if-eqz v0, :cond_8

    if-eqz v1, :cond_a

    move-object v1, v3

    .line 188
    :goto_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    if-ne v3, v0, :cond_7

    .line 191
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    :cond_7
    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->changeResultType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    move v5, v4

    goto :goto_2

    .line 176
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    if-ge v5, v9, :cond_9

    .line 179
    invoke-virtual {v8, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 183
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t map types in phi insn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v1, v6

    goto :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_1
.end method
