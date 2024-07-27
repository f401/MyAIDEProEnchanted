.class Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;
.super Ljava/lang/Object;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/Ropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Subroutine"
.end annotation


# instance fields
.field private callerBlocks:Ljava/util/BitSet;

.field private retBlocks:Ljava/util/BitSet;

.field private startBlock:I

.field private final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;I)V
    .registers 5

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 236
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    .line 237
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$L1000011(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    .line 238
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$L1000011(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    .line 239
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$S1000020(Lcom/s1243808733/android/dx/cf/code/Ropper;Z)V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;II)V
    .registers 4

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;I)V

    .line 251
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->addRetBlock(I)V

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)Lcom/s1243808733/android/dx/cf/code/Ropper;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    return-object v0
.end method

.method static synthetic access$L1000026(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$L1000027(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return v0
.end method

.method static synthetic access$S1000026(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    return-void
.end method

.method static synthetic access$S1000027(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return-void
.end method


# virtual methods
.method addCallerBlock(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method addRetBlock(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method getStartBlock()I
    .registers 2

    .line 258
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return v0
.end method

.method getSuccessors()Lcom/s1243808733/android/dx/util/IntList;
    .registers 5

    const/4 v3, 0x0

    .line 291
    new-instance v1, Lcom/s1243808733/android/dx/util/IntList;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 299
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 300
    :goto_0
    if-gez v0, :cond_0

    .line 305
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 307
    return-object v1

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$1000037(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 300
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0
.end method

.method mergeToSuccessors(Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "[I)V"
        }
    .end annotation

    const/4 v7, 0x0

    .line 319
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    .line 320
    :goto_0
    if-gez v6, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v0, v6}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$1000037(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 324
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    invoke-virtual {p1, v0, v6}, Lcom/s1243808733/android/dx/cf/code/Frame;->subFrameForLabel(II)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v4

    .line 326
    if-eqz v4, :cond_1

    .line 327
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    const/4 v2, -0x1

    const/4 v3, 0x0

    check-cast v3, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$1000046(Lcom/s1243808733/android/dx/cf/code/Ropper;IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {p2, v6}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    goto :goto_1
.end method
