.class public Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;
.super Ljava/lang/Object;
.source "IdenticalBlockCombiner.java"


# instance fields
.field private final blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private final newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private final ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMutableCopy()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    return-void
.end method

.method private combineBlocks(ILcom/s1243808733/android/dx/util/IntList;)V
    .registers 12

    .line 136
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_36

    .line 139
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 140
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_33

    .line 145
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 146
    invoke-direct {p0, v7, v3, p1}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->replaceSucc(Lcom/s1243808733/android/dx/rop/code/BasicBlock;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_36
    return-void
.end method

.method private static compareInsns(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object p0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->contentEquals(Lcom/s1243808733/android/dx/rop/code/InsnList;)Z

    move-result p0

    return p0
.end method

.method private replaceSucc(Lcom/s1243808733/android/dx/rop/code/BasicBlock;II)V
    .registers 7

    .line 160
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 164
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    if-ne v1, p2, :cond_16

    goto :goto_17

    :cond_16
    move p3, v1

    .line 170
    :goto_17
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 172
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result p2

    .line 173
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v2

    invoke-direct {v1, p2, v2, v0, p3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 175
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result p1

    invoke-virtual {p2, p1, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    return-void
.end method


# virtual methods
.method public process()Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .registers 16

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 58
    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    const/4 v4, 0x1

    if-ge v3, v0, :cond_99

    .line 62
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_95

    .line 69
    :cond_27
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v6, :cond_95

    .line 74
    invoke-virtual {v5, v7}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 76
    iget-object v9, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v9, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v9

    .line 78
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_92

    .line 79
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    if-gt v10, v4, :cond_92

    .line 80
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v10

    const/16 v11, 0x37

    if-ne v10, v11, :cond_63

    goto :goto_92

    .line 85
    :cond_63
    new-instance v10, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v10}, Lcom/s1243808733/android/dx/util/IntList;-><init>()V

    add-int/lit8 v11, v7, 0x1

    :goto_6a
    if-ge v11, v6, :cond_8f

    .line 89
    invoke-virtual {v5, v11}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v12

    .line 90
    iget-object v13, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v13, v12}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v13

    .line 92
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v14

    if-ne v14, v4, :cond_8c

    .line 93
    invoke-static {v9, v13}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->compareInsns(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v13

    if-eqz v13, :cond_8c

    .line 95
    invoke-virtual {v10, v12}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 96
    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    :cond_8c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 100
    :cond_8f
    invoke-direct {p0, v8, v10}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->combineBlocks(ILcom/s1243808733/android/dx/util/IntList;)V

    :cond_92
    :goto_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_99
    sub-int/2addr v0, v4

    :goto_9a
    if-ltz v0, :cond_b5

    .line 105
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 106
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    :cond_b2
    add-int/lit8 v0, v0, -0x1

    goto :goto_9a

    .line 110
    :cond_b5
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->shrinkToFit()V

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 113
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;I)V

    return-object v0
.end method
