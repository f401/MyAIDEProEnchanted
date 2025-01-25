.class public interface abstract Lcom/sun/source/tree/IfTree;
.super Ljava/lang/Object;
.source "IfTree.java"

# interfaces
.implements Lcom/sun/source/tree/StatementTree;


# virtual methods
.method public abstract getCondition()Lcom/sun/source/tree/ExpressionTree;
.end method

.method public abstract getElseStatement()Lcom/sun/source/tree/StatementTree;
.end method

.method public abstract getThenStatement()Lcom/sun/source/tree/StatementTree;
.end method
