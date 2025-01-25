.class public final Lcom/s1243808733/android/dx/ssa/SsaMethod;
.super Ljava/lang/Object;
.source "SsaMethod.java"


# instance fields
.field private backMode:Z

.field private blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private borrowedSpareRegisters:I

.field private definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

.field private entryBlockIndex:I

.field private exitBlockIndex:I

.field private final isStatic:Z

.field private maxLabel:I

.field private final paramWidth:I

.field private registerCount:I

.field private spareRegisterBase:I

.field private unmodifiableUseList:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private useList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdefinitionList(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseList(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    return-object p0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->paramWidth:I

    .line 120
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isStatic:Z

    .line 121
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    .line 122
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result p2

    iput p2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 124
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    return-void
.end method

.method static bitSetFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Ljava/util/BitSet;
    .registers 6

    .line 137
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 139
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    .line 140
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v0
.end method

.method private buildUseList()V
    .registers 5

    .line 421
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    if-nez v0, :cond_3e

    .line 425
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 427
    :goto_c
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    if-ge v1, v2, :cond_1c

    .line 428
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 431
    :cond_1c
    new-instance v1, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 461
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    .line 463
    :goto_2a
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    if-ge v0, v1, :cond_3d

    .line 464
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3d
    return-void

    .line 422
    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method private convertRopToSsaBlocks(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 6

    .line 167
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    .line 173
    invoke-static {p1, v1, p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->newFromRop(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 178
    :cond_20
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    .line 185
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    return-void
.end method

.method private static getGoto(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 7

    .line 225
    new-instance v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    const/4 v4, 0x0

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v0, v1, p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    return-object v0
.end method

.method public static indexListFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;
    .registers 6

    .line 157
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 159
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    .line 160
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v0
.end method

.method public static newFromRopMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 4

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)V

    .line 103
    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->convertRopToSsaBlocks(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    return-object v0
.end method

.method private removeFromUseList(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 532
    :cond_3
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_27

    .line 534
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 535
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "use not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    return-void
.end method


# virtual methods
.method public blockIndexToRopLabel(I)I
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result p1

    return p1
.end method

.method public borrowSpareRegister(I)I
    .registers 4

    .line 319
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    add-int/2addr v0, v1

    .line 321
    add-int/2addr v1, p1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    .line 322
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    return v0
.end method

.method public computeReachability()Ljava/util/BitSet;
    .registers 5

    .line 347
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 349
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 351
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 354
    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    .line 355
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 356
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 357
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_1b

    :cond_39
    return-object v2
.end method

.method public deleteInsns(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 806
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 807
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    .line 808
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    .line 810
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1e
    if-ltz v3, :cond_32

    .line 811
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-ne v0, v5, :cond_2f

    .line 814
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 815
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_32

    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 822
    :cond_32
    :goto_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3b

    move-object v5, v3

    goto :goto_43

    .line 823
    :cond_3b
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 825
    :goto_43
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v6

    if-eq v1, v6, :cond_4

    if-eqz v0, :cond_5f

    .line 826
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 827
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 831
    :cond_5f
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 833
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    .line 837
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_7a
    if-ltz v2, :cond_4

    .line 839
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v3

    if-eq v2, v3, :cond_85

    .line 840
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    .line 838
    :cond_85
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_7a

    :cond_8c
    return-void
.end method

.method public forEachBlockDepthFirst(ZLcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .registers 10

    .line 738
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 741
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    if-eqz p1, :cond_17

    .line 743
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    :goto_1b
    if-nez v2, :cond_1e

    return-void

    .line 750
    :cond_1e
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_25
    :goto_25
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_73

    .line 754
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 755
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 757
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_25

    if-eqz p1, :cond_48

    .line 759
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v4

    goto :goto_4c

    :cond_48
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v4

    .line 760
    :goto_4c
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_51
    if-ltz v5, :cond_68

    .line 762
    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 761
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_51

    .line 765
    :cond_68
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 766
    invoke-interface {p2, v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_25

    :cond_73
    return-void
.end method

.method public forEachBlockDepthFirstDom(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .registers 8

    .line 779
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 780
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 782
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_19
    :goto_19
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_53

    .line 785
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 786
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 788
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_19

    .line 790
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_39
    if-ltz v4, :cond_47

    .line 791
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 792
    invoke-virtual {v1, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    .line 794
    :cond_47
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 795
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_19

    :cond_53
    return-void
.end method

.method public forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .registers 4

    .line 710
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 711
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 722
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getBlocks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 3

    .line 386
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    if-nez v0, :cond_20

    .line 390
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-eqz v0, :cond_b

    .line 391
    aget-object p1, v0, p1

    return-object p1

    .line 394
    :cond_b
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    new-array v0, v0, [Lcom/s1243808733/android/dx/ssa/SsaInsn;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 396
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaMethod$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod$1;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 414
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aget-object p1, v0, p1

    return-object p1

    .line 387
    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No def list in back mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method public getEntryBlockIndex()I
    .registers 2

    .line 251
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    return v0
.end method

.method public getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .registers 3

    .line 273
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    :goto_e
    return-object v0
.end method

.method public getExitBlockIndex()I
    .registers 2

    .line 265
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    return v0
.end method

.method public getParamWidth()I
    .registers 2

    .line 299
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->paramWidth:I

    return v0
.end method

.method public getRegCount()I
    .registers 2

    .line 291
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    return v0
.end method

.method public getUseListCopy()[Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 636
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->buildUseList()V

    .line 639
    :cond_7
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 642
    :goto_c
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    if-ge v1, v2, :cond_1e

    .line 643
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public getUseListForRegister(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    if-nez v0, :cond_7

    .line 623
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->buildUseList()V

    .line 626
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 6

    .line 658
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 666
    :cond_c
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    .line 669
    :cond_14
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 670
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 673
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v3, 0x36

    if-ne v0, v3, :cond_20

    return v2

    :cond_3f
    return v1
.end method

.method public isStatic()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isStatic:Z

    return v0
.end method

.method makeExitBlock()V
    .registers 4

    .line 195
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    if-gez v0, :cond_4d

    .line 199
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    .line 200
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    new-instance v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-direct {v2, v0, v1, p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 203
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 206
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->exitBlockFixup(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_22

    .line 209
    :cond_32
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_4c

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    .line 213
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    :cond_4c
    return-void

    .line 196
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public makeNewGotoBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    new-instance v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-direct {v2, v0, v1, p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 241
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getGoto(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public makeNewSsaReg()I
    .registers 3

    .line 698
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 699
    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 700
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    return v0
.end method

.method public mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .registers 5

    .line 369
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 370
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 371
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    goto :goto_1c

    .line 375
    :cond_2c
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->getNewRegisterCount()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 376
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    return-void
.end method

.method onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 3

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 559
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 562
    :cond_b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 563
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 564
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1c
    return-void
.end method

.method public onInsnsChanged()V
    .registers 2

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 580
    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 581
    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    return-void
.end method

.method onSourceChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_12

    .line 481
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p2

    .line 482
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    :cond_12
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p2

    .line 486
    iget-object p3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    array-length v0, p3

    if-gt v0, p2, :cond_1f

    .line 487
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    return-void

    .line 490
    :cond_1f
    aget-object p2, p3, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 7

    .line 503
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_a

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 509
    :cond_a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    .line 510
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_27

    .line 513
    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 514
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v2, v3, v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public returnSpareRegisters()V
    .registers 2

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    return-void
.end method

.method public setBackMode()V
    .registers 2

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 855
    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-void
.end method

.method setNewRegCount(I)V
    .registers 2

    .line 687
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 688
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 689
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    return-void
.end method

.method updateOneDefinition(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_10

    .line 597
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p2

    .line 598
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 601
    :cond_10
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 604
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aget-object v0, v1, v0

    if-nez v0, :cond_27

    .line 609
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p2

    aput-object p1, v1, p2

    goto :goto_2f

    .line 607
    :cond_27
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Duplicate add of insn"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_2f
    return-void
.end method
