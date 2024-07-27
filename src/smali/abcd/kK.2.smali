.class public Labcd/kK;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, -0x2

    :try_start_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/kK;->j6:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Labcd/kK;->DW:[B

    sget-object v0, Labcd/kK;->DW:[B

    const/4 v1, -0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    sget-object v0, Labcd/kK;->DW:[B

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    return-void

    :cond_0
    sget-object v1, Labcd/kK;->DW:[B

    sget-object v2, Labcd/kK;->j6:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j6([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Labcd/kK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j6([BII)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    mul-int/lit8 v0, p2, 0x4

    div-int/lit8 v2, v0, 0x3

    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v2

    new-array v3, v0, [B

    move v2, v1

    move v0, v1

    :goto_1
    add-int/lit8 v4, p2, -0x2

    if-lt v2, v4, :cond_1

    if-ge v2, p2, :cond_2

    add-int v4, p1, v2

    sub-int v2, p2, v2

    invoke-static {p0, v4, v2, v3, v0}, Labcd/kK;->j6([BII[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    :goto_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3

    :cond_1
    add-int v4, v2, p1

    const/4 v5, 0x3

    invoke-static {p0, v4, v5, v3, v0}, Labcd/kK;->j6([BII[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2
.end method

.method private static j6([BII[BI)V
    .registers 11

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v4, 0x3d

    const/4 v0, 0x0

    if-eq p2, v2, :cond_2

    if-eq p2, v3, :cond_1

    if-eq p2, v5, :cond_0

    :goto_0
    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v5, :cond_3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    :cond_2
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    sget-object v1, Labcd/kK;->j6:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, v1, v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v1, v0

    aput-byte v0, p3, v2

    goto :goto_1

    :cond_4
    sget-object v1, Labcd/kK;->j6:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, v1, v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v1, v0

    aput-byte v0, p3, v2

    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_1

    :cond_5
    sget-object v1, Labcd/kK;->j6:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, v1, v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v1, v0

    aput-byte v0, p3, v2

    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_1
.end method
