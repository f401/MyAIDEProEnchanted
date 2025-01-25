.class public Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;
.super Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;
.source "ClientCodeWrapper.java"

# interfaces
.implements Ljavax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WrappedJavaFileObject"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/JavaFileObject;)V
    .registers 3

    .line 492
    iput-object p1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;-><init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/FileObject;)V

    .line 494
    return-void
.end method


# virtual methods
.method public getAccessLevel()Ljavax/lang/model/element/Modifier;
    .registers 3

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->clientFileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getAccessLevel()Ljavax/lang/model/element/Modifier;
    :try_end_7
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_7} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 543
    :catch_9
    move-exception v0

    .line 544
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 541
    :catch_10
    move-exception v0

    .line 542
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 539
    :catch_17
    move-exception v0

    .line 540
    throw v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 3

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->clientFileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;
    :try_end_7
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_7} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 504
    :catch_9
    move-exception v0

    .line 505
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 502
    :catch_10
    move-exception v0

    .line 503
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 500
    :catch_17
    move-exception v0

    .line 501
    throw v0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .registers 3

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->clientFileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getNestingKind()Ljavax/lang/model/element/NestingKind;
    :try_end_7
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_7} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 530
    :catch_9
    move-exception v0

    .line 531
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :catch_10
    move-exception v0

    .line 529
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 526
    :catch_17
    move-exception v0

    .line 527
    throw v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 5

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->clientFileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    :try_end_7
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_7} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    return v0

    .line 517
    :catch_9
    move-exception v0

    .line 518
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 515
    :catch_10
    move-exception v0

    .line 516
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 513
    :catch_17
    move-exception v0

    .line 514
    throw v0
.end method
