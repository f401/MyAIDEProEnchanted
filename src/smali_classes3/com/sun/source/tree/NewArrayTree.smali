.class public interface abstract Lcom/sun/source/tree/NewArrayTree;
.super Ljava/lang/Object;
.source "NewArrayTree.java"

# interfaces
.implements Lcom/sun/source/tree/ExpressionTree;


# virtual methods
.method public abstract getDimensions()Ljava/util/List;
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

.method public abstract getInitializers()Ljava/util/List;
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

.method public abstract getType()Lcom/sun/source/tree/Tree;
.end method
