.class public Landroidx/core/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {v1, p1, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1a

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_12
    :try_start_12
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_c

    move-result-object v1

    :try_start_4
    invoke-static {p0, v1}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    move-result v0

    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_c
    move-exception v0

    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_12
    move-exception v0

    goto :goto_e
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_47
    .catchall {:try_start_6 .. :try_end_c} :catchall_4a

    const/16 v0, 0x400

    :try_start_e
    new-array v0, v0, [B

    :goto_10
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3f

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_1c
    .catchall {:try_start_e .. :try_end_1b} :catchall_55

    goto :goto_10

    :catch_1c
    move-exception v0

    :goto_1d
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying resource contents to temp file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TypefaceCompatUtil"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_53

    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v0, v3

    :goto_3e
    return v0

    :cond_3f
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x1

    goto :goto_3e

    :catch_47
    move-exception v0

    move-object v1, v2

    goto :goto_1d

    :catchall_4a
    move-exception v0

    move-object v1, v2

    :goto_4c
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :catchall_53
    move-exception v0

    goto :goto_4c

    :catchall_55
    move-exception v0

    goto :goto_4c
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".font"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    move v2, v1

    :goto_30
    const/16 v1, 0x64

    if-ge v2, v1, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_48
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_50

    move-result v5

    if-eqz v5, :cond_51

    move-object v0, v1

    goto :goto_7

    :catch_50
    move-exception v1

    :cond_51
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_30
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_5
    const-string v1, "r"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_14

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_36

    :cond_12
    move-object v0, v6

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    :try_start_14
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_40

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_39

    move-result-object v0

    :try_start_2d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    if-eqz v7, :cond_13

    :try_start_32
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    :catch_36
    move-exception v0

    move-object v0, v6

    goto :goto_13

    :catchall_39
    move-exception v0

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v1

    :try_start_3c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_49

    :goto_3f
    :try_start_3f
    throw v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v1

    if-eqz v7, :cond_48

    :try_start_45
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4e

    :cond_48
    :goto_48
    :try_start_48
    throw v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_36

    :catchall_49
    move-exception v2

    :try_start_4a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_40

    goto :goto_3f

    :catchall_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_36

    goto :goto_48
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 8

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_20

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_19

    move-result-object v0

    :try_start_15
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_20

    :goto_18
    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    throw v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    :goto_1f
    :try_start_1f
    throw v1

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    goto :goto_18

    :catchall_23
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_20

    goto :goto_1f
.end method
