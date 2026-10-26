.class public abstract Lsun/misc/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private cis:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cachedInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lsun/misc/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    .line 79
    :cond_0
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 161
    instance-of v1, v0, Lsun/nio/ByteBuffered;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Lsun/nio/ByteBuffered;

    invoke-interface {v0}, Lsun/nio/ByteBuffered;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v1, 0x7fffffff

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 96
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 100
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lsun/misc/Resource;->getContentLength()I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 101
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move v0, v1

    :cond_0
    move v7, v6

    .line 112
    :goto_1
    if-ge v7, v0, :cond_8

    .line 114
    :try_start_2
    array-length v5, v4

    if-lt v7, v5, :cond_3

    .line 115
    sub-int v5, v0, v7

    array-length v9, v4

    add-int/lit16 v9, v9, 0x400

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 116
    array-length v9, v4

    add-int v10, v7, v5

    if-ge v9, v10, :cond_1

    .line 117
    add-int v9, v7, v5

    invoke-static {v4, v9}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOf([BI)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 124
    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v8, v4, v7, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    .line 129
    :goto_3
    if-gez v5, :cond_6

    .line 130
    if-ne v0, v1, :cond_4

    .line 133
    :try_start_4
    array-length v0, v4

    if-eq v0, v7, :cond_7

    .line 134
    invoke-static {v4, v7}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOf([BI)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    move v0, v2

    .line 143
    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 146
    :goto_5
    if-eqz v0, :cond_2

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 152
    :cond_2
    return-object v1

    .line 120
    :cond_3
    :try_start_6
    array-length v5, v4

    sub-int/2addr v5, v7

    goto :goto_2

    .line 125
    :catch_0
    move-exception v5

    .line 126
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v2, v3

    move v5, v6

    .line 127
    goto :goto_3

    .line 131
    :cond_4
    :try_start_7
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Detect premature EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    move v1, v2

    .line 143
    :goto_6
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move v3, v1

    .line 146
    :goto_7
    if-eqz v3, :cond_5

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 151
    :cond_5
    throw v0

    .line 139
    :cond_6
    add-int/2addr v5, v7

    move v7, v5

    .line 140
    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move v2, v3

    .line 105
    goto :goto_0

    .line 144
    :catch_2
    move-exception v0

    move v0, v3

    goto :goto_5

    .line 146
    :catch_3
    move-exception v2

    move v3, v1

    goto :goto_7

    .line 142
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_6

    :cond_7
    move-object v1, v4

    move v0, v2

    goto :goto_4

    :cond_8
    move-object v1, v4

    move v0, v2

    goto :goto_4

    .line 146
    :catch_4
    move-exception v2

    goto :goto_5

    .line 144
    :catch_5
    move-exception v1

    goto :goto_7
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 1

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodeSourceURL()Ljava/net/URL;
.end method

.method public abstract getContentLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/net/URL;
.end method
