.class public Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/MethodInvocationTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCMethodInvocation"
.end annotation


# instance fields
.field public args:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public typeargs:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public varargsElement:Lcom/sun/tools/javac/code/Type;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    .line 1924
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 1925
    if-nez p1, :cond_9

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p1

    .line 1926
    :cond_9
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    .line 1927
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1928
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    .line 1929
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

    .line 1954
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1933
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V

    .line 1934
    return-void
.end method

.method public getArguments()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1949
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getArguments()Ljava/util/List;
    .registers 2

    .line 1916
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->getArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1937
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getMethodSelect()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1916
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->getMethodSelect()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getMethodSelect()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1945
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1965
    const/16 v0, 0x1a

    return v0
.end method

.method public getTypeArguments()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1941
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 1916
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 1916
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 2

    .line 1959
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1960
    return-object p0
.end method

.method public bridge synthetic setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 1916
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method
