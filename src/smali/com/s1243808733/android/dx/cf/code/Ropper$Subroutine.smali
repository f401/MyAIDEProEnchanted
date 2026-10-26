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

.field final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;


# direct methods
.method static bridge synthetic -$$Nest$fgetretBlocks(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetstartBlock(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return v0
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;I)V
    .locals 2

    .line 235
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    .line 237
    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$fgetmaxLabel(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    .line 238
    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$fgetmaxLabel(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    .line 239
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$fputhasSubroutines(Lcom/s1243808733/android/dx/cf/code/Ropper;Z)V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;II)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;I)V

    .line 251
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->addRetBlock(I)V

    return-void
.end method


# virtual methods
.method addCallerBlock(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method addRetBlock(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method getStartBlock()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return v0
.end method

.method getSuccessors()Lcom/s1243808733/android/dx/util/IntList;
    .locals 4

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

    :goto_0
    if-ltz v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mlabelToBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

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

    .line 305
    :cond_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    return-object v1
.end method

.method mergeToSuccessors(Lcom/s1243808733/android/dx/cf/code/Frame;[I)V
    .locals 8

    const/4 v7, 0x0

    .line 319
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    :goto_0
    if-ltz v6, :cond_1

    .line 321
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v0, v6}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mlabelToBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

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

    if-eqz v4, :cond_0

    .line 327
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mmergeAndWorkAsNecessary(Lcom/s1243808733/android/dx/cf/code/Ropper;IILcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;Lcom/s1243808733/android/dx/cf/code/Frame;[I)V

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {p2, v6}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    goto :goto_1

    .line 320
    :cond_1
    return-void
.end method
