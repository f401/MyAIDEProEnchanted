.class public final Lcom/s1243808733/android/dx/ssa/SsaMethod;
.super Ljava/lang/Object;
.source "SsaMethod.java"


# instance fields
.field private backMode:Z

.field private blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private useList:[Ljava/util/ArrayList;
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


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)V
    .registers 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->paramWidth:I

    .line 120
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isStatic:Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    .line 122
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->maxLabel:I

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 124
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    return-void
.end method

.method static synthetic access$L1000009(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-object v0
.end method

.method static synthetic access$L1000010(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$S1000009(Lcom/s1243808733/android/dx/ssa/SsaMethod;[Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-void
.end method

.method static synthetic access$S1000010(Lcom/s1243808733/android/dx/ssa/SsaMethod;[Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    return-void
.end method

.method static bitSetFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Ljava/util/BitSet;
    .registers 6

    .line 137
    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    .line 143
    return-object v1

    .line 140
    :cond_0
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildUseList()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 421
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    move v0, v1

    .line 427
    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    if-lt v0, v2, :cond_1

    .line 431
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 461
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    .line 463
    :goto_1
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    if-lt v1, v0, :cond_2

    return-void

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private convertRopToSsaBlocks(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    .line 172
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    return-void

    .line 173
    :cond_0
    invoke-static {p1, v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->newFromRop(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getGoto(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 7

    .line 225
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    return-object v1
.end method

.method public static indexListFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;
    .registers 6

    .line 157
    new-instance v1, Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    .line 163
    return-object v1

    .line 160
    :cond_0
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newFromRopMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 4

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)V

    .line 103
    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->convertRopToSsaBlocks(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    .line 105
    return-object v0
.end method

.method private removeFromUseList(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;",
            ")V"
        }
    .end annotation

    .line 528
    if-nez p2, :cond_1

    .line 533
    :cond_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 533
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 534
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 535
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "use not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public blockIndexToRopLabel(I)I
    .registers 3

    .line 281
    if-gez p1, :cond_0

    .line 282
    const/4 v0, -0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v0

    goto :goto_0
.end method

.method public borrowSpareRegister(I)I
    .registers 5

    .line 319
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    add-int/2addr v0, v1

    .line 321
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    .line 322
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    add-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 324
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
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 360
    return-object v2

    .line 355
    :cond_0
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

    goto :goto_0
.end method

.method public deleteInsns(Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 806
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 838
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 806
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 807
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    .line 808
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    .line 810
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_0
    if-gez v3, :cond_4

    .line 822
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 823
    if-nez v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 825
    :goto_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    if-eq v5, v3, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 831
    :cond_2
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v7, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    sget-object v8, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v3, v7, v0, v8}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 833
    invoke-static {v2, v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v2

    .line 837
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 838
    :goto_3
    if-ltz v0, :cond_0

    .line 839
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 840
    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    .line 838
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_3

    .line 811
    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 813
    if-ne v0, v2, :cond_5

    .line 814
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 815
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 810
    :cond_5
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0

    .line 823
    :cond_6
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    goto :goto_2
.end method

.method public forEachBlockDepthFirst(ZLcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;",
            ")V"
        }
    .end annotation

    .line 738
    new-instance v5, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 741
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 743
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    move-object v1, v0

    .line 745
    :goto_0
    if-nez v1, :cond_2

    .line 753
    :cond_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 750
    :cond_2
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v6, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {v6, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 754
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 755
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 757
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 758
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v2

    move-object v3, v2

    .line 760
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    .line 761
    :goto_3
    if-gez v4, :cond_5

    .line 765
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 766
    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_1

    .line 758
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    .line 762
    :cond_5
    invoke-virtual {v6, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 761
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    goto :goto_3
.end method

.method public forEachBlockDepthFirstDom(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;",
            ")V"
        }
    .end annotation

    .line 779
    new-instance v3, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 780
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 782
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 785
    :cond_1
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 786
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v5

    .line 788
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 790
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-gez v2, :cond_2

    .line 794
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 795
    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-interface {p1, v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_0

    .line 791
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 792
    invoke-virtual {v4, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1
.end method

.method public forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;",
            ")V"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 711
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 711
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    goto :goto_0
.end method

.method public forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;",
            ")V"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 722
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 721
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 722
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V

    goto :goto_0
.end method

.method public getBlocks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 4

    .line 386
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No def list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aget-object v0, v0, p1

    .line 414
    :goto_0
    return-object v0

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    new-array v0, v0, [Lcom/s1243808733/android/dx/ssa/SsaInsn;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 396
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 414
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aget-object v0, v0, p1

    goto :goto_0
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

    if-gez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    goto :goto_0
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->buildUseList()V

    .line 639
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    .line 642
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    if-lt v2, v1, :cond_1

    .line 646
    return-object v0

    .line 643
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/ArrayList;

    aput-object v1, v0, v2

    .line 642
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public getUseListForRegister(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->buildUseList()V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 658
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 660
    if-nez v0, :cond_0

    move v0, v1

    .line 678
    :goto_0
    return v0

    .line 666
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 674
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 678
    goto :goto_0

    .line 669
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 670
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v4, 0x36

    if-ne v0, v4, :cond_2

    move v0, v2

    .line 674
    goto :goto_0
.end method

.method public isStatic()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isStatic:Z

    return v0
.end method

.method makeExitBlock()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    if-ltz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    .line 200
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->exitBlockIndex:I

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

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_1

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

    :cond_1
    return-void

    .line 205
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 206
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->exitBlockFixup(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_0
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

    .line 244
    return-object v2
.end method

.method public makeNewSsaReg()I
    .registers 3

    .line 698
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 699
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 700
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 701
    return v0
.end method

.method public mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/RegisterMapper;",
            ")V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 371
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->getNewRegisterCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 376
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    return-void

    .line 369
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 370
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 371
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 371
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    goto :goto_0
.end method

.method onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 547
    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 548
    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 562
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 564
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aput-object v0, v1, v2

    :cond_1
    return-void
.end method

.method public onInsnsChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 577
    move-object v0, v1

    check-cast v0, [Lcom/s1243808733/android/dx/ssa/SsaInsn;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-object v0, v1

    .line 580
    check-cast v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 581
    check-cast v1, [Ljava/util/List;

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    return-void
.end method

.method onSourceChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 480
    :cond_0
    if-eqz p2, :cond_1

    .line 481
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    :cond_1
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    array-length v1, v1

    if-gt v1, v0, :cond_2

    .line 487
    const/4 v0, 0x0

    check-cast v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    goto :goto_0

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;",
            ")V"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 512
    :cond_0
    return-void

    .line 505
    :cond_1
    if-eqz p2, :cond_2

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 509
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 512
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 513
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 514
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v3, v4, v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public returnSpareRegisters()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    return-void
.end method

.method public setBackMode()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->backMode:Z

    move-object v0, v1

    .line 854
    check-cast v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 855
    check-cast v1, [Lcom/s1243808733/android/dx/ssa/SsaInsn;

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-void
.end method

.method setNewRegCount(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 687
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    .line 688
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->registerCount:I

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 689
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    return-void
.end method

.method updateOneDefinition(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    if-eqz p2, :cond_2

    .line 597
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 598
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aput-object v0, v2, v1

    .line 601
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 606
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    aget-object v1, v2, v1

    if-eqz v1, :cond_3

    .line 607
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Duplicate add of insn"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod;->definitionList:[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    aput-object p1, v1, v0

    goto :goto_0
.end method
