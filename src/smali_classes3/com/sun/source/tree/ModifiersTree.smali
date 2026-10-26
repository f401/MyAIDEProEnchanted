.class public interface abstract Lcom/sun/source/tree/ModifiersTree;
.super Ljava/lang/Object;
.source "ModifiersTree.java"

# interfaces
.implements Lcom/sun/source/tree/Tree;


# virtual methods
.method public abstract getAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFlags()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end method
