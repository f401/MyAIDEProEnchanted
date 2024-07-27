.class public interface abstract Ljavax/lang/model/element/ExecutableElement;
.super Ljava/lang/Object;
.source "ExecutableElement.java"

# interfaces
.implements Ljavax/lang/model/element/Element;
.implements Ljavax/lang/model/element/Parameterizable;


# virtual methods
.method public abstract getDefaultValue()Ljavax/lang/model/element/AnnotationValue;
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnType()Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract getSimpleName()Ljavax/lang/model/element/Name;
.end method

.method public abstract getThrownTypes()Ljava/util/List;
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

.method public abstract isVarArgs()Z
.end method
