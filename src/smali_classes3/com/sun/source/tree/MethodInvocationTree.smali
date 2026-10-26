.class public interface abstract Lcom/sun/source/tree/MethodInvocationTree;
.super Ljava/lang/Object;
.source "MethodInvocationTree.java"

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

.method public abstract getMethodSelect()Lcom/sun/source/tree/ExpressionTree;
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
