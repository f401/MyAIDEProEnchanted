.class public Lorg/apache/commons/io/output/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;


# instance fields
.field private closed:Z

.field private currentOutputStream:Ljava/io/OutputStream;

.field private final directory:Ljava/io/File;

.field private memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

.field private outputFile:Ljava/io/File;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/io/File;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial buffer size must be atleast 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temporary file prefix is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial buffer size must be atleast 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    iput-object p2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    iput-object p3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0, p6}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temporary file prefix is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isThresholdExceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected thresholdReached()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream not closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1
.end method
