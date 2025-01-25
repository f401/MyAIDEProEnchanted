.class public Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;
.super Ljava/lang/Object;
.source "PhiTypeResolver.java"


# instance fields
.field ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 59
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    return-void
.end method

.method private static equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 116
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->run()V

    return-void
.end method

.method private run()V
    .registers 7

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_24

    .line 70
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 73
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v3

    if-nez v3, :cond_21

    .line 74
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 79
    :cond_24
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_68

    .line 80
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->clear(I)V

    .line 86
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 88
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->resolveResultType(Lcom/s1243808733/android/dx/ssa/PhiInsn;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 94
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v2, :cond_24

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 99
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    if-eqz v5, :cond_65

    .line 100
    instance-of v4, v4, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v4, :cond_65

    .line 101
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_68
    return-void
.end method


# virtual methods
.method resolveResultType(Lcom/s1243808733/android/dx/ssa/PhiInsn;)Z
    .registers 14

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->updateSourcesToDefinitions(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 129
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v6, v2

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v1, :cond_23

    .line 137
    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 139
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v8

    if-eqz v8, :cond_20

    move v3, v5

    move-object v6, v7

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_23
    if-nez v6, :cond_26

    return v4

    .line 150
    :cond_26
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v5

    .line 151
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_31
    if-ge v8, v1, :cond_5b

    if-ne v8, v3, :cond_36

    goto :goto_58

    .line 158
    :cond_36
    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 161
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v11

    if-nez v11, :cond_41

    goto :goto_58

    :cond_41
    if-eqz v9, :cond_4f

    .line 166
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v9

    if-eqz v9, :cond_4f

    const/4 v9, 0x1

    goto :goto_50

    :cond_4f
    const/4 v9, 0x0

    .line 168
    :goto_50
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v6

    :goto_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_5b
    if-eqz v6, :cond_79

    if-eqz v9, :cond_60

    move-object v2, v5

    .line 188
    :cond_60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    if-ne v1, v6, :cond_75

    .line 191
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v0

    if-eqz v0, :cond_75

    return v4

    .line 195
    :cond_75
    invoke-virtual {p1, v6, v2}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->changeResultType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    return v7

    .line 176
    :cond_79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7e
    if-ge v4, v1, :cond_93

    .line 179
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 183
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t map types in phi insn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_a8

    :goto_a7
    throw p1

    :goto_a8
    goto :goto_a7
.end method
