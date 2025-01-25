.class public Lorg/xutils/http/loader/FileLoader;
.super Lorg/xutils/http/loader/Loader;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECK_SIZE:I = 0x200


# instance fields
.field private contentLength:J

.field private diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

.field private isAutoRename:Z

.field private isAutoResume:Z

.field private params:Lorg/xutils/http/RequestParams;

.field private responseFileName:Ljava/lang/String;

.field private saveFilePath:Ljava/lang/String;

.field private tempSaveFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method

.method private autoRename(Ljava/io/File;)Ljava/io/File;
    .registers 8

    .line 289
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 294
    :cond_42
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_63

    :goto_48
    move-object p1, v0

    .line 299
    :cond_49
    :goto_49
    return-object p1

    .line 295
    :cond_4a
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 296
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_49

    move-object p1, v0

    goto :goto_49

    :cond_63
    move-object v0, p1

    goto :goto_48
.end method

.method private static getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    .line 304
    if-nez p0, :cond_5

    move-object v0, v1

    .line 329
    :cond_4
    :goto_4
    return-object v0

    .line 305
    :cond_5
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 307
    const-string v0, "filename="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 308
    if-lez v0, :cond_5d

    .line 309
    add-int/lit8 v3, v0, 0x9

    .line 310
    const-string v0, ";"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 311
    if-gez v0, :cond_27

    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 314
    :cond_27
    if-le v0, v3, :cond_5d

    .line 316
    :try_start_29
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_53} :catch_55

    move-result-object v0

    goto :goto_4

    .line 323
    :catch_55
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    move-object v0, v1

    .line 329
    goto :goto_4
.end method

.method private initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 273
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 274
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 277
    if-eqz v0, :cond_2a

    .line 278
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    .line 285
    return-void

    .line 283
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create cache file error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isSupportRange(Lorg/xutils/http/request/UriRequest;)Z
    .registers 4

    const/4 v0, 0x0

    .line 333
    if-nez p0, :cond_4

    .line 339
    :cond_3
    :goto_3
    return v0

    .line 334
    :cond_4
    const-string v1, "Accept-Ranges"

    invoke-virtual {p0, v1}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_13

    .line 336
    const-string v0, "bytes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3

    .line 338
    :cond_13
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_3

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected load(Ljava/io/InputStream;)Ljava/io/File;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 70
    .line 74
    :try_start_3
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_143

    .line 78
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 79
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_c4

    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 86
    :cond_2c
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 87
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_df

    if-eqz v0, :cond_63

    cmp-long v0, v4, v2

    if-lez v0, :cond_63

    .line 90
    const-wide/16 v0, 0x200

    sub-long v8, v4, v0

    .line 91
    cmp-long v0, v8, v2

    if-lez v0, :cond_f6

    .line 92
    :try_start_40
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_101

    .line 93
    const/16 v0, 0x200

    :try_start_47
    invoke-static {v1, v8, v9, v0}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v0

    .line 94
    const-wide/16 v8, 0x0

    const/16 v10, 0x200

    invoke-static {p1, v8, v9, v10}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v8

    .line 95
    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 100
    iget-wide v8, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    const-wide/16 v10, 0x200

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_f1

    .line 102
    :try_start_60
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    :cond_63
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v0, :cond_104

    .line 115
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 121
    :goto_6d
    iget-wide v2, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    add-long/2addr v2, v4

    .line 122
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_df

    .line 123
    :try_start_75
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_15c

    .line 125
    :try_start_7a
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_87

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_10c

    :cond_87
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 131
    :cond_8b
    invoke-virtual {v9, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_123

    .line 134
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_114

    .line 139
    const/4 v6, 0x0

    invoke-virtual {v8, v0, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 140
    int-to-long v10, v1

    add-long/2addr v4, v10

    .line 141
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_8b

    .line 142
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 143
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 144
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ba
    .catchall {:try_start_7a .. :try_end_ba} :catchall_ba

    .line 158
    :catchall_ba
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    :goto_bd
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    throw v0

    .line 81
    :cond_c4
    :try_start_c4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not create the dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_df
    .catchall {:try_start_c4 .. :try_end_df} :catchall_df

    .line 158
    :catchall_df
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    goto :goto_bd

    .line 96
    :cond_e3
    :try_start_e3
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    invoke-static {v7}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "need retry"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f1
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_f1

    .line 107
    :catchall_f1
    move-exception v0

    :goto_f2
    :try_start_f2
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    throw v0
    :try_end_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_df

    .line 103
    :cond_f6
    :try_start_f6
    invoke-static {v7}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "need retry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_101
    .catchall {:try_start_f6 .. :try_end_101} :catchall_101

    .line 107
    :catchall_101
    move-exception v0

    move-object v1, v6

    goto :goto_f2

    .line 118
    :cond_104
    :try_start_104
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_109
    .catchall {:try_start_104 .. :try_end_109} :catchall_df

    move-wide v4, v2

    goto/16 :goto_6d

    .line 126
    :cond_10c
    :try_start_10c
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_114
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v1, "parent be deleted!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_123
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 150
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_161

    .line 151
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    .line 154
    :goto_12e
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_138

    .line 155
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_138
    .catchall {:try_start_10c .. :try_end_138} :catchall_ba

    .line 158
    :cond_138
    invoke-static {v9}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v8}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-direct {p0, v0}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 76
    :cond_143
    :try_start_143
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not create the file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15c
    .catchall {:try_start_143 .. :try_end_15c} :catchall_df

    .line 158
    :catchall_15c
    move-exception v0

    move-object v1, v6

    move-object v2, v9

    goto/16 :goto_bd

    :cond_161
    move-object v0, v7

    goto :goto_12e
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v10, 0x200

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 167
    .line 168
    :try_start_5
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 176
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 181
    :cond_27
    invoke-direct {p0, p1}, Lorg/xutils/http/loader/FileLoader;->initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V

    .line 186
    :goto_2a
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 191
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    :try_end_52
    .catch Lorg/xutils/ex/HttpException; {:try_start_5 .. :try_end_52} :catch_117
    .catchall {:try_start_5 .. :try_end_52} :catchall_157

    move-result-object v7

    .line 192
    if-eqz v7, :cond_18b

    :try_start_55
    invoke-virtual {v7}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 196
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 199
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v0, :cond_1cf

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 202
    cmp-long v1, v2, v10

    if-gtz v1, :cond_16a

    .line 203
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    move-wide v0, v8

    .line 210
    :goto_78
    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Range"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_a6

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 217
    :cond_a6
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 219
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    .line 220
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v0, :cond_b9

    .line 221
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 223
    :cond_b9
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v0, :cond_c3

    .line 224
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->isSupportRange(Lorg/xutils/http/request/UriRequest;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 227
    :cond_c3
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_d4

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 231
    :cond_d4
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;
    :try_end_d6
    .catch Lorg/xutils/ex/HttpException; {:try_start_55 .. :try_end_d6} :catch_176
    .catchall {:try_start_55 .. :try_end_d6} :catchall_157

    if-eqz v0, :cond_fd

    .line 233
    :try_start_d8
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->getCacheEntity()Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 235
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 237
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V
    :try_end_fd
    .catchall {:try_start_d8 .. :try_end_fd} :catchall_181

    .line 242
    :cond_fd
    :goto_fd
    :try_start_fd
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/http/loader/FileLoader;->load(Ljava/io/InputStream;)Ljava/io/File;
    :try_end_104
    .catch Lorg/xutils/ex/HttpException; {:try_start_fd .. :try_end_104} :catch_176
    .catchall {:try_start_fd .. :try_end_104} :catchall_157

    move-result-object v1

    move-object v0, v7

    .line 264
    :goto_106
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 265
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    return-object v1

    .line 177
    :cond_10f
    :try_start_10f
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_117
    .catch Lorg/xutils/ex/HttpException; {:try_start_10f .. :try_end_117} :catch_117
    .catchall {:try_start_10f .. :try_end_117} :catchall_157

    .line 243
    :catch_117
    move-exception v1

    move-object v0, v7

    .line 244
    :goto_119
    :try_start_119
    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_1ce

    .line 245
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v1, :cond_1a4

    .line 246
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v1

    .line 251
    :goto_129
    if-eqz v1, :cond_1b0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b0

    .line 252
    iget-boolean v2, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v2, :cond_13b

    .line 253
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 255
    :cond_13b
    invoke-direct {p0, v1}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;
    :try_end_13e
    .catchall {:try_start_119 .. :try_end_13e} :catchall_1ad

    move-result-object v1

    goto :goto_106

    .line 183
    :cond_140
    :try_start_140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;
    :try_end_155
    .catch Lorg/xutils/ex/HttpException; {:try_start_140 .. :try_end_155} :catch_117
    .catchall {:try_start_140 .. :try_end_155} :catchall_157

    goto/16 :goto_2a

    .line 264
    :catchall_157
    move-exception v0

    move-object v1, v0

    :goto_159
    invoke-static {v7}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 265
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    throw v1

    .line 187
    :cond_162
    :try_start_162
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16a
    .catch Lorg/xutils/ex/HttpException; {:try_start_162 .. :try_end_16a} :catch_117
    .catchall {:try_start_162 .. :try_end_16a} :catchall_157

    .line 206
    :cond_16a
    sub-long v0, v2, v10

    goto/16 :goto_78

    .line 214
    :cond_16e
    :try_start_16e
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :catch_176
    move-exception v1

    move-object v0, v7

    goto :goto_119

    .line 228
    :cond_179
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :catchall_181
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_fd

    .line 193
    :cond_18b
    new-instance v0, Lorg/xutils/ex/FileLockedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a4
    .catch Lorg/xutils/ex/HttpException; {:try_start_16e .. :try_end_1a4} :catch_176
    .catchall {:try_start_16e .. :try_end_1a4} :catchall_157

    .line 248
    :cond_1a4
    :try_start_1a4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_129

    .line 264
    :catchall_1ad
    move-exception v1

    move-object v7, v0

    goto :goto_159

    .line 257
    :cond_1b0
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache file not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_1ce
    throw v1
    :try_end_1cf
    .catchall {:try_start_1a4 .. :try_end_1cf} :catchall_1ad

    :cond_1cf
    move-wide v0, v8

    goto/16 :goto_78
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .registers 2

    .line 350
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .registers 3

    .line 62
    if-eqz p1, :cond_10

    .line 63
    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 64
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoResume()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 65
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoRename()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    .line 67
    :cond_10
    return-void
.end method
