.class public Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/InstanceOfTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCInstanceOf"
.end annotation


# instance fields
.field public clazz:Lcom/sun/tools/javac/tree/JCTree;

.field public expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 2348
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2349
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2350
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    .line 2351
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

    .line 2372
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2355
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V

    .line 2356
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 2344
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2367
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2359
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2377
    const/16 v0, 0x20

    return v0
.end method

.method public bridge synthetic getType()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 2344
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 2363
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    return-object v0
.end method
