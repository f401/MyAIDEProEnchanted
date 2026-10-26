.class public final Lcom/blankj/utilcode/util/FileIOUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static sBufferSize:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFile2BytesByChannel(Ljava/io/File;)[B
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_1
    const-string v1, "FileIOUtils"

    const-string v3, "fc is null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_4
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_4
    throw v1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static readFile2BytesByChannel(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByChannel(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByMap(Ljava/io/File;)[B
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_1
    const-string v1, "FileIOUtils"

    const-string v2, "fc is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    new-array v0, v3, [B

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v7, v2

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    int-to-long v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v2

    new-array v1, v7, [B

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v7}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v6

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v6

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v0

    :goto_4
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v6, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_5
    move-object v0, v6

    goto :goto_0
.end method

.method public static readFile2BytesByMap(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByMap(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B
    .locals 11

    const/4 v10, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget v4, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget v4, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    new-array v4, v4, [B

    if-nez p1, :cond_1

    :goto_1
    const/4 v0, 0x0

    sget v5, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v10, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-double v6, v5

    const-wide/16 v8, 0x0

    invoke-interface {p1, v8, v9}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    :goto_4
    const/4 v5, 0x0

    sget v8, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-virtual {v3, v4, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v10, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/2addr v0, v5

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    :try_start_8
    invoke-interface {p1, v8, v9}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_6
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    :cond_2
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    :cond_3
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2

    :goto_8
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_7

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/io/File;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-gt p1, p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v3

    const/4 v2, 0x1

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_2

    if-le v2, p2, :cond_4

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v3, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v0

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-gt p1, v2, :cond_5

    if-gt v2, p2, :cond_5

    :try_start_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_4
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_5
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBufferSize(I)V
    .locals 0

    sput p0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    return-void
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "FileIOUtils"

    const-string v2, "bytes is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FileIOUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_1
    const-string v1, "FileIOUtils"

    const-string v3, "fc is null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    if-eqz p3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZ)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZZ)Z
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create file <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "> failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FileIOUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_1
    const-string v1, "FileIOUtils"

    const-string v2, "fc is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_3
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_4

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    move v0, v6

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_6
    throw v1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_5
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[B)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[B)Z
    .locals 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZ)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FileIOUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget v4, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p3, :cond_3

    :try_start_1
    sget v1, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v8, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-double v4, v1

    const-wide/16 v6, 0x0

    invoke-interface {p3, v6, v7}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    sget v1, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    new-array v2, v1, [B

    move v1, v0

    :goto_4
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v8, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/2addr v1, v6

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    :try_start_6
    invoke-interface {p3, v6, v7}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v0

    :goto_5
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_7
    throw v2

    :cond_5
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_9
    const/4 v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v2

    move-object v0, v1

    :goto_a
    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_a

    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FileIOUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v0, v1

    :goto_2
    move-object v1, v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    throw v1

    :catch_1
    move-exception v2

    move-object v3, v2

    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v0, v2

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
