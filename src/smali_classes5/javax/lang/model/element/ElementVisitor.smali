.class public interface abstract Ljavax/lang/model/element/ElementVisitor;
.super Ljava/lang/Object;
.source "ElementVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract visit(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/PackageElement;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation
.end method
