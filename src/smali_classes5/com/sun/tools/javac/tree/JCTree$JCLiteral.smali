.class public Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/LiteralTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCLiteral"
.end annotation


# instance fields
.field public typetag:I

.field public value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 2514
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2515
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    .line 2516
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    .line 2517
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2565
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2521
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V

    .line 2522
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 3

    .line 2525
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_39

    const/16 v1, 0x11

    if-eq v0, v1, :cond_36

    packed-switch v0, :pswitch_data_40

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown literal kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2535
    :pswitch_27  #0x8
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    .line 2541
    :goto_29
    return-object v0

    .line 2533
    :pswitch_2a  #0x7
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DOUBLE_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2531
    :pswitch_2d  #0x6
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->FLOAT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2529
    :pswitch_30  #0x5
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LONG_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2527
    :pswitch_33  #0x4
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->INT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2541
    :cond_36
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2539
    :cond_39
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2537
    :cond_3c
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_29

    .line 2525
    nop

    :pswitch_data_40
    .packed-switch 0x4
        :pswitch_33  #00000004
        :pswitch_30  #00000005
        :pswitch_2d  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
    .end packed-switch
.end method

.method public getTag()I
    .registers 2

    .line 2576
    const/16 v0, 0x24

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 2548
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    .line 2559
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    :goto_b
    return-object v0

    .line 2550
    :cond_c
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2551
    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_17

    .line 2553
    :cond_1e
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2554
    int-to-char v1, v0

    .line 2555
    if-ne v1, v0, :cond_2e

    .line 2557
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_b

    .line 2556
    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "bad value for char literal"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 2510
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
    .registers 2

    .line 2570
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2571
    return-object p0
.end method

.method public bridge synthetic setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 2510
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0
.end method
