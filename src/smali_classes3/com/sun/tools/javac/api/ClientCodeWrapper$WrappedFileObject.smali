.class public Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;
.super Ljava/lang/Object;
.source "ClientCodeWrapper.java"

# interfaces
.implements Ljavax/tools/FileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WrappedFileObject"
.end annotation


# instance fields
.field protected clientFileObject:Ljavax/tools/FileObject;

.field final this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/FileObject;)V
    .registers 3

    .line 368
    iput-object p1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    iput-object p2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    .line 371
    return-void
.end method


# virtual methods
.method public delete()Z
    .registers 3

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->delete()Z
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 483
    :catch_1
    move-exception v0

    .line 484
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 481
    :catch_2
    move-exception v0

    .line 482
    throw v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0, p1}, Ljavax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 444
    :catch_1
    move-exception v0

    .line 445
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 442
    :catch_2
    move-exception v0

    .line 443
    throw v0
.end method

.method public getLastModified()J
    .registers 3

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->getLastModified()J
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 470
    :catch_1
    move-exception v0

    .line 471
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 468
    :catch_2
    move-exception v0

    .line 469
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 392
    :catch_1
    move-exception v0

    .line 393
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 390
    :catch_2
    move-exception v0

    .line 391
    throw v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 405
    :catch_1
    move-exception v0

    .line 406
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 403
    :catch_2
    move-exception v0

    .line 404
    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 418
    :catch_1
    move-exception v0

    .line 419
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 416
    :catch_2
    move-exception v0

    .line 417
    throw v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0, p1}, Ljavax/tools/FileObject;->openReader(Z)Ljava/io/Reader;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 431
    :catch_1
    move-exception v0

    .line 432
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 429
    :catch_2
    move-exception v0

    .line 430
    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->openWriter()Ljava/io/Writer;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 457
    :catch_1
    move-exception v0

    .line 458
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 455
    :catch_2
    move-exception v0

    .line 456
    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 3

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->toUri()Ljava/net/URI;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 379
    :catch_1
    move-exception v0

    .line 380
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 377
    :catch_2
    move-exception v0

    .line 378
    throw v0
.end method
