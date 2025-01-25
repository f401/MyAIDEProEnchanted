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
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/net/URLConnection;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_b

    .line 421
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_10

    .line 422
    monitor-exit p0

    return-void

    .line 421
    :catchall_b
    move-exception v0

    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 422
    throw v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_10

    .line 418
    :catchall_10
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
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5f

    move-result-object v0

    if-nez v0, :cond_c

    .line 229
    monitor-exit p0

    move v0, v1

    .line 248
    :goto_b
    return v0

    .line 232
    :cond_c
    const/4 v0, 0x3

    :try_start_d
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect(I)V

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_28

    .line 234
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_62
    .catchall {:try_start_d .. :try_end_1b} :catchall_58

    move-result v0

    .line 236
    const/16 v3, 0x190

    if-ge v0, v3, :cond_67

    move v0, v2

    .line 250
    :goto_21
    if-eqz p1, :cond_26

    .line 251
    :try_start_23
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_5f

    .line 236
    :cond_26
    monitor-exit p0

    goto :goto_b

    .line 237
    :cond_28
    :try_start_28
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ftp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_62
    .catchall {:try_start_28 .. :try_end_33} :catchall_58

    move-result v0

    if-eqz v0, :cond_40

    .line 239
    :try_start_36
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_48

    move-result-object v0

    .line 243
    :try_start_3c
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4e
    .catchall {:try_start_3c .. :try_end_3f} :catchall_64

    move p1, v2

    .line 246
    :cond_40
    if-eqz p1, :cond_45

    .line 251
    :try_start_42
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5f

    .line 246
    :cond_45
    monitor-exit p0

    move v0, v2

    goto :goto_b

    .line 243
    :catchall_48
    move-exception v0

    const/4 v3, 0x0

    :try_start_4a
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 244
    throw v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_64

    .line 247
    :catch_4e
    move-exception v0

    move p1, v2

    .line 248
    :goto_50
    if-eqz p1, :cond_55

    .line 251
    :try_start_52
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5f

    .line 248
    :cond_55
    monitor-exit p0

    move v0, v1

    goto :goto_b

    .line 250
    :catchall_58
    move-exception v0

    :goto_59
    if-eqz p1, :cond_5e

    .line 251
    :try_start_5b
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V

    .line 253
    :cond_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .line 227
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    :catch_62
    move-exception v0

    goto :goto_50

    .line 250
    :catchall_64
    move-exception v0

    move p1, v2

    goto :goto_59

    :cond_67
    move v0, v1

    goto :goto_21
.end method

.method private static newURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    .line 427
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 428
    :catch_6
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

    if-eqz v0, :cond_9

    .line 440
    invoke-interface {p1, v0}, Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;->useConnection(Ljava/net/URLConnection;)J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1c

    move-result-wide p2

    .line 450
    :goto_8
    return-wide p2

    .line 443
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect()V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;->useConnection(Ljava/net/URLConnection;)J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_17

    move-result-wide v0

    .line 446
    :try_start_12
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V

    move-wide p2, v0

    .line 444
    goto :goto_8

    .line 446
    :catchall_17
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->close()V

    .line 447
    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_1c

    .line 449
    :catch_1c
    move-exception v0

    goto :goto_8
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_25

    .line 392
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    if-nez v1, :cond_14

    .line 394
    :try_start_b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 395
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_16
    .catchall {:try_start_b .. :try_end_14} :catchall_22

    .line 402
    :cond_14
    monitor-exit p0

    return-void

    .line 396
    :catch_16
    move-exception v0

    .line 397
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->log(Ljava/lang/String;I)V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 399
    throw v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_22

    .line 387
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 390
    :cond_25
    :try_start_25
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "URL not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_22
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 304
    if-ne p0, p1, :cond_7

    .line 305
    monitor-exit p0

    .line 314
    :goto_6
    return v0

    .line 307
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_45

    move-result v0

    monitor-exit p0

    goto :goto_6

    .line 310
    :cond_17
    if-eqz p1, :cond_23

    :try_start_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_45

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 311
    :cond_23
    monitor-exit p0

    move v0, v1

    goto :goto_6

    .line 313
    :cond_26
    :try_start_26
    check-cast p1, Lorg/apache/tools/ant/types/resources/URLResource;

    .line 314
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_38

    .line 315
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_45

    move-result-object v2

    if-nez v2, :cond_36

    .line 314
    :goto_34
    monitor-exit p0

    goto :goto_6

    :cond_36
    move v0, v1

    .line 315
    goto :goto_34

    .line 316
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_45

    move-result v0

    goto :goto_34

    .line 303
    :catchall_45
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 340
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getInputStream()Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    move-result-object v0

    monitor-exit p0

    .line 344
    :goto_10
    return-object v0

    .line 342
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    .line 344
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    move-result-object v0

    .line 346
    const/4 v1, 0x0

    :try_start_1b
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_24

    .line 344
    monitor-exit p0

    goto :goto_10

    .line 346
    :catchall_1f
    move-exception v0

    const/4 v1, 0x0

    :try_start_21
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 347
    throw v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_24

    .line 338
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastModified()J
    .registers 5

    const-wide/16 v0, 0x0

    monitor-enter p0

    .line 264
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getLastModified()J
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_29

    move-result-wide v0

    monitor-exit p0

    .line 270
    :goto_12
    return-wide v0

    .line 267
    :cond_13
    const/4 v2, 0x0

    :try_start_14
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists(Z)Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_29

    move-result v2

    if-nez v2, :cond_1c

    .line 268
    monitor-exit p0

    goto :goto_12

    .line 270
    :cond_1c
    :try_start_1c
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/URLResource;)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/types/resources/URLResource;->withConnection(Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;J)J
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_29

    move-result-wide v0

    monitor-exit p0

    goto :goto_12

    .line 263
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 183
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getName()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_27

    move-result-object v0

    monitor-exit p0

    .line 186
    :goto_10
    return-object v0

    .line 185
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_27

    move-result v1

    if-eqz v1, :cond_21

    :goto_1f
    monitor-exit p0

    goto :goto_10

    :cond_21
    const/4 v1, 0x1

    :try_start_22
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    move-result-object v0

    goto :goto_1f

    .line 181
    :catchall_27
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 361
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getOutputStream()Ljava/io/OutputStream;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    move-result-object v0

    monitor-exit p0

    .line 365
    :goto_10
    return-object v0

    .line 363
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->connect()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    .line 365
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    move-result-object v0

    .line 367
    const/4 v1, 0x0

    :try_start_1b
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_24

    .line 365
    monitor-exit p0

    goto :goto_10

    .line 367
    :catchall_1f
    move-exception v0

    const/4 v1, 0x0

    :try_start_21
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->conn:Ljava/net/URLConnection;

    .line 368
    throw v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_24

    .line 359
    :catchall_24
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 290
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getSize()J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    move-result-wide v0

    monitor-exit p0

    .line 295
    :goto_10
    return-wide v0

    .line 292
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists(Z)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_29

    move-result v0

    if-nez v0, :cond_1c

    .line 293
    monitor-exit p0

    const-wide/16 v0, 0x0

    goto :goto_10

    .line 295
    :cond_1c
    :try_start_1c
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/URLResource$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/resources/URLResource;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/types/resources/URLResource;->withConnection(Lorg/apache/tools/ant/types/resources/URLResource$ConnectionUser;J)J
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_29

    move-result-wide v0

    monitor-exit p0

    goto :goto_10

    .line 288
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 4

    monitor-enter p0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 146
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_33

    move-result-object v0

    monitor-exit p0

    .line 161
    :goto_10
    return-object v0

    .line 148
    :cond_11
    :try_start_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_28

    .line 149
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;

    if-eqz v0, :cond_28

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_33

    if-eqz v0, :cond_36

    .line 155
    :try_start_1d
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;
    :try_end_28
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_28} :catch_2c
    .catchall {:try_start_1d .. :try_end_28} :catchall_33

    .line 161
    :cond_28
    :try_start_28
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_33

    monitor-exit p0

    goto :goto_10

    .line 156
    :catch_2c
    move-exception v0

    .line 157
    :try_start_2d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_33

    .line 144
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_36
    :try_start_36
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "must provide relativePath attribute when using baseURL."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33
.end method

.method public hashCode()I
    .registers 3

    monitor-enter p0

    .line 324
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 325
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->hashCode()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_27

    move-result v0

    monitor-exit p0

    .line 327
    :goto_10
    return v0

    :cond_11
    :try_start_11
    sget v1, Lorg/apache/tools/ant/types/resources/URLResource;->MAGIC:I

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1e

    sget v0, Lorg/apache/tools/ant/types/resources/URLResource;->NULL_URL:I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_27

    :goto_1b
    monitor-exit p0

    mul-int/2addr v0, v1

    goto :goto_10

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_1b

    .line 323
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDirectory()Z
    .registers 3

    monitor-enter p0

    .line 278
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isDirectory()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result v0

    .line 278
    :goto_f
    monitor-exit p0

    return v0

    .line 280
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    move-result v0

    goto :goto_f

    .line 277
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExists()Z
    .registers 2

    monitor-enter p0

    .line 203
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    move-result v0

    monitor-exit p0

    .line 206
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->isExists(Z)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_18

    move-result v0

    monitor-exit p0

    goto :goto_10

    .line 202
    :catchall_18
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
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->checkAttributesAllowed()V

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_c

    .line 121
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 122
    monitor-exit p0

    return-void

    .line 119
    :cond_c
    :try_start_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t define URL and baseURL attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 116
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 4

    monitor-enter p0

    .line 104
    :try_start_1
    sget-object v0, Lorg/apache/tools/ant/types/resources/URLResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/URLResource;->setURL(Ljava/net/URL;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_a} :catch_c
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catch_c
    move-exception v0

    .line 106
    :try_start_d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 103
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    monitor-enter p0

    .line 170
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->baseURL:Ljava/net/URL;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 173
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 174
    monitor-exit p0

    return-void

    .line 171
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_17

    .line 169
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRelativePath(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->checkAttributesAllowed()V

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;

    if-nez v0, :cond_c

    .line 136
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->relPath:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 137
    monitor-exit p0

    return-void

    .line 133
    :cond_c
    :try_start_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t define URL and relativePath attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 130
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setURL(Ljava/net/URL;)V
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->checkAttributesAllowed()V

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/URLResource;->url:Ljava/net/URL;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 96
    monitor-exit p0

    return-void

    .line 93
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 194
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 195
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getRef()Lorg/apache/tools/ant/types/resources/URLResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/URLResource;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    move-result-object v0

    .line 194
    :goto_f
    monitor-exit p0

    return-object v0

    .line 195
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    move-result-object v0

    goto :goto_f

    .line 193
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
