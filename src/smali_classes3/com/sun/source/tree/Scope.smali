.class public interface abstract Lcom/sun/source/tree/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# virtual methods
.method public abstract getEnclosingClass()Ljavax/lang/model/element/TypeElement;
.end method

.method public abstract getEnclosingMethod()Ljavax/lang/model/element/ExecutableElement;
.end method

.method public abstract getEnclosingScope()Lcom/sun/source/tree/Scope;
.end method

.method public abstract getLocalElements()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method
