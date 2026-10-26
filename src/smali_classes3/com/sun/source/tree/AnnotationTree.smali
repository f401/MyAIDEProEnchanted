.class public interface abstract Lcom/sun/source/tree/AnnotationTree;
.super Ljava/lang/Object;
.source "AnnotationTree.java"

# interfaces
.implements Lcom/sun/source/tree/ExpressionTree;


# virtual methods
.method public abstract getAnnotationType()Lcom/sun/source/tree/Tree;
.end method

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
