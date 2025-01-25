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
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final cfgPhiWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final cfgWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final varyingWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 71
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    .line 72
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    .line 73
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

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 80
    :goto_47
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    if-ge v0, v1, :cond_57

    .line 81
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aput p1, v1, v0

    .line 82
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_57
    return-void
.end method

.method private addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_20

    .line 104
    :cond_1b
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    return-void
.end method

.method private addUsersToWorklist(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1f

    .line 115
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 119
    :cond_1f
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3b
    return-void
.end method

.method private static latticeValName(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 231
    const-string p0, "UNKNOWN"

    return-object p0

    .line 230
    :cond_b
    const-string p0, "VARYING"

    return-object p0

    .line 229
    :cond_e
    const-string p0, "CONSTANT"

    return-object p0

    .line 228
    :cond_11
    const-string p0, "TOP"

    return-object p0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 91
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SCCP;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SCCP;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->run()V

    return-void
.end method

.method private replaceBranches()V
    .registers 10

    .line 655
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 658
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 659
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_21
    if-ge v5, v3, :cond_37

    .line 661
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 662
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_34

    move v6, v7

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_37
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    if-ne v6, v4, :cond_3d

    goto :goto_6

    .line 674
    :cond_3d
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    .line 675
    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 676
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    const/4 v5, 0x0

    sget-object v7, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v3, v1, v5, v7}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 675
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 677
    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    goto :goto_6

    :cond_56
    return-void
.end method

.method private replaceConstants()V
    .registers 7

    const/4 v0, 0x0

    .line 602
    :goto_1
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->regCount:I

    if-ge v0, v1, :cond_79

    .line 603
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    goto :goto_76

    .line 606
    :cond_d
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    if-nez v1, :cond_16

    goto :goto_76

    .line 611
    :cond_16
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 614
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_76

    .line 623
    :cond_2b
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 624
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v3, v3, v0

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 625
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 626
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 632
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 633
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->isPhiOrMove()Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_46

    .line 637
    :cond_59
    move-object v3, v2

    check-cast v3, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 638
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 640
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v4

    .line 642
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 643
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v5, v5, v0

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 644
    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 646
    invoke-virtual {v3, v4, v2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_46

    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_79
    return-void
.end method

.method private run()V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 543
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 546
    :cond_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_31

    .line 592
    :cond_2a
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SCCP;->replaceConstants()V

    .line 593
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SCCP;->replaceBranches()V

    return-void

    .line 550
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 551
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

    goto :goto_31

    .line 556
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 557
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

    goto :goto_4d

    .line 562
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 563
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

    if-nez v1, :cond_92

    goto :goto_69

    .line 570
    :cond_92
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_9c

    .line 571
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_69

    .line 573
    :cond_9c
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    goto :goto_69

    .line 576
    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

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

    if-nez v1, :cond_c9

    goto :goto_a0

    .line 584
    :cond_c9
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_d3

    .line 585
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_a0

    .line 587
    :cond_d3
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    goto :goto_a0
.end method

.method private setLatticeValueTo(IILcom/s1243808733/android/dx/rop/cst/Constant;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_e

    .line 134
    iget-object p3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, p3, p1

    if-eq v2, p2, :cond_d

    .line 135
    aput p2, p3, p1

    return v1

    :cond_d
    return v0

    .line 140
    :cond_e
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_20

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v2, p1

    .line 141
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_20

    :cond_1f
    return v0

    .line 142
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aput p2, v0, p1

    .line 143
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object p3, p2, p1

    return v1
.end method

.method private simulateBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    .line 203
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 204
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_1e

    .line 205
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_8

    .line 207
    :cond_1e
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private simulateBranch(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 11

    .line 241
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 248
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_c7

    .line 252
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 254
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, v3

    if-ne v2, v4, :cond_2d

    .line 256
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v2, v3

    goto :goto_2e

    :cond_2d
    move-object v2, v6

    .line 259
    :goto_2e
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_4f

    .line 260
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 262
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v3, v3, v7

    if-ne v3, v4, :cond_4f

    .line 264
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v6, v3, v7

    .line 269
    :cond_4f
    const-string v3, "Unexpected op"

    const/4 v7, 0x6

    if-eqz v2, :cond_8a

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ne v1, v4, :cond_8a

    .line 270
    move-object v1, v2

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getBasicType()I

    move-result v1

    if-eq v1, v7, :cond_65

    goto/16 :goto_c7

    .line 273
    :cond_65
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    .line 274
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_11c

    .line 294
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_78  #0xc
    if-lez v1, :cond_c4

    goto :goto_89

    :pswitch_7b  #0xb
    if-gtz v1, :cond_c4

    goto :goto_89

    :pswitch_7e  #0xa
    if-ltz v1, :cond_c4

    goto :goto_89

    :pswitch_81  #0x9
    if-gez v1, :cond_c4

    goto :goto_89

    :pswitch_84  #0x8
    if-eqz v1, :cond_c4

    goto :goto_89

    :pswitch_87  #0x7
    if-nez v1, :cond_c4

    :goto_89
    goto :goto_c2

    :cond_8a
    if-eqz v2, :cond_c7

    if-eqz v6, :cond_c7

    .line 301
    move-object v1, v2

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getBasicType()I

    move-result v1

    if-eq v1, v7, :cond_98

    goto :goto_c7

    .line 304
    :cond_98
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    .line 305
    check-cast v6, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    .line 306
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_12c

    .line 326
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b1  #0xc
    if-le v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_b4  #0xb
    if-gt v1, v2, :cond_c4

    goto :goto_bf

    :pswitch_b7  #0xa
    if-lt v1, v2, :cond_c4

    goto :goto_c2

    :pswitch_ba  #0x9
    if-ge v1, v2, :cond_c4

    goto :goto_bf

    :pswitch_bd  #0x8
    if-eq v1, v2, :cond_c4

    :goto_bf
    goto :goto_c2

    :pswitch_c0  #0x7
    if-ne v1, v2, :cond_c4

    .line 294
    :goto_c2
    const/4 v0, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v0, 0x0

    :goto_c5
    const/4 v1, 0x1

    goto :goto_c9

    .line 326
    :cond_c7
    :goto_c7
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 339
    :goto_c9
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    if-eqz v1, :cond_f7

    if-eqz v0, :cond_da

    .line 344
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    goto :goto_e2

    .line 346
    :cond_da
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 348
    :goto_e2
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

    goto :goto_11b

    .line 351
    :cond_f7
    :goto_f7
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result p1

    if-ge v5, p1, :cond_11b

    .line 352
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p1

    .line 353
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    :cond_11b
    :goto_11b
    return-void

    :pswitch_data_11c
    .packed-switch 0x7
        :pswitch_87  #00000007
        :pswitch_84  #00000008
        :pswitch_81  #00000009
        :pswitch_7e  #0000000a
        :pswitch_7b  #0000000b
        :pswitch_78  #0000000c
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x7
        :pswitch_c0  #00000007
        :pswitch_bd  #00000008
        :pswitch_ba  #00000009
        :pswitch_b7  #0000000a
        :pswitch_b4  #0000000b
        :pswitch_b1  #0000000c
    .end packed-switch
.end method

.method private simulateMath(Lcom/s1243808733/android/dx/ssa/SsaInsn;I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 10

    .line 366
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 367
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    .line 368
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 369
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 373
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_23

    move-object v3, v5

    goto :goto_27

    .line 376
    :cond_23
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v3, v4, v3

    .line 379
    :goto_27
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    if-ne v4, v6, :cond_34

    .line 380
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 381
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_48

    .line 383
    :cond_34
    invoke-virtual {p1, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 384
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_44

    move-object v0, v5

    goto :goto_48

    .line 387
    :cond_44
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v4, v0

    :goto_48
    if-eqz v3, :cond_9f

    if-nez v0, :cond_4d

    goto :goto_9f

    :cond_4d
    const/4 v4, 0x6

    if-eq p2, v4, :cond_51

    return-object v5

    .line 401
    :cond_51
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p2

    .line 402
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    packed-switch v1, :pswitch_data_a0

    .line 454
    :pswitch_60  #0x13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected op"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_68  #0x19
    ushr-int p1, p2, v0

    goto :goto_98

    :pswitch_6b  #0x18
    shr-int p1, p2, v0

    goto :goto_98

    :pswitch_6e  #0x17
    shl-int p1, p2, v0

    goto :goto_98

    :pswitch_71  #0x16
    xor-int p1, p2, v0

    goto :goto_98

    :pswitch_74  #0x15
    or-int p1, p2, v0

    goto :goto_98

    :pswitch_77  #0x14
    and-int p1, p2, v0

    goto :goto_98

    :pswitch_7a  #0x12
    if-nez v0, :cond_7d

    goto :goto_82

    .line 450
    :cond_7d
    rem-int/2addr p2, v0

    move p1, p2

    goto :goto_98

    :pswitch_80  #0x11
    if-nez v0, :cond_85

    :goto_82
    const/4 p1, 0x0

    const/4 v2, 0x1

    goto :goto_98

    .line 424
    :cond_85
    div-int/2addr p2, v0

    goto :goto_89

    :pswitch_87  #0x10
    mul-int p2, p2, v0

    :goto_89
    move p1, p2

    goto :goto_98

    .line 410
    :pswitch_8b  #0xf
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result p1

    if-ne p1, v6, :cond_94

    sub-int/2addr v0, p2

    move p1, v0

    goto :goto_98

    :cond_94
    sub-int/2addr p2, v0

    goto :goto_97

    :pswitch_96  #0xe
    add-int/2addr p2, v0

    :goto_97
    move p1, p2

    :goto_98
    if-eqz v2, :cond_9b

    goto :goto_9f

    .line 457
    :cond_9b
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    :cond_9f
    :goto_9f
    return-object v5

    :pswitch_data_a0
    .packed-switch 0xe
        :pswitch_96  #0000000e
        :pswitch_8b  #0000000f
        :pswitch_87  #00000010
        :pswitch_80  #00000011
        :pswitch_7a  #00000012
        :pswitch_60  #00000013
        :pswitch_77  #00000014
        :pswitch_74  #00000015
        :pswitch_71  #00000016
        :pswitch_6e  #00000017
        :pswitch_6b  #00000018
        :pswitch_68  #00000019
    .end packed-switch
.end method

.method private simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 13

    .line 160
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    return-void

    .line 166
    :cond_10
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    :goto_1c
    if-ge v4, v3, :cond_53

    .line 172
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->predBlockIndexForSourcesIndex(I)I

    move-result v7

    .line 173
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 174
    iget-object v9, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v9, v9, v8

    .line 176
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v7, 0x1

    if-ne v9, v7, :cond_51

    if-nez v6, :cond_43

    .line 182
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v5, v5, v8

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_4e

    .line 184
    :cond_43
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_54

    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_51
    move v2, v9

    goto :goto_54

    .line 169
    :cond_53
    move v2, v5

    .line 193
    :goto_54
    invoke-direct {p0, v0, v2, v6}, Lcom/s1243808733/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/s1243808733/android/dx/rop/cst/Constant;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 194
    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    :cond_5d
    return-void
.end method

.method private simulatePhiBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    .line 217
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 218
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_1e

    .line 219
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulatePhi(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_8

    :cond_1e
    return-void
.end method

.method private simulateStmt(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 9

    .line 470
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 472
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 473
    :cond_19
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateBranch(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 476
    :cond_1c
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    .line 477
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4b

    const/16 v3, 0x11

    if-eq v1, v3, :cond_35

    const/16 v3, 0x12

    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    return-void

    .line 482
    :cond_35
    :goto_35
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    .line 483
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 489
    :cond_4b
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_7f

    const/4 v4, 0x5

    if-eq v1, v4, :cond_78

    const/16 v0, 0x38

    if-eq v1, v0, :cond_6b

    packed-switch v1, :pswitch_data_aa

    packed-switch v1, :pswitch_data_b8

    goto :goto_9e

    .line 519
    :pswitch_60  #0xe, 0xf, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SCCP;->simulateMath(Lcom/s1243808733/android/dx/ssa/SsaInsn;I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    if-eqz p1, :cond_9f

    goto :goto_a0

    .line 526
    :cond_6b
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget p1, p1, v5

    if-ne p1, v2, :cond_9e

    .line 528
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, v5

    move v2, p1

    move-object p1, v0

    goto :goto_a0

    .line 495
    :cond_78
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 497
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    goto :goto_a0

    .line 501
    :cond_7f
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-ne v0, v2, :cond_9e

    .line 502
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    .line 503
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v0, p1

    .line 504
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SCCP;->latticeConstants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object p1, v0, p1

    goto :goto_a0

    :cond_9e
    :goto_9e
    const/4 p1, 0x0

    :cond_9f
    const/4 v2, 0x2

    .line 536
    :goto_a0
    invoke-direct {p0, v5, v2, p1}, Lcom/s1243808733/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/s1243808733/android/dx/rop/cst/Constant;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 537
    invoke-direct {p0, v5, v2}, Lcom/s1243808733/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    :cond_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0xe
        :pswitch_60  #0000000e
        :pswitch_60  #0000000f
        :pswitch_60  #00000010
        :pswitch_60  #00000011
        :pswitch_60  #00000012
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x14
        :pswitch_60  #00000014
        :pswitch_60  #00000015
        :pswitch_60  #00000016
        :pswitch_60  #00000017
        :pswitch_60  #00000018
        :pswitch_60  #00000019
    .end packed-switch
.end method
