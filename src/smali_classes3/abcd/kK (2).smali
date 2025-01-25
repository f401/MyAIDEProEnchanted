.class public Labcd/kK;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/kK;->j6:[B
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_3e

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Labcd/kK;->DW:[B

    const/4 v1, -0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    :goto_15
    const/16 v1, 0x40

    if-lt v0, v1, :cond_32

    sget-object v0, Labcd/kK;->DW:[B

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    return-void

    :cond_32
    sget-object v1, Labcd/kK;->DW:[B

    sget-object v2, Labcd/kK;->j6:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    :goto_49
    throw v1

    :goto_4a
    goto :goto_49
.end method

.method public static j6([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Labcd/kK;->j6([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6([BII)Ljava/lang/String;
    .registers 9

    mul-int/lit8 v0, p2, 0x4

    const/4 v1, 0x3

    div-int/2addr v0, v1

    rem-int/lit8 v2, p2, 0x3

    const/4 v3, 0x0

    if-lez v2, :cond_b

    const/4 v2, 0x4

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v5, p2, -0x2

    if-lt v2, v5, :cond_2d

    if-ge v2, p2, :cond_1e

    add-int/2addr p1, v2

    sub-int/2addr p2, v2

    invoke-static {p0, p1, p2, v0, v4}, Labcd/kK;->j6([BII[BI)V

    add-int/lit8 v4, v4, 0x4

    :cond_1e
    :try_start_1e
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, v0, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    :cond_2d
    add-int v5, v2, p1

    invoke-static {p0, v5, v1, v0, v4}, Labcd/kK;->j6([BII[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v4, 0x4

    goto :goto_11
.end method

.method private static j6([BII[BI)V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1d

    if-eq p2, v1, :cond_14

    if-eq p2, v0, :cond_b

    goto :goto_24

    :cond_b
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    :cond_14
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    :cond_1d
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x8

    or-int/2addr v2, p0

    :goto_24
    const/16 p0, 0x3d

    if-eq p2, v3, :cond_71

    if-eq p2, v1, :cond_51

    if-eq p2, v0, :cond_2d

    goto :goto_8a

    :cond_2d
    sget-object p0, Labcd/kK;->j6:[B

    ushr-int/lit8 p1, v2, 0x12

    aget-byte p1, p0, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, v2, 0xc

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p0, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, v2, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p0, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v0

    and-int/lit8 p1, v2, 0x3f

    aget-byte p0, p0, p1

    aput-byte p0, p3, p4

    goto :goto_8a

    :cond_51
    sget-object p1, Labcd/kK;->j6:[B

    ushr-int/lit8 p2, v2, 0x12

    aget-byte p2, p1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, v2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte p1, p1, v1

    aput-byte p1, p3, p2

    add-int/2addr p4, v0

    aput-byte p0, p3, p4

    goto :goto_8a

    :cond_71
    sget-object p1, Labcd/kK;->j6:[B

    ushr-int/lit8 p2, v2, 0x12

    aget-byte p2, p1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, v2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte p1, p1, v1

    aput-byte p1, p3, p2

    add-int/lit8 p1, p4, 0x2

    aput-byte p0, p3, p1

    add-int/2addr p4, v0

    aput-byte p0, p3, p4

    :goto_8a
    return-void
.end method
