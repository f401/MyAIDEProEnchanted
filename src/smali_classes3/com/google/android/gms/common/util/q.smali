.class public Lcom/google/android/gms/common/util/q;
.super Ljava/lang/Object;


# static fields
.field private static DW:I

.field private static j6:Ljava/lang/String;


# direct methods
.method private static j6(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static j6()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/util/q;->j6:Ljava/lang/String;

    if-nez v0, :cond_16

    sget v0, Lcom/google/android/gms/common/util/q;->DW:I

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/q;->DW:I

    :cond_e
    sget v0, Lcom/google/android/gms/common/util/q;->DW:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/q;->j6(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/q;->j6:Ljava/lang/String;

    :cond_16
    sget-object v0, Lcom/google/android/gms/common/util/q;->j6:Ljava/lang/String;

    return-object v0
.end method

.method private static j6(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-gtz p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/q;->j6(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_20} :catch_35
    .catchall {:try_start_4 .. :try_end_20} :catchall_30

    :try_start_20
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_2e
    .catchall {:try_start_20 .. :try_end_28} :catchall_29

    goto :goto_37

    :catchall_29
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_31

    :catch_2e
    move-exception v1

    goto :goto_37

    :catchall_30
    move-exception p0

    :goto_31
    invoke-static {v0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw p0

    :catch_35
    move-exception p0

    move-object p0, v0

    :goto_37
    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    return-object v0
.end method
