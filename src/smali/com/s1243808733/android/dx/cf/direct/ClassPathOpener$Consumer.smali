.class public interface abstract Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;
.super Ljava/lang/Object;
.source "ClassPathOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Consumer"
.end annotation


# virtual methods
.method public abstract onException(Ljava/lang/Exception;)V
.end method

.method public abstract onProcessArchiveStart(Ljava/io/File;)V
.end method

.method public abstract processFileBytes(Ljava/lang/String;J[B)Z
.end method
