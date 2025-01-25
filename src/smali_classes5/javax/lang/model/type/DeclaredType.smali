.class public interface abstract Ljavax/lang/model/type/DeclaredType;
.super Ljava/lang/Object;
.source "DeclaredType.java"

# interfaces
.implements Ljavax/lang/model/type/ReferenceType;


# virtual methods
.method public abstract asElement()Ljavax/lang/model/element/Element;
.end method

.method public abstract getEnclosingType()Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract getTypeArguments()Ljava/util/List;
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
