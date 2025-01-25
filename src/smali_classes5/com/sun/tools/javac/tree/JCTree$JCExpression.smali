.class public abstract Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ExpressionTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JCExpression"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 830
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    return-void
.end method


# virtual methods
.method public setPos(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 839
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/JCTree;->setPos(I)Lcom/sun/tools/javac/tree/JCTree;

    .line 840
    return-object p0
.end method

.method public bridge synthetic setPos(I)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 830
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setPos(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 833
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/JCTree;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    .line 834
    return-object p0
.end method

.method public bridge synthetic setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 830
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method
