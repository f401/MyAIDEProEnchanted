.class public interface abstract Lcom/sun/source/tree/CaseTree;
.super Ljava/lang/Object;
.source "CaseTree.java"

# interfaces
.implements Lcom/sun/source/tree/Tree;


# virtual methods
.method public abstract getExpression()Lcom/sun/source/tree/ExpressionTree;
.end method

.method public abstract getStatements()Ljava/util/List;
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
