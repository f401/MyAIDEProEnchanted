.class Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;
.super Ljava/lang/Object;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/Ropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubroutineInliner"
.end annotation


# instance fields
.field private final labelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;

.field private final labelToSubroutines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/util/IntList;",
            ">;"
        }
    .end annotation
.end field

.field private final origLabelToCopiedLabel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private subroutineStart:I

.field private subroutineSuccessor:I

.field final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

.field private final workList:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/util/IntList;",
            ">;)V"
        }
    .end annotation

    .line 1504
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    .line 1507
    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$fgetmaxLabel(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    .line 1509
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;

    .line 1510
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    return-void
.end method

.method private copyBlock(II)V
    .locals 9

    const/4 v0, 0x0

    .line 1566
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v1, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mlabelToBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 1568
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v5

    .line 1573
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v1, v4}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$misSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v2

    const/4 v1, -0x1

    if-eqz v2, :cond_0

    .line 1584
    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->mapOrAllocateLabel(I)I

    move-result v0

    .line 1585
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    .line 1583
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(II)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 1626
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 1628
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mfilterMoveReturnAddressInsns(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/InsnList;)Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v4

    invoke-direct {v3, p2, v4, v0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1630
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/IntList;

    .line 1626
    invoke-static {v2, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$maddBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)V

    return-void

    .line 1587
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 1588
    invoke-static {v2, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$msubroutineFromRetBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1595
    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->-$$Nest$fgetstartBlock(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    if-ne v0, v1, :cond_1

    .line 1602
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineSuccessor:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 1603
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineSuccessor:I

    goto :goto_0

    .line 1596
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ret instruction returns to label "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;->-$$Nest$fgetstartBlock(Lcom/s1243808733/android/dx/cf/code/Ropper$Subroutine;)I

    move-result v1

    .line 1598
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    .line 1599
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1607
    :cond_2
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v6

    .line 1608
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v7

    .line 1610
    new-instance v2, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v2, v7}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    move v3, v0

    :goto_1
    if-ge v3, v7, :cond_3

    .line 1613
    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 1614
    invoke-direct {p0, v8}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->mapOrAllocateLabel(I)I

    move-result v0

    .line 1616
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    if-ne v6, v8, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    .line 1623
    :cond_3
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private involvedInSubroutine(II)Z
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/IntList;

    if-eqz v0, :cond_0

    .line 1644
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1645
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->top()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapOrAllocateLabel(I)I
    .locals 4

    .line 1661
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1664
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1680
    :cond_0
    :goto_0
    return p1

    .line 1665
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->involvedInSubroutine(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;->getNextLabel()I

    move-result v1

    .line 1673
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 1674
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1680
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1681
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/IntList;

    .line 1680
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v1

    goto :goto_0
.end method


# virtual methods
.method inlineSubroutineCalledFrom(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)V
    .locals 7

    const/4 v6, 0x0

    .line 1524
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineSuccessor:I

    .line 1525
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    .line 1531
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->mapOrAllocateLabel(I)I

    move-result v2

    .line 1533
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 1536
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1538
    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->copyBlock(II)V

    .line 1540
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v3, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mlabelToBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$misSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelAllocator:Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;-><init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 1542
    invoke-static {v3, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$mlabelToBlock(Lcom/s1243808733/android/dx/cf/code/Ropper;I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->inlineSubroutineCalledFrom(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1551
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 1552
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v3

    .line 1553
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v5

    invoke-direct {v4, v0, v3, v5, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1555
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/IntList;

    .line 1551
    invoke-static {v1, v4, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->-$$Nest$maddOrReplaceBlockNoDelete(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/util/IntList;)Z

    return-void
.end method
