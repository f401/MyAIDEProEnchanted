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
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method static bridge synthetic -$$Nest$smhasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
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
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    .line 67
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    return-void
.end method

.method private static hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->hasSideEffect()Z

    move-result p0

    return p0
.end method

.method private isCircularNoSideEffect(ILjava/util/BitSet;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 179
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v0

    .line 183
    :cond_a
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 184
    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v3

    :cond_26
    if-nez p2, :cond_2f

    .line 190
    new-instance p2, Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->regCount:I

    invoke-direct {p2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 194
    :cond_2f
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 196
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 197
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 200
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_56
    return v3

    :cond_57
    return v0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 54
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->run()V

    return-void
.end method

.method private pruneDeadInstructions()V
    .registers 14

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->computeReachability()Ljava/util/BitSet;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 132
    :cond_13
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_88

    .line 133
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    .line 137
    :goto_26
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_13

    .line 138
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 139
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 140
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v9

    if-eqz v9, :cond_47

    .line 144
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_47
    const/4 v10, 0x0

    :goto_48
    if-ge v10, v9, :cond_5c

    .line 149
    invoke-virtual {v8, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 150
    iget-object v12, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    .line 154
    :cond_5c
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    if-nez v7, :cond_63

    goto :goto_85

    .line 156
    :cond_63
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6f
    :goto_6f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 157
    instance-of v10, v9, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v10, :cond_6f

    .line 158
    check-cast v9, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 159
    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->removePhiRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_6f

    :cond_85
    :goto_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 165
    :cond_88
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    return-void
.end method

.method private run()V
    .registers 9

    .line 74
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->pruneDeadInstructions()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v2, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 82
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_79

    .line 83
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->clear(I)V

    .line 85
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_33

    .line 86
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 88
    :cond_33
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_14

    .line 95
    :cond_40
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    :goto_48
    if-ge v2, v4, :cond_75

    .line 100
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 101
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 105
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 104
    invoke-virtual {v6, v7}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v6

    .line 103
    invoke-static {v6}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 110
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 115
    :cond_75
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 119
    :cond_79
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    return-void
.end method
