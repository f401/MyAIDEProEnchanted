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

    const/4 v1, 0x0

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v2, Lcom/jcraft/jsch/Util;->j6:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-byte v2, v2, v0

    if-ne p0, v2, :cond_2

    int-to-byte v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static DW([B)V
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static DW([BI[BI)Z
    .registers 8

    const/16 v3, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p2

    if-lez v2, :cond_2

    aget-byte v2, p2, v1

    if-ne v2, v3, :cond_2

    array-length v2, p0

    if-lez v2, :cond_1

    aget-byte v2, p0, v1

    if-ne v2, v3, :cond_1

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result v0

    goto :goto_0
.end method

.method static DW([B[B)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/jcraft/jsch/Util;->DW([BI[BI)Z

    move-result v0

    return v0
.end method

.method static DW(Ljava/lang/String;)[B
    .registers 5

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method static DW(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method static DW([BII)[B
    .registers 11

    const/16 v7, 0x3d

    const/4 v0, 0x0

    :try_start_0
    new-array v2, p2, [B

    move v1, p1

    :goto_0
    add-int v3, p1, p2

    if-lt v1, v3, :cond_0

    :goto_1
    new-array v1, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    aget-byte v3, p0, v1

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v3

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v3, v3, 0x2

    aget-byte v5, p0, v4

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v1, 0x2

    aget-byte v5, p0, v3

    if-ne v5, v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v0, 0x1

    :try_start_1
    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    aget-byte v6, p0, v3

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v2, v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v1, 0x3

    aget-byte v5, p0, v4

    if-ne v5, v7, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v0, 0x2

    :try_start_2
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v3

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x6

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->DW(B)B

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v5
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "fromBase64: invalid base64 data"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static FH([B)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    const-string v1, "0"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method static FH(Ljava/lang/String;)[B
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static FH([BII)[B
    .registers 14

    const/16 v10, 0x3d

    const/4 v2, 0x0

    mul-int/lit8 v0, p2, 0x2

    new-array v3, v0, [B

    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x3

    add-int v4, v0, p1

    move v1, p1

    move v0, v2

    :goto_0
    if-lt v1, v4, :cond_2

    add-int v5, p1, p2

    sub-int v4, v5, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    aget-byte v4, p0, v1

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/jcraft/jsch/Util;->j6:[B

    ushr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v3, v0

    aget-byte v0, p0, v1

    add-int/lit8 v1, v5, 0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v3, v5

    add-int/lit8 v4, v1, 0x1

    aput-byte v10, v3, v1

    add-int/lit8 v0, v4, 0x1

    aput-byte v10, v3, v4

    :cond_0
    :goto_1
    new-array v1, v0, [B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    aget-byte v4, p0, v1

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/jcraft/jsch/Util;->j6:[B

    ushr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v3, v0

    aget-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, p0, v1

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v0, v4

    aget-byte v0, v6, v0

    aput-byte v0, v3, v5

    aget-byte v0, p0, v1

    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v3, v7

    add-int/lit8 v0, v1, 0x1

    aput-byte v10, v3, v1

    goto :goto_1

    :cond_2
    aget-byte v5, p0, v1

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->j6:[B

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, v3, v0

    aget-byte v0, p0, v1

    add-int/lit8 v5, v1, 0x1

    aget-byte v8, p0, v5

    add-int/lit8 v9, v6, 0x1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v0, v8

    aget-byte v0, v7, v0

    aput-byte v0, v3, v6

    aget-byte v0, p0, v5

    add-int/lit8 v5, v1, 0x2

    aget-byte v6, p0, v5

    add-int/lit8 v8, v9, 0x1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v0, v6

    aget-byte v0, v7, v0

    aput-byte v0, v3, v9

    aget-byte v0, p0, v5

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v3, v8

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_0
.end method

.method static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->Hw([B)[B

    move-result-object v1

    array-length v0, v0

    array-length v2, v1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static Hw([B)[B
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    move v1, v0

    move v2, v3

    :goto_0
    if-lt v2, v1, :cond_1

    :cond_0
    array-length v0, p0

    if-ne v1, v0, :cond_2

    :goto_1
    return-object p0

    :cond_1
    aget-byte v0, p0, v2

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    if-eq v4, v1, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v4

    invoke-static {p0, v4, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v2, v4

    goto :goto_0

    :cond_2
    new-array v0, v1, [B

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private static j6(B)I
    .registers 4

    const/4 v0, 0x1

    and-int/lit16 v1, p0, 0x80

    int-to-byte v1, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit16 v1, p0, 0xe0

    int-to-byte v1, v1

    const/16 v2, -0x40

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    and-int/lit16 v1, p0, 0xf0

    int-to-byte v1, v1

    const/16 v2, -0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method static j6(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->DW()V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    :try_start_1
    sget-object v4, Lcom/jcraft/jsch/Util;->DW:[Ljava/lang/String;

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->DW:[Ljava/lang/String;

    and-int/lit8 v3, v3, 0xf

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    array-length v3, v1

    if-ge v0, v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "???"

    goto :goto_1
.end method

.method static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "~"

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, v4

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    move v3, v2

    :goto_1
    array-length v5, p1

    if-lt v3, v5, :cond_3

    if-nez v0, :cond_2

    aget-object v0, v4, v1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v4, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    aget-object v5, v4, v1

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static j6([B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    const-string v2, "UTF-8"

    invoke-static {p0, v0, v1, v2}, Lcom/jcraft/jsch/Util;->j6([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static j6([BII)Ljava/lang/String;
    .registers 4

    const-string v0, "UTF-8"

    invoke-static {p0, p1, p2, v0}, Lcom/jcraft/jsch/Util;->j6([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static j6([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method static j6([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/jcraft/jsch/Util;->j6([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static j6(Ljava/lang/String;II)Ljava/net/Socket;
    .registers 10

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-array v1, v0, [Ljava/net/Socket;

    new-array v2, v0, [Ljava/lang/Exception;

    new-instance v3, Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Util$1;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/jcraft/jsch/Util$1;-><init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Opening Socket "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    int-to-long v4, p2

    :try_start_1
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "timeout: "

    :goto_1
    aget-object v4, v1, v6

    if-eqz v4, :cond_1

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, v1, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "socket is not established"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v2, v6

    if-eqz v1, :cond_2

    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    aget-object v2, v2, v6

    invoke-direct {v1, v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static j6([BI[BI)Z
    .registers 15

    const/16 v10, 0x5c

    const/16 v9, 0x3f

    const/16 v8, 0x2a

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    array-length v6, p2

    move v4, p3

    move v0, p1

    :goto_1
    if-ge v0, v5, :cond_14

    if-lt v4, v6, :cond_3

    move v1, v4

    :cond_2
    :goto_2
    if-ne v0, v5, :cond_11

    if-ne v1, v6, :cond_11

    move v3, v2

    goto :goto_0

    :cond_3
    aget-byte v1, p0, v0

    if-ne v1, v10, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v5, :cond_0

    aget-byte v1, p0, v0

    aget-byte v7, p2, v4

    if-ne v1, v7, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v1

    add-int/2addr v1, v0

    aget-byte v0, p2, v4

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v0

    :goto_3
    add-int/2addr v4, v0

    move v0, v1

    goto :goto_1

    :cond_4
    aget-byte v1, p0, v0

    if-ne v1, v8, :cond_d

    :goto_4
    if-lt v0, v5, :cond_6

    :cond_5
    if-ne v5, v0, :cond_7

    move v3, v2

    goto :goto_0

    :cond_6
    aget-byte v1, p0, v0

    if-ne v1, v8, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    aget-byte v1, p0, v0

    if-ne v1, v9, :cond_9

    :goto_5
    if-ge v4, v6, :cond_0

    invoke-static {p0, v0, p2, v4}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v2

    goto :goto_0

    :cond_8
    aget-byte v1, p2, v4

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_5

    :cond_9
    if-ne v1, v10, :cond_c

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v5, :cond_0

    aget-byte v1, p0, v0

    :goto_6
    if-ge v4, v6, :cond_0

    aget-byte v5, p2, v4

    if-ne v1, v5, :cond_a

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v5

    add-int/2addr v5, v0

    aget-byte v7, p2, v4

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {p0, v5, p2, v7}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v2

    goto :goto_0

    :cond_a
    aget-byte v5, p2, v4

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_6

    :cond_b
    aget-byte v5, p2, v4

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v5

    add-int/2addr v4, v5

    :cond_c
    if-ge v4, v6, :cond_0

    aget-byte v5, p2, v4

    if-ne v1, v5, :cond_b

    invoke-static {p0, v0, p2, v4}, Lcom/jcraft/jsch/Util;->j6([BI[BI)Z

    move-result v5

    if-eqz v5, :cond_b

    move v3, v2

    goto/16 :goto_0

    :cond_d
    aget-byte v1, p0, v0

    if-ne v1, v9, :cond_e

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p2, v4

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v0

    goto :goto_3

    :cond_e
    aget-byte v1, p0, v0

    aget-byte v7, p2, v4

    if-ne v1, v7, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v1

    add-int/2addr v0, v1

    aget-byte v1, p2, v4

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6(B)I

    move-result v1

    add-int/2addr v1, v4

    if-lt v1, v6, :cond_10

    if-lt v0, v5, :cond_f

    move v3, v2

    goto/16 :goto_0

    :cond_f
    aget-byte v4, p0, v0

    if-eq v4, v8, :cond_2

    :cond_10
    move v4, v1

    goto/16 :goto_1

    :cond_11
    if-lt v1, v6, :cond_0

    aget-byte v1, p0, v0

    if-ne v1, v8, :cond_0

    :goto_7
    if-lt v0, v5, :cond_12

    move v0, v2

    :goto_8
    move v3, v0

    goto/16 :goto_0

    :cond_12
    aget-byte v1, p0, v0

    if-eq v1, v8, :cond_13

    move v0, v3

    goto :goto_8

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    move v1, v4

    goto/16 :goto_2
.end method

.method static j6([B[B)Z
    .registers 7

    const/4 v0, 0x0

    array-length v2, p0

    array-length v1, p1

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_1

    sub-int v5, v4, v0

    invoke-static {v2, v0, v5}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    :cond_1
    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v4}, Lcom/jcraft/jsch/Util;->j6([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_2
    array-length v0, v2

    if-lt v1, v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
