.class public interface abstract Ljavax/lang/model/element/TypeParameterElement;
.super Ljava/lang/Object;
.source "TypeParameterElement.java"

# interfaces
.implements Ljavax/lang/model/element/Element;


# virtual methods
.method public abstract getBounds()Ljava/util/List;
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

.method public abstract getEnclosingElement()Ljavax/lang/model/element/Element;
.end method

.method public abstract getGenericElement()Ljavax/lang/model/element/Element;
.end method
