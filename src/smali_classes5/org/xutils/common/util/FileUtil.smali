.class public Lorg/xutils/common/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 93
    .line 94
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 116
    :cond_d
    :goto_d
    return v0

    .line 99
    :cond_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 106
    :cond_26
    :try_start_26
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_3b

    .line 107
    :try_start_2b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_4e

    .line 108
    :try_start_30
    invoke-static {v2, v1}, Lorg/xutils/common/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_51

    .line 109
    const/4 v0, 0x1

    .line 114
    :goto_34
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_d

    .line 110
    :catchall_3b
    move-exception v3

    move-object v1, v4

    move-object v2, v4

    .line 111
    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_34

    .line 114
    :catchall_46
    move-exception v0

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    throw v0

    .line 110
    :catchall_4e
    move-exception v3

    move-object v1, v4

    goto :goto_3e

    :catchall_51
    move-exception v3

    goto :goto_3e
.end method

.method public static deleteFileOrDir(Ljava/io/File;)Z
    .registers 5

    .line 122
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 123
    :cond_8
    const/4 v0, 0x1

    .line 134
    :goto_9
    return v0

    .line 125
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9

    .line 128
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_27

    .line 130
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v2, :cond_27

    aget-object v3, v1, v0

    .line 131
    invoke-static {v3}, Lorg/xutils/common/util/FileUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 134
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9
.end method

.method public static existsSdcard()Ljava/lang/Boolean;
    .registers 2

    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v1, 0x0

    .line 18
    .line 19
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->isDiskAvailable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 20
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 21
    if-eqz v2, :cond_34

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    :goto_16
    if-nez v0, :cond_25

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 31
    :cond_31
    :goto_31
    return-object v0

    :cond_32
    move-object v0, v1

    goto :goto_31

    :cond_34
    move-object v0, v1

    goto :goto_16
.end method

.method public static getDiskAvailableSize()J
    .registers 4

    .line 51
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->existsSdcard()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    .line 63
    :goto_c
    return-wide v0

    .line 52
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2a

    .line 57
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 58
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 63
    :goto_28
    mul-long/2addr v0, v2

    goto :goto_c

    .line 60
    :cond_2a
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 61
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    goto :goto_28
.end method

.method public static getFileOrDirSize(Ljava/io/File;)J
    .registers 9

    const-wide/16 v0, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 82
    :cond_8
    :goto_8
    return-wide v0

    .line 72
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_8

    .line 75
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 76
    if-eqz v3, :cond_8

    .line 77
    array-length v4, v3

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 78
    invoke-static {v5}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public static isDiskAvailable()Z
    .registers 4

    .line 41
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->getDiskAvailableSize()J

    move-result-wide v0

    .line 42
    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
