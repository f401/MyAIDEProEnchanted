.class Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComplexityScanner"
.end annotation


# instance fields
.field complexity:I

.field final this$0:Lcom/sun/tools/javac/jvm/Gen;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Gen;)V
    .registers 3

    .line 1614
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 1615
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 4

    .line 1618
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->this$0:Lcom/sun/tools/javac/jvm/Gen;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Gen;->access$200(Lcom/sun/tools/javac/jvm/Gen;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1620
    :goto_0
    return-void

    .line 1619
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_0
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 3

    .line 1702
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V

    .line 1703
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1704
    return-void
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 3

    .line 1697
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V

    .line 1698
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1699
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 3

    .line 1718
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V

    .line 1719
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1720
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 3

    .line 1723
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V

    .line 1724
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1725
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 3

    .line 1733
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1734
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V

    .line 1735
    :cond_0
    return-void
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 3

    .line 1677
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V

    .line 1678
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1679
    return-void
.end method

.method public visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V
    .registers 3

    .line 1646
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V

    .line 1647
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1648
    return-void
.end method

.method public visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V
    .registers 3

    .line 1661
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V

    .line 1662
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1663
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 2

    .line 1623
    return-void
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 3

    .line 1666
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V

    .line 1667
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1668
    return-void
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 3

    .line 1682
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V

    .line 1683
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1684
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 3

    .line 1626
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V

    .line 1627
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1628
    return-void
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 3

    .line 1636
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V

    .line 1637
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1638
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 4

    .line 1753
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1754
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1755
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1757
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1759
    :cond_0
    return-void
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 3

    .line 1671
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V

    .line 1672
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1673
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 3

    .line 1743
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V

    .line 1744
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1745
    return-void
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 3

    .line 1762
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1763
    return-void
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 3

    .line 1713
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V

    .line 1714
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1715
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 3

    .line 1707
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1708
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 1709
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1710
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 3

    .line 1687
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V

    .line 1688
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1689
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 4

    .line 1748
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V

    .line 1749
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1750
    :cond_0
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 3

    .line 1641
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V

    .line 1642
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1643
    return-void
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 3

    .line 1651
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V

    .line 1652
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1653
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 3

    .line 1692
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V

    .line 1693
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1694
    return-void
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 1766
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 3

    .line 1656
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V

    .line 1657
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1658
    :cond_0
    return-void
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 3

    .line 1738
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V

    .line 1739
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1740
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 3

    .line 1728
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1729
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V

    .line 1730
    :cond_0
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 3

    .line 1631
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V

    .line 1632
    iget v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Gen$1ComplexityScanner;->complexity:I

    .line 1633
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 4

    .line 1769
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
