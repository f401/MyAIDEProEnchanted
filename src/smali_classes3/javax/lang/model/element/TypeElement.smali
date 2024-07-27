.class public interface abstract Ljavax/lang/model/element/TypeElement;
.super Ljava/lang/Object;
.source "TypeElement.java"

# interfaces
.implements Ljavax/lang/model/element/Element;
.implements Ljavax/lang/model/element/Parameterizable;
.implements Ljavax/lang/model/element/QualifiedNameable;


# virtual methods
.method public abstract getEnclosedElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnclosingElement()Ljavax/lang/model/element/Element;
.end method

.method public abstract getInterfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNestingKind()Ljavax/lang/model/element/NestingKind;
.end method

.method public abstract getQualifiedName()Ljavax/lang/model/element/Name;
.end method

.method public abstract getSimpleName()Ljavax/lang/model/element/Name;
.end method

.method public abstract getSuperclass()Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract getTypeParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;"
        }
    .end annotation
.end method
