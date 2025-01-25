.class public Lcom/sun/tools/javac/tree/JCTree$JCThrow;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ThrowTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCThrow"
.end annotation


# instance fields
.field public expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 1845
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1846
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1847
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

    .line 1864
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1851
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V

    .line 1852
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1842
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1859
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1855
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->THROW:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1869
    const/16 v0, 0x18

    return v0
.end method
