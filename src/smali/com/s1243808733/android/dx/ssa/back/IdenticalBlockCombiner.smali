.class public Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;
.super Ljava/lang/Object;
.source "IdenticalBlockCombiner.java"


# instance fields
.field private final blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private final newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private final ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    .line 45
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMutableCopy()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    return-void
.end method

.method private combineBlocks(ILcom/s1243808733/android/dx/util/IntList;)V
    .locals 9

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 139
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 141
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v5

    .line 142
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v6

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    .line 145
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 146
    invoke-direct {p0, v7, v4, p1}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->replaceSucc(Lcom/s1243808733/android/dx/rop/code/BasicBlock;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static compareInsns(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->contentEquals(Lcom/s1243808733/android/dx/rop/code/InsnList;)Z

    move-result v0

    return v0
.end method

.method private replaceSucc(Lcom/s1243808733/android/dx/rop/code/BasicBlock;II)V
    .locals 4

    .line 160
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    .line 163
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    invoke-virtual {v1, v0, p3}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 164
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 170
    :goto_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 172
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    .line 173
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, p3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 175
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    return-void

    :cond_0
    move p3, v0

    .line 164
    goto :goto_0
.end method


# virtual methods
.method public process()Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 15

    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v4

    .line 58
    new-instance v5, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_6

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v6

    .line 72
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    .line 74
    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v9

    .line 78
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-gt v0, v14, :cond_2

    .line 80
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v10, 0x37

    if-ne v0, v10, :cond_3

    .line 100
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 85
    :cond_3
    new-instance v10, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v10}, Lcom/s1243808733/android/dx/util/IntList;-><init>()V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-ge v0, v7, :cond_5

    .line 89
    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 90
    iget-object v12, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v12, v11}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v12

    .line 92
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v13

    if-ne v13, v14, :cond_4

    .line 93
    invoke-static {v9, v12}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->compareInsns(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 95
    invoke-virtual {v10, v11}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 96
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 100
    :cond_5
    invoke-direct {p0, v8, v10}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->combineBlocks(ILcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v4, -0x1

    :goto_4
    if-ltz v0, :cond_8

    .line 105
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 110
    :cond_8
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
