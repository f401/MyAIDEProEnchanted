.class public interface abstract Lcom/sun/source/tree/ForLoopTree;
.super Ljava/lang/Object;
.source "ForLoopTree.java"

# interfaces
.implements Lcom/sun/source/tree/StatementTree;


# virtual methods
.method public abstract getCondition()Lcom/sun/source/tree/ExpressionTree;
.end method

.method public abstract getInitializer()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/StatementTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatement()Lcom/sun/source/tree/StatementTree;
.end method

.method public abstract getUpdate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionStatementTree;",
            ">;"
        }
    .end annotation
.end method
