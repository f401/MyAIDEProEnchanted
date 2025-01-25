.class public interface abstract Lcom/sun/source/tree/TryTree;
.super Ljava/lang/Object;
.source "TryTree.java"

# interfaces
.implements Lcom/sun/source/tree/StatementTree;


# virtual methods
.method public abstract getBlock()Lcom/sun/source/tree/BlockTree;
.end method

.method public abstract getCatches()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/CatchTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFinallyBlock()Lcom/sun/source/tree/BlockTree;
.end method

.method public abstract getResources()Ljava/util/List;
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
