.class Lcom/jcraft/jsch/Util;
.super Ljava/lang/Object;


# static fields
.field private static DW:[Ljava/lang/String;

.field static final FH:[B

.field private static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->j6:[B

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/Util;->DW:[Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->FH:[B

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DW(B)B
    .registers 5

    const/16 v0, 0x3d

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v2, Lcom/jcraft/jsch/Util;->j6:[B

    array-length v3, v2

    if-lt v0, v3, :cond_d

    return v1

    :cond_d
    aget-byte v2, v2, v0

    if-ne p0, v2, :cond_13

    int-to-byte p0, v0

    return p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static DW([B)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-lt v1, v2, :cond_9

    return-void

    :cond_9
    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private static DW([BI[BI)Z
    .registers 7

    array-length v0, p2

    if-lez v0, :cond_25

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_25

    array-length v1, p0

    if-lez v1, :cond_24

    aget-byte v1, p0, v0

    if-ne v1, v2, :cond_24

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1d

    aget-byte v0, p0, v2

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1d

    return v2

    :cond_1d
    add-int/2addr p1, v2

    add-int/2addr p3, v2

    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result p0

    return p0

    :cond_24
    return v0

    :cond_25
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result p0

    return p0
.end method

.method static DW([B[B)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/jcraft/jsch/Util;->DW([BI[BI)Z

    move-result p0

    return p0
.end method

.method static DW(Ljava/lang/String;)[B
    .registers 5

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array v0, p0, [B

    const/4 v2, 0x0

    :goto_16
    sub-int v3, p0, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_25

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_27

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_25
    add-int/2addr v2, v3

    goto :goto_16

    :catchall_27
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_2d

    :goto_2c
    throw p0

    :goto_2d
    goto :goto_2c
.end method

.method static DW(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static DW([BII)[B
    .registers 12

    :try_start_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    move v2, p1

    const/4 v3, 0x0

    :goto_5
    add-int v4, p1, p2

    if-lt v2, v4, :cond_a

    goto :goto_4f

    :cond_a
    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v4

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x2

    aget-byte v6, p0, v5

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x30

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v3
    :try_end_22
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_22} :catch_72

    add-int/lit8 v4, v2, 0x2

    aget-byte v6, p0, v4

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2d

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_2d
    add-int/lit8 v6, v3, 0x1

    :try_start_2f
    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    aget-byte v8, p0, v4

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v8

    and-int/lit8 v8, v8, 0x3c

    ushr-int/lit8 v8, v8, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v6
    :try_end_47
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2f .. :try_end_47} :catch_72

    add-int/lit8 v5, v2, 0x3

    aget-byte v6, p0, v5

    if-ne v6, v7, :cond_55

    add-int/lit8 v3, v3, 0x2

    :goto_4f
    :try_start_4f
    new-array p0, v3, [B

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_55
    add-int/lit8 v6, v3, 0x2

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v6
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4f .. :try_end_6d} :catch_72

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_5

    :catch_72
    move-exception p0

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "fromBase64: invalid base64 data"

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7c

    :goto_7b
    throw p1

    :goto_7c
    goto :goto_7b
.end method

.method static FH([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :cond_6
    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const-string v4, "0"

    goto :goto_29

    :cond_27
    const-string v4, ""

    :goto_29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    array-length v2, p0

    if-ge v1, v2, :cond_6

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6
.end method

.method static FH(Ljava/lang/String;)[B
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static FH([BII)[B
    .registers 15

    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p1

    const/4 v2, 0x0

    move v3, p1

    const/4 v4, 0x0

    :goto_c
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v3, v1, :cond_74

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    const/16 p2, 0x3d

    if-ne p1, v5, :cond_3a

    aget-byte p1, p0, v3

    add-int/lit8 v1, v4, 0x1

    sget-object v5, Lcom/jcraft/jsch/Util;->j6:[B

    ushr-int/2addr p1, v6

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, v5, p1

    aput-byte p1, v0, v4

    aget-byte p0, p0, v3

    add-int/lit8 p1, v1, 0x1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, v5, p0

    aput-byte p0, v0, v1

    add-int/lit8 p0, p1, 0x1

    aput-byte p2, v0, p1

    add-int/lit8 v4, p0, 0x1

    aput-byte p2, v0, p0

    goto :goto_6e

    :cond_3a
    if-ne p1, v6, :cond_6e

    aget-byte p1, p0, v3

    add-int/lit8 v1, v4, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->j6:[B

    ushr-int/2addr p1, v6

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, v7, p1

    aput-byte p1, v0, v4

    aget-byte p1, p0, v3

    add-int/2addr v3, v5

    aget-byte v4, p0, v3

    add-int/lit8 v5, v1, 0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr p1, v4

    aget-byte p1, v7, p1

    aput-byte p1, v0, v1

    aget-byte p0, p0, v3

    add-int/lit8 p1, v5, 0x1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, v7, p0

    aput-byte p0, v0, v5

    add-int/lit8 v4, p1, 0x1

    aput-byte p2, v0, p1

    :cond_6e
    :goto_6e
    new-array p0, v4, [B

    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_74
    aget-byte v7, p0, v3

    add-int/lit8 v8, v4, 0x1

    sget-object v9, Lcom/jcraft/jsch/Util;->j6:[B

    ushr-int/2addr v7, v6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v9, v7

    aput-byte v7, v0, v4

    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v10, p0, v7

    add-int/lit8 v11, v8, 0x1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v4, v10

    aget-byte v4, v9, v4

    aput-byte v4, v0, v8

    aget-byte v4, p0, v7

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, p0, v7

    add-int/lit8 v10, v11, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/2addr v4, v6

    ushr-int/lit8 v6, v8, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v4, v6

    aget-byte v4, v9, v4

    aput-byte v4, v0, v11

    aget-byte v4, p0, v7

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v9, v4

    aput-byte v4, v0, v10

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v10, 0x1

    goto/16 :goto_c
.end method

.method static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->Hw([B)[B

    move-result-object v1

    array-length v0, v0

    array-length v2, v1

    if-ne v0, v2, :cond_d

    return-object p0

    :cond_d
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static Hw([B)[B
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_6

    goto :goto_10

    :cond_6
    aget-byte v3, p0, v2

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_23

    add-int/lit8 v3, v2, 0x1

    if-ne v3, v0, :cond_1a

    :goto_10
    array-length v2, p0

    if-ne v0, v2, :cond_14

    return-object p0

    :cond_14
    new-array v2, v0, [B

    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1a
    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-static {p0, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    goto :goto_3

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private static j6(B)I
    .registers 4

    and-int/lit16 v0, p0, 0x80

    int-to-byte v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    return v1

    :cond_7
    and-int/lit16 v0, p0, 0xe0

    int-to-byte v0, v0

    const/16 v2, -0x40

    if-ne v0, v2, :cond_10

    const/4 p0, 0x2

    return p0

    :cond_10
    and-int/lit16 p0, p0, 0xf0

    int-to-byte p0, p0

    const/16 v0, -0x20

    if-ne p0, v0, :cond_19

    const/4 p0, 0x3

    return p0

    :cond_19
    return v1
.end method

.method static j6(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->DW()V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_11
    :goto_11
    array-length v0, p0

    if-lt v1, v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_3c

    return-object p0

    :cond_19
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    :try_start_1d
    sget-object v2, Lcom/jcraft/jsch/Util;->DW:[Ljava/lang/String;

    ushr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/jcraft/jsch/Util;->DW:[Ljava/lang/String;

    and-int/lit8 v0, v0, 0xf

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    array-length v0, p0

    if-ge v1, v0, :cond_11

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_3c

    goto :goto_11

    :catch_3c
    move-exception p0

    const-string p0, "???"

    return-object p0
.end method

.method static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "~"

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :cond_14
    :goto_14
    return-object p0
.end method

.method static j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    array-length v4, p0

    if-lt v3, v4, :cond_d

    return-object v1

    :cond_d
    const/4 v4, 0x0

    :goto_e
    array-length v5, p1

    if-lt v4, v5, :cond_2c

    if-nez v1, :cond_16

    aget-object v1, p0, v3

    goto :goto_36

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_2c
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method

.method static j6([B)Ljava/lang/String;
    .registers 4

    array-length v0, p0

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/jcraft/jsch/Util;->j6([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6([BII)Ljava/lang/String;
    .registers 4

    const-string v0, "UTF-8"

    invoke-static {p0, p1, p2, v0}, Lcom/jcraft/jsch/Util;->j6([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p3

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p3
.end method

.method static j6([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/jcraft/jsch/Util;->j6([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/lang/String;II)Ljava/net/Socket;
    .registers 7

    if-nez p2, :cond_13

    :try_start_2
    new-instance p2, Ljava/net/Socket;

    invoke-direct {p2, p0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    return-object p2

    :catch_8
    move-exception p0

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_13
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/net/Socket;

    new-array v0, v0, [Ljava/lang/Exception;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/jcraft/jsch/Util$1;

    invoke-direct {v3, v1, p0, p1, v0}, Lcom/jcraft/jsch/Util$1;-><init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Opening Socket "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    int-to-long p0, p2

    :try_start_37
    invoke-virtual {v2, p0, p1}, Ljava/lang/Thread;->join(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3d

    const-string p0, "timeout: "

    goto :goto_40

    :catch_3d
    move-exception p0

    const-string p0, ""

    :goto_40
    const/4 p1, 0x0

    aget-object p2, v1, p1

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_4e

    aget-object p0, v1, p1

    return-object p0

    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "socket is not established"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p2, v0, p1

    if-eqz p2, :cond_64

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_64
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    aget-object p1, v0, p1

    invoke-direct {p2, p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static j6([BI[BI)Z
    .registers 14

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    :cond_5
    array-length v2, p2

    :cond_6
    :goto_6
    const/16 v3, 0x2a

    const/4 v4, 0x1

    if-ge p1, v0, :cond_ba

    if-lt p3, v2, :cond_f

    goto/16 :goto_ba

    :cond_f
    aget-byte v5, p0, p1

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_2a

    add-int/lit8 p1, p1, 0x1

    if-ne p1, v0, :cond_1a

    return v1

    :cond_1a
    aget-byte v3, p0, p1

    aget-byte v4, p2, p3

    if-eq v3, v4, :cond_21

    return v1

    :cond_21
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v3

    add-int/2addr p1, v3

    aget-byte v3, p2, p3

    goto/16 :goto_99

    :cond_2a
    const/16 v7, 0x3f

    if-ne v5, v3, :cond_93

    move v8, p1

    :goto_2f
    if-lt v8, v0, :cond_32

    goto :goto_39

    :cond_32
    aget-byte p1, p0, v8

    if-ne p1, v3, :cond_39

    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_39
    :goto_39
    if-ne v0, v8, :cond_3c

    return v4

    :cond_3c
    aget-byte v9, p0, v8

    if-ne v9, v7, :cond_52

    :goto_40
    if-lt p3, v2, :cond_43

    return v1

    :cond_43
    invoke-static {p0, v8, p2, p3}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result p1

    if-eqz p1, :cond_4a

    return v4

    :cond_4a
    aget-byte p1, p2, p3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result p1

    add-int/2addr p3, p1

    goto :goto_40

    :cond_52
    if-ne v9, v6, :cond_7d

    add-int/lit8 p1, v8, 0x1

    if-ne p1, v0, :cond_59

    return v1

    :cond_59
    aget-byte v0, p0, p1

    :goto_5b
    if-lt p3, v2, :cond_5e

    return v1

    :cond_5e
    aget-byte v3, p2, p3

    if-ne v0, v3, :cond_75

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v3

    add-int/2addr v3, p1

    aget-byte v5, p2, p3

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v5

    add-int/2addr v5, p3

    invoke-static {p0, v3, p2, v5}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result v3

    if-eqz v3, :cond_75

    return v4

    :cond_75
    aget-byte v3, p2, p3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v3

    add-int/2addr p3, v3

    goto :goto_5b

    :cond_7d
    :goto_7d
    if-lt p3, v2, :cond_80

    return v1

    :cond_80
    aget-byte p1, p2, p3

    if-ne v9, p1, :cond_8b

    invoke-static {p0, v8, p2, p3}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result p1

    if-eqz p1, :cond_8b

    return v4

    :cond_8b
    aget-byte p1, p2, p3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result p1

    add-int/2addr p3, p1

    goto :goto_7d

    :cond_93
    if-ne v5, v7, :cond_a0

    add-int/lit8 p1, p1, 0x1

    aget-byte v3, p2, p3

    :goto_99
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v3

    add-int/2addr p3, v3

    goto/16 :goto_6

    :cond_a0
    aget-byte v6, p2, p3

    if-eq v5, v6, :cond_a5

    return v1

    :cond_a5
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v5

    add-int/2addr p1, v5

    aget-byte v5, p2, p3

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v5

    add-int/2addr p3, v5

    if-lt p3, v2, :cond_6

    if-lt p1, v0, :cond_b6

    return v4

    :cond_b6
    aget-byte v5, p0, p1

    if-ne v5, v3, :cond_6

    :cond_ba
    :goto_ba
    if-ne p1, v0, :cond_bf

    if-ne p3, v2, :cond_bf

    return v4

    :cond_bf
    if-lt p3, v2, :cond_d1

    aget-byte p2, p0, p1

    if-ne p2, v3, :cond_d1

    :goto_c5
    if-lt p1, v0, :cond_c9

    const/4 v1, 0x1

    goto :goto_cd

    :cond_c9
    aget-byte p2, p0, p1

    if-eq p2, v3, :cond_ce

    :goto_cd
    return v1

    :cond_ce
    add-int/lit8 p1, p1, 0x1

    goto :goto_c5

    :cond_d1
    return v1
.end method

.method static j6([B[B)Z
    .registers 7

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-lt v1, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_21

    sub-int v5, v4, v3

    invoke-static {v0, v3, v5}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v4, 0x1

    goto :goto_f

    :cond_21
    array-length p0, v0

    sub-int/2addr p0, v3

    invoke-static {v0, v3, p0}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    :goto_30
    if-lt v2, p0, :cond_33

    return-object p1

    :cond_33
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30
.end method
