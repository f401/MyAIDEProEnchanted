.class public abstract Lsun/reflect/annotation/ExceptionProxy;
.super Ljava/lang/Object;
.source "ExceptionProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract generateException()Ljava/lang/RuntimeException;
.end method
