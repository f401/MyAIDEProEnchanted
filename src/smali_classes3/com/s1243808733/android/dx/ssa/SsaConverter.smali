.class public Lcom/s1243808733/android/dx/ssa/SsaConverter;
.super Ljava/lang/Object;
.source "SsaConverter.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToSsaMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 6

    .line 44
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 49
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    .line 51
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;I)V

    .line 52
    new-instance v1, Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->run()V

    .line 58
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeExitBlock()V

    .line 60
    return-object v0
.end method

.method private static edgeSplit(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->edgeSplitPredecessors(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 135
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->edgeSplitMoveExceptionsAndResults(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 136
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->edgeSplitSuccessors(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    return-void
.end method

.method private static edgeSplitMoveExceptionsAndResults(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-gez v3, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 200
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->isExitBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->isMoveException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 206
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    .line 207
    :goto_1
    if-gez v4, :cond_2

    .line 220
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 209
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 207
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    goto :goto_1
.end method

.method private static edgeSplitPredecessors(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")V"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 154
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->nodeNeedsUniquePredecessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 152
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static edgeSplitSuccessors(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")V"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v5

    .line 238
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-gez v4, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 242
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    .line 244
    :goto_1
    if-gez v3, :cond_1

    .line 238
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 248
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->needsNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 249
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 244
    :cond_2
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    goto :goto_1
.end method

.method private static needsNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Z
    .registers 5

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 279
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static nodeNeedsUniquePredecessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Z
    .registers 4

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 172
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 174
    if-le v1, v0, :cond_0

    if-gt v2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private static placePhiFunctions(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            "Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;",
            "I)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v4

    .line 306
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 307
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    sub-int v5, v0, p2

    .line 309
    new-instance v0, Lcom/s1243808733/android/dx/ssa/DomFront;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/DomFront;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 310
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/DomFront;->run()[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    move-result-object v6

    .line 313
    new-array v7, v5, [Ljava/util/BitSet;

    .line 316
    new-array v8, v5, [Ljava/util/BitSet;

    move v0, v3

    .line 318
    :goto_0
    if-lt v0, v5, :cond_0

    .line 327
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    :goto_1
    if-lt v1, v2, :cond_1

    move v2, v3

    .line 356
    :goto_2
    if-lt v2, v5, :cond_4

    return-void

    .line 319
    :cond_0
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v7, v0

    .line 320
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v8, v0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 330
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 334
    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 330
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 331
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    sub-int/2addr v10, p2

    if-ltz v10, :cond_2

    .line 334
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    sub-int/2addr v0, p2

    aget-object v0, v7, v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 357
    :cond_4
    aget-object v0, v7, v2

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 363
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 356
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 364
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 365
    aget-object v1, v6, v1

    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v9

    .line 368
    :cond_7
    :goto_4
    invoke-interface {v9}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    invoke-interface {v9}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v10

    .line 371
    aget-object v1, v8, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 372
    aget-object v1, v8, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 374
    add-int v11, v2, p2

    .line 375
    invoke-virtual {p1, v10}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    .line 378
    if-nez v12, :cond_8

    .line 379
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1, v11}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(I)V

    .line 384
    :goto_5
    aget-object v1, v7, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 385
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    .line 381
    :cond_8
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1, v12}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_5
.end method

.method public static testEdgeSplit(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 4

    .line 87
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 92
    return-object v0
.end method

.method public static testPhiPlacement(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 6

    .line 107
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 113
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    .line 115
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;I)V

    .line 116
    return-object v0
.end method

.method public static updateSsaMethod(Lcom/s1243808733/android/dx/ssa/SsaMethod;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            "I)V"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    move-result-object v0

    .line 72
    invoke-static {p0, v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;I)V

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;I)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->run()V

    return-void
.end method
