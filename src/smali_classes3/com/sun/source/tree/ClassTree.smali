.class public interface abstract Lcom/sun/source/tree/ClassTree;
.super Ljava/lang/Object;
.source "ClassTree.java"

# interfaces
.implements Lcom/sun/source/tree/StatementTree;


# virtual methods
.method public abstract getExtendsClause()Lcom/sun/source/tree/Tree;
.end method

.method public abstract getImplementsClause()Ljava/util/List;
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

.method public abstract getMembers()Ljava/util/List;
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

.method public abstract getModifiers()Lcom/sun/source/tree/ModifiersTree;
.end method

.method public abstract getSimpleName()Ljavax/lang/model/element/Name;
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
