.class public interface abstract Lcom/sun/source/tree/SwitchTree;
.super Ljava/lang/Object;
.source "SwitchTree.java"

# interfaces
.implements Lcom/sun/source/tree/StatementTree;


# virtual methods
.method public abstract getCases()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/CaseTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpression()Lcom/sun/source/tree/ExpressionTree;
.end method
