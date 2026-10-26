.class public interface abstract Lcom/sun/source/tree/MethodTree;
.super Ljava/lang/Object;
.source "MethodTree.java"

# interfaces
.implements Lcom/sun/source/tree/Tree;


# virtual methods
.method public abstract getBody()Lcom/sun/source/tree/BlockTree;
.end method

.method public abstract getDefaultValue()Lcom/sun/source/tree/Tree;
.end method

.method public abstract getModifiers()Lcom/sun/source/tree/ModifiersTree;
.end method

.method public abstract getName()Ljavax/lang/model/element/Name;
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnType()Lcom/sun/source/tree/Tree;
.end method

.method public abstract getThrows()Ljava/util/List;
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

.method public abstract getTypeParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/TypeParameterTree;",
            ">;"
        }
    .end annotation
.end method
