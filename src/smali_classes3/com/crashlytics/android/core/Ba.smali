.class final Lcom/crashlytics/android/core/Ba;
.super Ljava/lang/Object;


# direct methods
.method static DW(Ljava/io/File;)[B
    .registers 2

    const-string v0, ".dmp"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/crashlytics/android/core/Ba;->Hw(Ljava/io/File;)[B

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method private static DW(Ljava/io/File;Landroid/content/Context;)[B
    .registers 3

    invoke-static {p0}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_14

    array-length v0, p0

    if-nez v0, :cond_a

    goto :goto_14

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, v0}, Lcom/crashlytics/android/core/Ba;->j6(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method static FH(Ljava/io/File;)[B
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    :try_start_6
    invoke-static {v1}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_11
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_16

    :catch_11
    move-exception p0

    goto :goto_1c

    :catch_13
    move-exception p0

    goto :goto_22

    :catchall_15
    move-exception p0

    :goto_16
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw p0

    :catch_1a
    move-exception p0

    move-object v1, v0

    :goto_1c
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object v0

    :catch_20
    move-exception p0

    move-object v1, v0

    :goto_22
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private static FH(Ljava/io/File;Landroid/content/Context;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_27

    :try_start_12
    new-instance p0, Lcom/crashlytics/android/core/c;

    new-instance v1, Lcom/crashlytics/android/core/Pa;

    invoke-direct {v1}, Lcom/crashlytics/android/core/Pa;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/crashlytics/android/core/c;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/c$a;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/c;->j6(Ljava/io/BufferedReader;)[B

    move-result-object p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object p0

    :catchall_24
    move-exception p0

    move-object v1, v0

    goto :goto_28

    :catchall_27
    move-exception p0

    :goto_28
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static Hw(Ljava/io/File;)[B
    .registers 1

    invoke-static {p0}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v2

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Lcom/crashlytics/android/core/c;

    new-instance v1, Lcom/crashlytics/android/core/Pa;

    invoke-direct {v1}, Lcom/crashlytics/android/core/Pa;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/c;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/c$a;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/c;->j6(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/io/File;)[B
    .registers 2

    const-string v0, ".device_info"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-static {p0}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method static j6(Ljava/io/File;Landroid/content/Context;)[B
    .registers 3

    const-string v0, ".maps"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, ".binary_libs"

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-static {p0, p1}, Lcom/crashlytics/android/core/Ba;->DW(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6(Ljava/io/InputStream;)[B
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
