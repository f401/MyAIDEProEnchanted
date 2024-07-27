.class Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/SsaRenamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockRenamer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
    }
.end annotation


# instance fields
.field private final block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

.field private final currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final insnsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

.field private final movesToKeep:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 6

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    .line 312
    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000005(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    .line 316
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;-><init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    .line 319
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000005(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    const/4 v0, 0x0

    check-cast v0, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object v0, v1, v2

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaRenamer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method static synthetic access$L1000016(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method private addMapping(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 436
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 437
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v3

    .line 439
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object p2, v0, p1

    .line 444
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    .line 453
    if-nez v3, :cond_3

    .line 461
    :cond_0
    return-void

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v1, v1, v0

    .line 447
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aput-object p2, v1, v0

    .line 444
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000011(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 461
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v4, v0, v1

    .line 464
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-eq v2, v0, :cond_4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    aput-object v0, v5, v1

    .line 461
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method private updateSuccessorPhis()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 633
    new-instance v2, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;

    invoke-direct {v2, p0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;-><init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)V

    .line 659
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v3

    .line 660
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    .line 661
    :goto_0
    if-gez v1, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000001(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 663
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V

    .line 661
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public process()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    .line 377
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->updateSuccessorPhis()V

    .line 380
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 383
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_1

    .line 398
    const/4 v1, 0x1

    .line 399
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 406
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 384
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 385
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 389
    if-eqz v1, :cond_3

    .line 390
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->isNormalMoveInsn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 399
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 400
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    if-eq v0, v3, :cond_0

    .line 402
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 405
    :goto_3
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000005(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    aput-object v1, v3, v0

    .line 406
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 402
    :cond_5
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000009([Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    goto :goto_3
.end method

.method processResultReg(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    .line 607
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 609
    if-nez v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000012(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000002(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->changeResultReg(I)V

    .line 619
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 625
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000002(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$S1000002(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)V

    goto :goto_0
.end method

.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 498
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 499
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 500
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 502
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    .line 503
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 505
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 507
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 516
    if-nez v0, :cond_0

    move-object v0, v1

    .line 518
    :cond_0
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v6, v5}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000010(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v6

    .line 524
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 538
    :goto_0
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 542
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000014(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v5}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000004(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I

    move-result v5

    if-nez v5, :cond_3

    .line 551
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 579
    :goto_1
    return-void

    .line 524
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 552
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000004(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I

    move-result v1

    if-nez v1, :cond_4

    .line 559
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 563
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMarkLocal(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v5

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {v2, v5, v6, v0, v1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-direct {p0, v4, v3}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 577
    :cond_4
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 579
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    .line 596
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 479
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method
