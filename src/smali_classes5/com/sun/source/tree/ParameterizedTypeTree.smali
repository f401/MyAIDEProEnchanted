.class public interface abstract Lcom/sun/source/tree/ParameterizedTypeTree;
.super Ljava/lang/Object;
.source "ParameterizedTypeTree.java"

# interfaces
.implements Lcom/sun/source/tree/Tree;


# virtual methods
.method public abstract getType()Lcom/sun/source/tree/Tree;
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
