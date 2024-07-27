.class public Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;
.super Ljava/lang/Object;
.source "PhiTypeResolver.java"


# instance fields
.field ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 4

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
    .registers 3

    .line 116
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")V"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->run()V

    return-void
.end method

.method private run()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    move v0, v2

    .line 69
    :goto_0
    if-lt v0, v1, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_3

    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v3

    if-nez v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_3
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

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 97
    :goto_1
    if-ge v1, v4, :cond_0

    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 99
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 100
    if-eqz v5, :cond_4

    instance-of v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 97
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method resolveResultType(Lcom/s1243808733/android/dx/ssa/PhiInsn;)Z
    .registers 14

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->updateSourcesToDefinitions(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 129
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    move-object v0, v1

    .line 132
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 133
    const/4 v3, -0x1

    .line 135
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v9

    move-object v2, v0

    move v4, v5

    .line 136
    :goto_0
    if-lt v4, v9, :cond_1

    .line 145
    if-nez v2, :cond_2

    :cond_0
    move v0, v5

    .line 197
    :goto_1
    return v0

    .line 137
    :cond_1
    invoke-virtual {v8, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v7

    if-eqz v7, :cond_c

    move v3, v4

    .line 136
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v2, v0

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 151
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    move v7, v5

    move v4, v6

    .line 153
    :goto_3
    if-lt v7, v9, :cond_4

    .line 171
    if-eqz v2, :cond_9

    .line 186
    if-eqz v4, :cond_b

    move-object v1, v0

    .line 188
    :goto_4
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :cond_3
    invoke-virtual {p1, v2, v1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->changeResultType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    move v0, v6

    .line 197
    goto :goto_1

    .line 154
    :cond_4
    if-ne v7, v3, :cond_6

    .line 153
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 158
    :cond_6
    invoke-virtual {v8, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 161
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v11

    if-eqz v11, :cond_5

    .line 165
    if-eqz v4, :cond_7

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    move v4, v5

    .line 168
    :goto_6
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    goto :goto_5

    :cond_8
    move v4, v6

    .line 165
    goto :goto_6

    .line 176
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    :goto_7
    if-lt v5, v9, :cond_a

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Couldn\'t map types in phi insn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_a
    invoke-virtual {v8, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 186
    :cond_b
    check-cast v1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    goto :goto_4

    :cond_c
    move-object v0, v2

    goto/16 :goto_2
.end method
