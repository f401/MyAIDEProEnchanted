.class public Lorg/apache/tools/ant/types/resources/URLResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "URLResource.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/URLProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final NULL_URL:I


# instance fields
.field private baseURL:Ljava/net/URL;

.field private conn:Ljava/net/URLConnection;

.field private relPath:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/URLResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 42
    const-string v0, "null URL"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/URLResource;->NULL_URL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->setFile(Ljava/io/File;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 86
    invoke-static {p1}, Lorg/apache/tools/ant/types/resources/URLResource;->newURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/net/URL;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->setURL(Ljava/net/URL;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/URLProvider;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 69
    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->setURL(Ljava/net/URL;)V

    .line 70
    return-void
.end method

.method private close()V
    .registers 3

    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/net/URLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    monitor-exit p0

    return-void

    .line 421
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 422
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 418
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isExists(Z)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    monitor-exit p0

    move v0, v1

    .line 248
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect(I)V

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_2

    .line 234
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 236
    const/16 v3, 0x190

    if-ge v0, v3, :cond_7

    move v0, v2

    .line 250
    :goto_1
    if-eqz p1, :cond_1

    .line 251
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 237
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ftp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 243
    :try_start_5
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move p1, v2

    .line 246
    :cond_3
    if-eqz p1, :cond_4

    .line 251
    :try_start_6
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 246
    :cond_4
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 244
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 247
    :catch_0
    move-exception v0

    move p1, v2

    .line 248
    :goto_2
    if-eqz p1, :cond_5

    .line 251
    :try_start_8
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 248
    :cond_5
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 250
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p1, :cond_6

    .line 251
    :try_start_9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V

    .line 253
    :cond_6
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 227
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    :catch_1
    move-exception v0

    goto :goto_2

    .line 250
    :catchall_3
    move-exception v0

    move p1, v2

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private static newURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    .line 427
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private withConnection(Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;J)J
    .registers 6

    .line 439
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    .line 440
    invoke-interface {p1, v0}, Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;->useConnection(Ljava/net/URLConnection;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 450
    :goto_0
    return-wide p2

    .line 443
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect()V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;->useConnection(Ljava/net/URLConnection;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 446
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V

    move-wide p2, v0

    .line 444
    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V

    .line 447
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect(I)V

    .line 377
    return-void
.end method

.method protected connect(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 394
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 395
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->log(Ljava/lang/String;I)V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 399
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 390
    :cond_1
    :try_start_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "URL not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 304
    if-ne p0, p1, :cond_0

    .line 305
    monitor-exit p0

    .line 314
    :goto_0
    return v0

    .line 307
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 310
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 311
    :cond_2
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 313
    :cond_3
    :try_start_2
    check-cast p1, Lorg/apache/tools/ant/types/resources/URLResource;

    .line 314
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_5

    .line 315
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_4

    .line 314
    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 315
    goto :goto_1

    .line 316
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    monitor-exit p0

    .line 344
    :goto_0
    return-object v0

    .line 342
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 346
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 344
    monitor-exit p0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 347
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastModified()J
    .registers 5

    const-wide/16 v0, 0x0

    monitor-enter p0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getLastModified()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    .line 270
    :goto_0
    return-wide v0

    .line 267
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 268
    monitor-exit p0

    goto :goto_0

    .line 270
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/URLResource;)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/types/resources/URLResource;->withConnection(Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    monitor-exit p0

    .line 365
    :goto_0
    return-object v0

    .line 363
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 367
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 365
    monitor-exit p0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 368
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/URLResource;
    .registers 2

    .line 406
    const-class v0, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLResource;

    return-object v0
.end method

.method public getSize()J
    .registers 5

    monitor-enter p0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    .line 295
    :goto_0
    return-wide v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 293
    monitor-exit p0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 295
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/resources/URLResource;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/types/resources/URLResource;->withConnection(Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 4

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 161
    :goto_0
    return-object v0

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 155
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_2
    :try_start_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "must provide relativePath attribute when using baseURL."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public hashCode()I
    .registers 3

    monitor-enter p0

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 327
    :goto_0
    return v0

    :cond_0
    :try_start_1
    sget v1, Lorg/apache/tools/ant/types/resources/URLResource;->MAGIC:I

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Lorg/apache/tools/ant/types/resources/URLResource;->NULL_URL:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDirectory()Z
    .registers 3

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isDirectory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 278
    :goto_0
    monitor-exit p0

    return v0

    .line 280
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExists()Z
    .registers 2

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$getLastModified$0$URLResource(Ljava/net/URLConnection;)J
    .registers 4

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$getSize$1$URLResource(Ljava/net/URLConnection;)J
    .registers 4

    .line 295
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public setBaseURL(Ljava/net/URL;)V
    .registers 4

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->checkAttributesAllowed()V

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 121
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t define URL and baseURL attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 4

    monitor-enter p0

    .line 104
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/types/resources/URLResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->setURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRelativePath(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->checkAttributesAllowed()V

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t define URL and relativePath attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setURL(Ljava/net/URL;)V
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->checkAttributesAllowed()V

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 194
    :goto_0
    monitor-exit p0

    return-object v0

    .line 195
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
