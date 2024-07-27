.class public Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;
.super Ljava/lang/Object;
.source "DeadCodeRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;
    }
.end annotation


# instance fields
.field private final regCount:I

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final useList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 65
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->regCount:I

    .line 66
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->regCount:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v0

    return v0
.end method

.method private static hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z
    .registers 2

    .line 216
    if-nez p0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->hasSideEffect()Z

    move-result v0

    goto :goto_0
.end method

.method private isCircularNoSideEffect(ILjava/util/BitSet;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 205
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 185
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    if-nez p2, :cond_2

    .line 190
    new-instance p2, Ljava/util/BitSet;

    iget v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->regCount:I

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 194
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 196
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 201
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 205
    goto :goto_0

    .line 183
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 184
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 185
    goto :goto_0

    .line 196
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 197
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_6
    move v0, v2

    .line 201
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

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 54
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->run()V

    return-void
.end method

.method private pruneDeadInstructions()V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 126
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->computeReachability()Ljava/util/BitSet;

    move-result-object v6

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v7

    move v0, v2

    .line 132
    :goto_0
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    return-void

    .line 133
    :cond_0
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move v3, v2

    .line 137
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_1

    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 139
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v9

    .line 140
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v10

    .line 143
    if-eqz v10, :cond_2

    .line 144
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    move v4, v2

    .line 148
    :goto_2
    if-lt v4, v10, :cond_4

    .line 154
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 155
    if-nez v4, :cond_5

    .line 137
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v9, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 150
    iget-object v12, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 156
    :cond_5
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    aget-object v1, v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 159
    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 157
    instance-of v10, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v10, :cond_6

    .line 158
    check-cast v1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 159
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->removePhiRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_3
.end method

.method private run()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->pruneDeadInstructions()V

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v3, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;

    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->clear(I)V

    .line 85
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    check-cast v0, Ljava/util/BitSet;

    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v5

    move v0, v1

    .line 98
    :goto_1
    if-lt v0, v5, :cond_3

    .line 115
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 101
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 110
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    .line 98
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
