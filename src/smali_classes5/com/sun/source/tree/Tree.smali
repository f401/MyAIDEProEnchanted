.class public interface abstract Lcom/sun/source/tree/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# virtual methods
.method public abstract accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract getKind()Lcom/sun/source/tree/Tree$Kind;
.end method
