.class public interface abstract Lcom/sun/source/tree/NewClassTree;
.super Ljava/lang/Object;
.source "NewClassTree.java"

# interfaces
.implements Lcom/sun/source/tree/ExpressionTree;


# virtual methods
.method public abstract getArguments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassBody()Lcom/sun/source/tree/ClassTree;
.end method

.method public abstract getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;
.end method

.method public abstract getIdentifier()Lcom/sun/source/tree/ExpressionTree;
.end method

.method public abstract getTypeArguments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end method
