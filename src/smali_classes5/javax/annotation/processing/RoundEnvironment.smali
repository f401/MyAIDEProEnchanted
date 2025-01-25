.class public interface abstract Ljavax/annotation/processing/RoundEnvironment;
.super Ljava/lang/Object;
.source "RoundEnvironment.java"


# virtual methods
.method public abstract errorRaised()Z
.end method

.method public abstract getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRootElements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract processingOver()Z
.end method
