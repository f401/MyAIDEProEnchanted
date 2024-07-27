.class public Lcom/s1243808733/android/dx/ssa/SCCP;
.super Ljava/lang/Object;
.source "SCCP.java"


# static fields
.field private static final CONSTANT:I = 0x1

.field private static final TOP:I = 0x0

.field private static final VARYING:I = 0x2


# instance fields
.field private final branchWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final cfgPhiWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final cfgWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final executableBlocks:Ljava/util/BitSet;

.field private final latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private final latticeValues:[I

.field private final regCount:I

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final ssaWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final varyingWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 6

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 71
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    .line 72
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    .line 73
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/cst/Constant;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    move v1, v2

    .line 80
    :goto_0
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    if-lt v1, v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aput v2, v0, v1

    .line 82
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object v0, v3, v1

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 104
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addUsersToWorklist(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 114
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 116
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 120
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static latticeValName(I)Ljava/lang/String;
    .registers 2

    .line 227
    packed-switch p0, :pswitch_data_0

    .line 231
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    const-string v0, "TOP"

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v0, "CONSTANT"

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v0, "VARYING"

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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

    .line 91
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SCCP;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SCCP;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->run()V

    return-void
.end method

.method private replaceBranches()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, -0x1

    .line 655
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 677
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 655
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 658
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v6

    .line 659
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v7

    .line 660
    const/4 v1, 0x0

    move v3, v1

    move v2, v4

    :goto_1
    if-lt v3, v7, :cond_2

    .line 671
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    if-eq v2, v4, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 675
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v7

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    sget-object v8, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v3, v7, v0, v8}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 677
    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    goto :goto_0

    .line 661
    :cond_2
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 662
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 660
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private replaceConstants()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 602
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    if-lt v2, v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 602
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 614
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 624
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, v2

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 626
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 632
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 646
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 633
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->isPhiOrMove()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    .line 637
    check-cast v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 638
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 640
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v4

    .line 642
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 643
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, v2

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 646
    invoke-virtual {v1, v4, v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1
.end method

.method private run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 543
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SCCP;->replaceConstants()V

    .line 593
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SCCP;->replaceBranches()V

    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 553
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 576
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 578
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 580
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 584
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_8

    .line 585
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_2

    .line 557
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 559
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhiBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_0

    .line 563
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 564
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 566
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 570
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_7

    .line 571
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_1

    .line 573
    :cond_7
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    goto :goto_1

    .line 587
    :cond_8
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    goto :goto_2
.end method

.method private setLatticeValueTo(IILcom/s1243808733/android/dx/rop/cst/Constant;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-eq p2, v0, :cond_1

    .line 134
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, p1

    if-eq v2, p2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aput p2, v1, p1

    .line 146
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Lcom/s1243808733/android/dx/rop/cst/Constant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aput p2, v1, p1

    .line 143
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object p3, v1, p1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 146
    goto :goto_0
.end method

.method private simulateBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 204
    instance-of v2, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v2, :cond_1

    .line 205
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    goto :goto_0
.end method

.method private simulateBranch(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 241
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v5

    .line 242
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v6

    .line 248
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move-object v0, v1

    .line 249
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 250
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 252
    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 254
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, v7

    if-ne v2, v3, :cond_12

    .line 256
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v0, v7

    .line 259
    :goto_0
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 260
    invoke-virtual {v6, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 262
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v8, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v0, v0, v7

    if-ne v0, v3, :cond_0

    .line 264
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v1, v0, v7

    .line 269
    :cond_0
    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    move-object v0, v2

    .line 270
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v4

    move v1, v4

    .line 339
    :goto_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 341
    if-eqz v0, :cond_11

    .line 342
    if-eqz v1, :cond_f

    .line 344
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 348
    :goto_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 349
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :goto_4
    return-void

    .line 273
    :pswitch_0
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 274
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_1
    if-eqz v0, :cond_2

    move v1, v4

    :goto_5
    move v0, v3

    .line 296
    goto :goto_2

    :cond_2
    move v1, v3

    .line 276
    goto :goto_5

    .line 279
    :pswitch_2
    if-nez v0, :cond_3

    move v1, v4

    goto :goto_5

    :cond_3
    move v1, v3

    goto :goto_5

    .line 282
    :pswitch_3
    if-ltz v0, :cond_4

    move v1, v4

    goto :goto_5

    :cond_4
    move v1, v3

    goto :goto_5

    .line 285
    :pswitch_4
    if-gez v0, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v3

    goto :goto_5

    .line 288
    :pswitch_5
    if-lez v0, :cond_6

    move v1, v4

    goto :goto_5

    :cond_6
    move v1, v3

    goto :goto_5

    .line 291
    :pswitch_6
    if-gtz v0, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_5

    .line 300
    :cond_8
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 301
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 304
    :pswitch_7
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    move-object v0, v1

    .line 305
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 306
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_8
    if-eq v2, v0, :cond_9

    move v1, v4

    :goto_6
    move v0, v3

    .line 328
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 308
    goto :goto_6

    .line 311
    :pswitch_9
    if-ne v2, v0, :cond_a

    move v1, v4

    goto :goto_6

    :cond_a
    move v1, v3

    goto :goto_6

    .line 314
    :pswitch_a
    if-lt v2, v0, :cond_b

    move v1, v4

    goto :goto_6

    :cond_b
    move v1, v3

    goto :goto_6

    .line 317
    :pswitch_b
    if-ge v2, v0, :cond_c

    move v1, v4

    goto :goto_6

    :cond_c
    move v1, v3

    goto :goto_6

    .line 320
    :pswitch_c
    if-le v2, v0, :cond_d

    move v1, v4

    goto :goto_6

    :cond_d
    move v1, v3

    goto :goto_6

    .line 323
    :pswitch_d
    if-gt v2, v0, :cond_e

    move v1, v4

    goto :goto_6

    :cond_e
    move v1, v3

    goto :goto_6

    .line 346
    :cond_f
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    goto/16 :goto_3

    .line 352
    :cond_10
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 351
    add-int/lit8 v4, v4, 0x1

    :cond_11
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-lt v4, v0, :cond_10

    goto/16 :goto_4

    :cond_12
    move-object v2, v0

    goto/16 :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 301
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_7
    .end packed-switch

    .line 306
    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private simulateMath(Lcom/s1243808733/android/dx/ssa/SsaInsn;I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 11

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 366
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    .line 367
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    .line 368
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 369
    invoke-virtual {v7, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 370
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v3, v3, v0

    if-eq v3, v4, :cond_1

    move-object v0, v1

    .line 374
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-object v3, v0

    .line 379
    :goto_0
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    move-object v0, v2

    .line 380
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 381
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 391
    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_4

    .line 393
    :cond_0
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 461
    :goto_2
    return-object v1

    .line 376
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v3, v3, v0

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v7, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 384
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_3

    move-object v0, v1

    .line 385
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-object v2, v0

    goto :goto_1

    .line 387
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v2, v0

    goto :goto_1

    .line 396
    :cond_4
    packed-switch p2, :pswitch_data_0

    .line 461
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    goto :goto_2

    :pswitch_0
    move-object v0, v3

    .line 401
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v3

    move-object v0, v2

    .line 402
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 404
    packed-switch v6, :pswitch_data_1

    .line 454
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :pswitch_2
    add-int/2addr v0, v3

    move v2, v0

    .line 457
    :goto_3
    if-eqz v5, :cond_8

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    goto :goto_2

    .line 410
    :pswitch_3
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 411
    sub-int/2addr v0, v3

    :goto_4
    move v2, v0

    .line 415
    goto :goto_3

    .line 413
    :cond_5
    sub-int v0, v3, v0

    goto :goto_4

    .line 417
    :pswitch_4
    mul-int/2addr v0, v3

    move v2, v0

    .line 418
    goto :goto_3

    .line 420
    :pswitch_5
    if-nez v0, :cond_6

    move v0, v4

    move v2, v5

    :goto_5
    move v5, v0

    .line 426
    goto :goto_3

    .line 424
    :cond_6
    div-int v2, v3, v0

    move v0, v5

    goto :goto_5

    .line 428
    :pswitch_6
    and-int/2addr v0, v3

    move v2, v0

    .line 429
    goto :goto_3

    .line 431
    :pswitch_7
    or-int/2addr v0, v3

    move v2, v0

    .line 432
    goto :goto_3

    .line 434
    :pswitch_8
    xor-int/2addr v0, v3

    move v2, v0

    .line 435
    goto :goto_3

    .line 437
    :pswitch_9
    shl-int v0, v3, v0

    move v2, v0

    .line 438
    goto :goto_3

    .line 440
    :pswitch_a
    shr-int v0, v3, v0

    move v2, v0

    .line 441
    goto :goto_3

    .line 443
    :pswitch_b
    ushr-int v0, v3, v0

    move v2, v0

    .line 444
    goto :goto_3

    .line 446
    :pswitch_c
    if-nez v0, :cond_7

    move v0, v5

    :goto_6
    move v5, v4

    move v2, v0

    .line 452
    goto :goto_3

    .line 450
    :cond_7
    rem-int v0, v3, v0

    move v4, v5

    goto :goto_6

    .line 457
    :cond_8
    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v1

    goto :goto_2

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 404
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v0, v0, v7

    if-ne v0, v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 168
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 169
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v9

    move-object v3, v0

    move v5, v6

    move v2, v6

    .line 171
    :goto_1
    if-lt v5, v9, :cond_3

    move v0, v2

    .line 193
    :cond_2
    :goto_2
    invoke-direct {p0, v7, v0, v3}, Lcom/s1243808733/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/s1243808733/android/dx/rop/cst/Constant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0, v7, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->predBlockIndexForSourcesIndex(I)I

    move-result v6

    .line 173
    invoke-virtual {v8, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    .line 174
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v0, v0, v10

    .line 176
    iget-object v11, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v11, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v0, v3

    .line 171
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v3, v0

    goto :goto_1

    .line 180
    :cond_4
    if-ne v0, v4, :cond_2

    .line 181
    if-nez v3, :cond_5

    .line 182
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, v10

    move v2, v4

    .line 183
    goto :goto_3

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, v10

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/cst/Constant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 186
    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method private simulatePhiBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .line 217
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 218
    instance-of v2, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v2, :cond_0

    .line 219
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_0
.end method

.method private simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 470
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateBranch(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 476
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v5

    .line 477
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 479
    if-nez v0, :cond_5

    .line 481
    const/16 v0, 0x11

    if-eq v5, v0, :cond_2

    const/16 v0, 0x12

    if-ne v5, v0, :cond_3

    .line 482
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    move-object v4, v0

    .line 489
    :goto_0
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    .line 491
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 493
    sparse-switch v5, :sswitch_data_0

    move v1, v2

    move-object v4, v0

    .line 536
    :goto_1
    invoke-direct {p0, v6, v1, v4}, Lcom/s1243808733/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/s1243808733/android/dx/rop/cst/Constant;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    invoke-direct {p0, v6, v1}, Lcom/s1243808733/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    :cond_3
    return-void

    :sswitch_0
    move-object v0, v1

    .line 495
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 497
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    .line 498
    goto :goto_1

    .line 501
    :sswitch_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 502
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 503
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v1, v1, v0

    .line 504
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v2, v0

    :goto_2
    move-object v4, v0

    .line 506
    goto :goto_1

    .line 519
    :sswitch_2
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateMath(Lcom/s1243808733/android/dx/ssa/SsaInsn;I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_6

    move v1, v3

    move-object v4, v0

    .line 521
    goto :goto_1

    .line 526
    :sswitch_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v1, v1, v6

    if-ne v1, v3, :cond_6

    .line 527
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v0, v0, v6

    .line 528
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v1, v6

    move v1, v0

    move-object v4, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move-object v4, v0

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v4, v0

    goto :goto_1

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x38 -> :sswitch_3
    .end sparse-switch
.end method
