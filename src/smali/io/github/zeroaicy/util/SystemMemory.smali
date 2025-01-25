.class public Lio/github/zeroaicy/util/SystemMemory;
.super Ljava/lang/Object;
.source "SystemMemory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailMemory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 15
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 16
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 19
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalMemory(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 31
    nop

    .line 36
    const-wide/16 v0, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 38
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 40
    array-length v5, v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_55

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v5, :cond_38

    aget-object v7, v4, v6

    .line 41
    :try_start_21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lio/github/zeroaicy/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 44
    :cond_38
    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 46
    new-instance v4, Ljava/lang/Long;

    int-to-long v5, v2

    const-wide/16 v7, 0x400

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_54} :catch_55

    goto :goto_56

    .line 50
    :catch_55
    move-exception v2

    :goto_56
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
