.class Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "CRTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/CRTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceComputer"
.end annotation


# instance fields
.field result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

.field final this$0:Lcom/sun/tools/javac/jvm/CRTable;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/CRTable;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lcom/sun/tools/javac/jvm/CRTable;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    return-void
.end method


# virtual methods
.method public csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
    .registers 4

    .line 212
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 214
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lcom/sun/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/CRTable;->access$000(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    goto :goto_0
.end method

.method public csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/jvm/CRTable$SourceRange;"
        }
    .end annotation

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_1
    new-instance v2, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-direct {v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>()V

    move-object v1, p1

    .line 226
    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 226
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lcom/sun/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/CRTable;->access$000(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 230
    goto :goto_0
.end method

.method public cspCases(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCase;",
            ">;)",
            "Lcom/sun/tools/javac/jvm/CRTable$SourceRange;"
        }
    .end annotation

    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_1
    new-instance v2, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-direct {v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>()V

    move-object v1, p1

    .line 240
    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 240
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lcom/sun/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/CRTable;->access$000(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 244
    goto :goto_0
.end method

.method public cspCatchers(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;)",
            "Lcom/sun/tools/javac/jvm/CRTable$SourceRange;"
        }
    .end annotation

    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 253
    :cond_1
    new-instance v2, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-direct {v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>()V

    move-object v1, p1

    .line 254
    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 254
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lcom/sun/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/CRTable;->access$000(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 258
    goto :goto_0
.end method

.method public endPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 5

    const/4 v1, -0x1

    .line 554
    if-nez p1, :cond_0

    move v0, v1

    .line 560
    :goto_0
    return v0

    .line 555
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 556
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->this$0:Lcom/sun/tools/javac/jvm/CRTable;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/CRTable;->access$100(Lcom/sun/tools/javac/jvm/CRTable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 558
    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 560
    goto :goto_0
.end method

.method public startPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 545
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_0
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 5

    .line 412
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 413
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 414
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 415
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 416
    return-void
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 5

    .line 405
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 406
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 407
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 408
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 409
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 5

    .line 442
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 443
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 444
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 445
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 446
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 5

    .line 449
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 450
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 451
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 452
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 453
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 5

    .line 462
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 463
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 464
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 465
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 466
    return-void
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 5

    .line 281
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 282
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 283
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 284
    return-void
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 5

    .line 383
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 384
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 385
    return-void
.end method

.method public visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V
    .registers 5

    .line 331
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 332
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 333
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 334
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 335
    return-void
.end method

.method public visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V
    .registers 5

    .line 354
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 355
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 356
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 357
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 358
    return-void
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 5

    .line 361
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 362
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 363
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 364
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 365
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 366
    return-void
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 5

    .line 388
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 389
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 390
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 5

    .line 287
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 288
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 289
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 290
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 291
    return-void
.end method

.method public visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V
    .registers 3

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 535
    return-void
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 5

    .line 377
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 378
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 379
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 380
    return-void
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 5

    .line 301
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 302
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 303
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 304
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 305
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 306
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 307
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 5

    .line 310
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 311
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 312
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 313
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 314
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 315
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 5

    .line 496
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 497
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 498
    return-void
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 5

    .line 369
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 370
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 371
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 372
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 373
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 374
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 5

    .line 483
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 484
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 485
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 486
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 487
    return-void
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 5

    .line 318
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 319
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 320
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 321
    return-void
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 5

    .line 501
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 502
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 503
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 5

    .line 262
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 263
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 264
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 265
    return-void
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 5

    .line 428
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 429
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 430
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 431
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 432
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 433
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 5

    .line 419
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 420
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 421
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 422
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 423
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 424
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 425
    return-void
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 5

    .line 436
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 437
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 438
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 439
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 5

    .line 393
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 394
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 395
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 396
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 5

    .line 490
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 491
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 492
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 493
    return-void
.end method

.method public visitSkip(Lcom/sun/tools/javac/tree/JCTree$JCSkip;)V
    .registers 5

    .line 276
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 277
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 278
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 5

    .line 324
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 325
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 326
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->cspCases(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 327
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 328
    return-void
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 5

    .line 338
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 339
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 340
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 341
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 342
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 5

    .line 399
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 400
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 401
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 402
    return-void
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 538
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 539
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 5

    .line 345
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 346
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 347
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 348
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->cspCatchers(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 349
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 350
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 351
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 5

    .line 517
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 518
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 519
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 520
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 521
    return-void
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 5

    .line 511
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 512
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 513
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 514
    return-void
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 5

    .line 469
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 470
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 471
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 472
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 473
    return-void
.end method

.method public visitTypeIdent(Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .registers 5

    .line 506
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 507
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 508
    return-void
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 5

    .line 524
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 525
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 526
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 527
    return-void
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 5

    .line 476
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 477
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 478
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 479
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 480
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 5

    .line 456
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 457
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 458
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 459
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 5

    .line 268
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 269
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 270
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 271
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 272
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 5

    .line 294
    new-instance v0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->startPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;-><init>(II)V

    .line 295
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 296
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->csp(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 297
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 298
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 3

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceComputer;->result:Lcom/sun/tools/javac/jvm/CRTable$SourceRange;

    .line 531
    return-void
.end method
