.class Lcom/sun/tools/javac/model/JavacElements$1TS;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "JavacElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/JavacElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TS"
.end annotation


# instance fields
.field result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field final this$0:Lcom/sun/tools/javac/model/JavacElements;

.field final val$sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->this$0:Lcom/sun/tools/javac/model/JavacElements;

    iput-object p2, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    iput-object p3, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->val$sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 322
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 324
    :cond_0
    return-void
.end method

.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    if-ne p1, v0, :cond_0

    .line 327
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/model/JavacElements$1TS;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 328
    :cond_0
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 4

    .line 330
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 332
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->val$sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1TS;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 335
    :cond_0
    return-void
.end method
