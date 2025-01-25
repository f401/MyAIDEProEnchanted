.class public final Lorg/xutils/common/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/xutils/common/util/MD5;->hexDigits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 31
    .line 33
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 37
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_c} :catch_46
    .catchall {:try_start_1 .. :try_end_c} :catchall_42

    .line 38
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_f} :catch_4e
    .catchall {:try_start_c .. :try_end_f} :catchall_51

    move-result-object v0

    .line 39
    :try_start_10
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 40
    invoke-virtual {v7, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 41
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_22} :catch_2e
    .catchall {:try_start_10 .. :try_end_22} :catchall_4a

    move-result-object v1

    .line 45
    invoke-static {v6}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    invoke-static {v1}, Lorg/xutils/common/util/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :catch_2e
    move-exception v1

    move-object v2, v6

    move-object v3, v0

    .line 43
    :goto_31
    :try_start_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    .line 45
    :catchall_37
    move-exception v4

    move-object v1, v2

    :goto_39
    move-object v0, v1

    move-object v2, v4

    :goto_3b
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    throw v2

    .line 45
    :catchall_42
    move-exception v1

    move-object v0, v3

    :goto_44
    move-object v2, v1

    goto :goto_3b

    .line 42
    :catch_46
    move-exception v0

    move-object v2, v3

    :goto_48
    move-object v1, v0

    goto :goto_31

    .line 45
    :catchall_4a
    move-exception v4

    move-object v3, v0

    move-object v1, v6

    goto :goto_39

    .line 42
    :catch_4e
    move-exception v0

    move-object v2, v6

    goto :goto_48

    .line 45
    :catchall_51
    move-exception v1

    move-object v0, v6

    goto :goto_44
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 53
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_15

    move-result-object v0

    .line 60
    invoke-static {v0}, Lorg/xutils/common/util/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :catch_15
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :catch_1c
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 7

    .line 21
    if-nez p0, :cond_5

    const-string v0, ""

    .line 27
    :goto_4
    return-object v0

    .line 22
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    array-length v2, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 24
    sget-object v4, Lorg/xutils/common/util/MD5;->hexDigits:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 27
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
