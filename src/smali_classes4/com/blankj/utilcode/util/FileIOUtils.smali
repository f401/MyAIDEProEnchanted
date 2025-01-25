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
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFile2BytesByChannel(Ljava/io/File;)[B
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-object v2

    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_48
    .catchall {:try_start_8 .. :try_end_12} :catchall_65

    move-result-object v1

    if-nez v1, :cond_2a

    :try_start_15
    const-string v0, "FileIOUtils"

    const-string v3, "fc is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_67
    .catchall {:try_start_15 .. :try_end_1c} :catchall_58

    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_25

    :cond_21
    :goto_21
    const/4 v0, 0x0

    new-array v2, v0, [B

    goto :goto_7

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_33
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gtz v3, :cond_33

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3c} :catch_67
    .catchall {:try_start_2a .. :try_end_3c} :catchall_58

    move-result-object v2

    if-eqz v1, :cond_7

    :try_start_3f
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_7

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_48
    move-exception v0

    move-object v1, v2

    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_58

    if-eqz v1, :cond_7

    :try_start_4f
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_7

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_58
    move-exception v0

    move-object v2, v1

    :goto_5a
    if-eqz v2, :cond_5f

    :try_start_5c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    :catchall_65
    move-exception v0

    goto :goto_5a

    :catch_67
    move-exception v0

    goto :goto_4a
.end method

.method public static readFile2BytesByChannel(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByChannel(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByMap(Ljava/io/File;)[B
    .registers 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-object v6

    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_5e
    .catchall {:try_start_9 .. :try_end_13} :catchall_74

    move-result-object v0

    if-nez v0, :cond_2a

    :try_start_16
    const-string v1, "FileIOUtils"

    const-string v2, "fc is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_4e
    .catchall {:try_start_16 .. :try_end_1d} :catchall_62

    if-eqz v0, :cond_22

    :try_start_1f
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_25

    :cond_22
    :goto_22
    new-array v6, v3, [B

    goto :goto_8

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :cond_2a
    :try_start_2a
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
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_42} :catch_4e
    .catchall {:try_start_2a .. :try_end_42} :catchall_62

    if-eqz v0, :cond_47

    :try_start_44
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_49

    :cond_47
    :goto_47
    move-object v6, v1

    goto :goto_8

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :catch_4e
    move-exception v1

    move-object v2, v0

    :goto_50
    :try_start_50
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_71

    if-eqz v2, :cond_8

    :try_start_55
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_8

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_5e
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    goto :goto_50

    :catchall_62
    move-exception v1

    move-object v2, v0

    :goto_64
    move-object v0, v1

    move-object v6, v2

    :goto_66
    if-eqz v6, :cond_6b

    :try_start_68
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    :cond_6b
    :goto_6b
    throw v0

    :catch_6c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    :catchall_71
    move-exception v0

    move-object v1, v0

    goto :goto_64

    :catchall_74
    move-exception v0

    goto :goto_66
.end method

.method public static readFile2BytesByMap(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByMap(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B
    .registers 13

    const/4 v10, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v2

    :cond_a
    :try_start_a
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget v4, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_16} :catch_41

    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_8d
    .catchall {:try_start_16 .. :try_end_1b} :catchall_8a

    :try_start_1b
    sget v4, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    new-array v4, v4, [B

    if-nez p1, :cond_46

    :goto_21
    const/4 v0, 0x0

    sget v5, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v10, :cond_74

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2e} :catch_2f
    .catchall {:try_start_1b .. :try_end_2e} :catchall_6a

    goto :goto_21

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_6a

    :try_start_33
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_90
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_36} :catch_41

    :goto_36
    if-eqz v1, :cond_9

    :try_start_38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_41

    goto :goto_9

    :catch_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_9

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9

    :cond_46
    :try_start_46
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-double v6, v5

    const-wide/16 v8, 0x0

    invoke-interface {p1, v8, v9}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    :goto_50
    const/4 v5, 0x0

    sget v8, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-virtual {v3, v4, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v10, :cond_74

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5d} :catch_2f
    .catchall {:try_start_46 .. :try_end_5d} :catchall_6a

    add-int/2addr v0, v5

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    :try_start_66
    invoke-interface {p1, v8, v9}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_2f
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_50

    :catchall_6a
    move-exception v0

    :goto_6b
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_6e} :catch_41

    :goto_6e
    if-eqz v1, :cond_73

    :try_start_70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_73} :catch_41

    :cond_73
    :goto_73
    :try_start_73
    throw v0
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_74} :catch_41

    :cond_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_2f
    .catchall {:try_start_74 .. :try_end_77} :catchall_6a

    move-result-object v0

    :try_start_78
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_7b} :catch_41

    :goto_7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_85
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_7e} :catch_41

    :goto_7e
    move-object v2, v0

    goto :goto_9

    :catch_80
    move-exception v3

    :try_start_81
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    :catch_85
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    :catchall_8a
    move-exception v0

    move-object v1, v2

    goto :goto_6b

    :catch_8d
    move-exception v0

    move-object v1, v2

    goto :goto_30

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    :catch_95
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    :catch_9a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_9e} :catch_41

    goto :goto_73
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;)[B
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/io/File;)Ljava/util/List;
    .registers 4
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
    .registers 4
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
    .registers 10
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

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-object v2

    :cond_8
    if-gt p1, p2, :cond_7

    :try_start_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_32

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_25} :catch_42
    .catchall {:try_start_a .. :try_end_25} :catchall_6e

    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_70
    .catchall {:try_start_25 .. :try_end_28} :catchall_61

    move-result-object v4

    if-eqz v4, :cond_2d

    if-le v0, p2, :cond_52

    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_5c

    :goto_30
    move-object v2, v3

    goto :goto_7

    :cond_32
    :try_start_32
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_42
    .catchall {:try_start_32 .. :try_end_41} :catchall_6e

    goto :goto_25

    :catch_42
    move-exception v0

    move-object v1, v2

    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_61

    if-eqz v1, :cond_7

    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_7

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_52
    if-gt p1, v0, :cond_59

    if-gt v0, p2, :cond_59

    :try_start_56
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_70
    .catchall {:try_start_56 .. :try_end_59} :catchall_61

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catchall_61
    move-exception v0

    move-object v2, v1

    :goto_63
    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    :catchall_6e
    move-exception v0

    goto :goto_63

    :catch_70
    move-exception v0

    goto :goto_44
.end method

.method public static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 4
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
    .registers 3
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
    .registers 5
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
    .registers 5
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
    .registers 3
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
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_7

    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_7

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_7
.end method

.method public static readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBufferSize(I)V
    .registers 1

    sput p0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    return-void
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_d

    const-string v1, "FileIOUtils"

    const-string v2, "bytes is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2f

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

    goto :goto_c

    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_6c
    .catchall {:try_start_2f .. :try_end_37} :catchall_7c

    move-result-object v2

    if-nez v2, :cond_4c

    :try_start_3a
    const-string v1, "FileIOUtils"

    const-string v3, "fc is null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_89
    .catchall {:try_start_3a .. :try_end_41} :catchall_8c

    if-eqz v2, :cond_c

    :try_start_43
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_c

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    if-eqz p3, :cond_60

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_60} :catch_89
    .catchall {:try_start_4c .. :try_end_60} :catchall_8c

    :cond_60
    if-eqz v2, :cond_65

    :try_start_62
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_67

    :cond_65
    :goto_65
    move v0, v1

    goto :goto_c

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    :catch_6c
    move-exception v3

    move-object v1, v2

    :goto_6e
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_8f

    if-eqz v1, :cond_c

    :try_start_73
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_c

    :catch_77
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_7c
    move-exception v0

    move-object v1, v2

    :goto_7e
    if-eqz v1, :cond_83

    :try_start_80
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    :cond_83
    :goto_83
    throw v0

    :catch_84
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    :catch_89
    move-exception v3

    move-object v1, v2

    goto :goto_6e

    :catchall_8c
    move-exception v0

    move-object v1, v2

    goto :goto_7e

    :catchall_8f
    move-exception v0

    goto :goto_7e
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZ)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZZ)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_a
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

    :goto_26
    return v0

    :cond_27
    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_65
    .catchall {:try_start_27 .. :try_end_2f} :catchall_76

    move-result-object v0

    if-nez v0, :cond_45

    :try_start_32
    const-string v1, "FileIOUtils"

    const-string v2, "fc is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_83
    .catchall {:try_start_32 .. :try_end_39} :catchall_86

    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40

    :cond_3e
    :goto_3e
    move v0, v6

    goto :goto_26

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    :cond_45
    :try_start_45
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_59

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_59} :catch_83
    .catchall {:try_start_45 .. :try_end_59} :catchall_86

    :cond_59
    if-eqz v0, :cond_5e

    :try_start_5b
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_60

    :cond_5e
    :goto_5e
    const/4 v0, 0x1

    goto :goto_26

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    :catch_65
    move-exception v0

    move-object v1, v0

    :goto_67
    :try_start_67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_76

    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_71

    :cond_6f
    :goto_6f
    move v0, v6

    goto :goto_26

    :catch_71
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    :catchall_76
    move-exception v0

    move-object v1, v0

    :goto_78
    if-eqz v2, :cond_7d

    :try_start_7a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    throw v1

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catch_83
    move-exception v1

    move-object v2, v0

    goto :goto_67

    :catchall_86
    move-exception v1

    move-object v2, v0

    goto :goto_78
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[B)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    goto :goto_3
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[B)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZ)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromBytesByStream(Ljava/io/File;[BZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 13

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_b
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

    move v0, v3

    :goto_27
    return v0

    :cond_28
    :try_start_28
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget v4, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_98
    .catchall {:try_start_28 .. :try_end_34} :catchall_95

    if-nez p3, :cond_53

    :try_start_36
    sget v0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    new-array v0, v0, [B

    :goto_3a
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v8, :cond_83

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_44} :catch_45
    .catchall {:try_start_36 .. :try_end_44} :catchall_79

    goto :goto_3a

    :catch_45
    move-exception v0

    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_af

    :try_start_49
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_9b

    :goto_4c
    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_a0

    :cond_51
    :goto_51
    move v0, v3

    goto :goto_27

    :cond_53
    :try_start_53
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-double v4, v0

    const-wide/16 v6, 0x0

    invoke-interface {p3, v6, v7}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V

    sget v0, Lcom/blankj/utilcode/util/FileIOUtils;->sBufferSize:I

    new-array v2, v0, [B

    move v0, v3

    :goto_62
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v8, :cond_83

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_6c} :catch_45
    .catchall {:try_start_53 .. :try_end_6c} :catchall_79

    add-int/2addr v0, v6

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    :try_start_75
    invoke-interface {p3, v6, v7}, Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;->onProgressUpdate(D)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_45
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_62

    :catchall_79
    move-exception v0

    :goto_7a
    :try_start_7a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_a5

    :goto_7d
    if-eqz v1, :cond_82

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_aa

    :cond_82
    :goto_82
    throw v0

    :cond_83
    :try_start_83
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_8b

    :goto_86
    :try_start_86
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_90

    :goto_89
    const/4 v0, 0x1

    goto :goto_27

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    :catchall_95
    move-exception v0

    :goto_96
    move-object v1, v2

    goto :goto_7a

    :catch_98
    move-exception v0

    move-object v1, v2

    goto :goto_46

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :catch_a0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catch_a5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catch_aa
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    :catchall_af
    move-exception v0

    move-object v2, v1

    goto :goto_96
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Lcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;ZLcom/blankj/utilcode/util/FileIOUtils$OnProgressUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v3

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2b

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

    move v0, v3

    goto :goto_7

    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_4a
    .catchall {:try_start_2b .. :try_end_35} :catchall_42

    :try_start_35
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_60
    .catchall {:try_start_35 .. :try_end_38} :catchall_62

    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3d

    :goto_3b
    const/4 v0, 0x1

    goto :goto_7

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catchall_42
    move-exception v0

    :goto_43
    move-object v1, v2

    :goto_44
    if-eqz v1, :cond_49

    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_5b

    :cond_49
    :goto_49
    throw v0

    :catch_4a
    move-exception v0

    move-object v1, v2

    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_64

    if-eqz v1, :cond_54

    :try_start_51
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_56

    :cond_54
    :goto_54
    move v0, v3

    goto :goto_7

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_60
    move-exception v0

    goto :goto_4c

    :catchall_62
    move-exception v0

    goto :goto_44

    :catchall_64
    move-exception v0

    move-object v2, v1

    goto :goto_43
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
