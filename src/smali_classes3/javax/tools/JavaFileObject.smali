.class public interface abstract Ljavax/tools/JavaFileObject;
.super Ljava/lang/Object;
.source "JavaFileObject.java"

# interfaces
.implements Ljavax/tools/FileObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/tools/JavaFileObject$Kind;
    }
.end annotation


# virtual methods
.method public abstract getAccessLevel()Ljavax/lang/model/element/Modifier;
.end method

.method public abstract getKind()Ljavax/tools/JavaFileObject$Kind;
.end method

.method public abstract getNestingKind()Ljavax/lang/model/element/NestingKind;
.end method

.method public abstract isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
.end method
