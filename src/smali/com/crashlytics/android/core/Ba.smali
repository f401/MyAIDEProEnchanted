.class final Lcom/crashlytics/android/core/Ba;
.super Ljava/lang/Object;


# direct methods
.method static DW(Ljava/io/File;)[B
    .registers 2

    const-string v0, ".dmp"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/core/Ba;->Hw(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static DW(Ljava/io/File;Landroid/content/Context;)[B
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, v1}, Lcom/crashlytics/android/core/Ba;->j6(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method static FH(Ljava/io/File;)[B
    .registers 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    move-object v2, v1

    :goto_1
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method private static FH(Ljava/io/File;Landroid/content/Context;)[B
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lcom/crashlytics/android/core/c;

    new-instance v2, Lcom/crashlytics/android/core/Pa;

    invoke-direct {v2}, Lcom/crashlytics/android/core/Pa;-><init>()V

    invoke-direct {v1, p1, v2}, Lcom/crashlytics/android/core/c;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/c$a;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/c;->j6(Ljava/io/BufferedReader;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    :goto_1
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method private static Hw(Ljava/io/File;)[B
    .registers 2

    invoke-static {p0}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Lcom/crashlytics/android/core/c;

    new-instance v1, Lcom/crashlytics/android/core/Pa;

    invoke-direct {v1}, Lcom/crashlytics/android/core/Pa;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/c;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/c$a;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/c;->j6(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static j6(Ljava/io/File;)[B
    .registers 2

    const-string v0, ".device_info"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_0
.end method

.method static j6(Ljava/io/File;Landroid/content/Context;)[B
    .registers 3

    const-string v0, ".maps"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".binary_libs"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/Ba;->DW(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Ljava/io/InputStream;)[B
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
