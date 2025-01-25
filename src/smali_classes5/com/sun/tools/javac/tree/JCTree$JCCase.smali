.class public Lcom/sun/tools/javac/tree/JCTree$JCCase;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/CaseTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCCase"
.end annotation


# instance fields
.field public pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public stats:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)V"
        }
    .end annotation

    .line 1432
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1433
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1434
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    .line 1435
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

    .line 1456
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1439
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V

    .line 1440
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1428
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1447
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1443
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CASE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getStatements()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getStatements()Ljava/util/List;
    .registers 2

    .line 1428
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCase;->getStatements()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1461
    const/16 v0, 0xe

    return v0
.end method
