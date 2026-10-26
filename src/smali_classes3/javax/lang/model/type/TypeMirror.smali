.class public interface abstract Ljavax/lang/model/type/TypeMirror;
.super Ljava/lang/Object;
.source "TypeMirror.java"


# virtual methods
.method public abstract accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/type/TypeVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getKind()Ljavax/lang/model/type/TypeKind;
.end method

.method public abstract hashCode()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
