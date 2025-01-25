.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x40

    .line 110
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lokio/Base64;->MAP:[B

    .line 117
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    sput-object v0, Lokio/Base64;->URL_MAP:[B

    return-void

    .line 110
    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 117
    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 14

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/16 v10, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v8, v0

    .line 32
    :goto_d
    if-lez v8, :cond_23

    .line 33
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 34
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_62

    if-eq v0, v11, :cond_62

    if-eq v0, v12, :cond_62

    const/16 v1, 0x20

    if-eq v0, v1, :cond_62

    if-eq v0, v10, :cond_62

    .line 40
    :cond_23
    int-to-long v0, v8

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-array v5, v0, [B

    move v2, v6

    move v3, v6

    move v7, v6

    move v1, v6

    .line 45
    :goto_31
    if-ge v7, v8, :cond_a0

    .line 46
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 49
    const/16 v9, 0x41

    if-lt v0, v9, :cond_66

    const/16 v9, 0x5a

    if-gt v0, v9, :cond_66

    .line 53
    add-int/lit8 v0, v0, -0x41

    .line 75
    :goto_41
    shl-int/lit8 v3, v3, 0x6

    int-to-byte v0, v0

    or-int/2addr v3, v0

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    rem-int/lit8 v0, v2, 0x4

    if-nez v0, :cond_d2

    .line 80
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v9, v3, 0x10

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    .line 81
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v0

    .line 82
    int-to-byte v0, v3

    aput-byte v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    .line 45
    :goto_5e
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_31

    .line 32
    :cond_62
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_d

    .line 54
    :cond_66
    const/16 v9, 0x61

    if-lt v0, v9, :cond_71

    const/16 v9, 0x7a

    if-gt v0, v9, :cond_71

    .line 58
    add-int/lit8 v0, v0, -0x47

    goto :goto_41

    .line 59
    :cond_71
    const/16 v9, 0x30

    if-lt v0, v9, :cond_7c

    const/16 v9, 0x39

    if-gt v0, v9, :cond_7c

    .line 63
    add-int/lit8 v0, v0, 0x4

    goto :goto_41

    .line 64
    :cond_7c
    const/16 v9, 0x2b

    if-eq v0, v9, :cond_84

    const/16 v9, 0x2d

    if-ne v0, v9, :cond_87

    .line 65
    :cond_84
    const/16 v0, 0x3e

    goto :goto_41

    .line 66
    :cond_87
    const/16 v9, 0x2f

    if-eq v0, v9, :cond_8f

    const/16 v9, 0x5f

    if-ne v0, v9, :cond_92

    .line 67
    :cond_8f
    const/16 v0, 0x3f

    goto :goto_41

    .line 68
    :cond_92
    if-eq v0, v11, :cond_d2

    if-eq v0, v12, :cond_d2

    const/16 v9, 0x20

    if-eq v0, v9, :cond_d2

    if-ne v0, v10, :cond_9e

    move v0, v1

    .line 69
    goto :goto_5e

    :cond_9e
    move-object v0, v4

    .line 107
    :goto_9f
    return-object v0

    .line 86
    :cond_a0
    rem-int/lit8 v0, v2, 0x4

    .line 87
    const/4 v2, 0x1

    if-ne v0, v2, :cond_a7

    move-object v0, v4

    .line 89
    goto :goto_9f

    .line 90
    :cond_a7
    const/4 v2, 0x2

    if-ne v0, v2, :cond_b8

    .line 92
    shl-int/lit8 v0, v3, 0xc

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    add-int/lit8 v1, v1, 0x1

    .line 102
    :cond_b3
    :goto_b3
    array-length v0, v5

    if-ne v1, v0, :cond_cc

    move-object v0, v5

    goto :goto_9f

    .line 94
    :cond_b8
    const/4 v2, 0x3

    if-ne v0, v2, :cond_b3

    .line 96
    shl-int/lit8 v0, v3, 0x6

    .line 97
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    .line 98
    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    goto :goto_b3

    .line 105
    :cond_cc
    new-array v0, v1, [B

    .line 106
    invoke-static {v5, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9f

    :cond_d2
    move v0, v1

    goto :goto_5e
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 2

    .line 125
    sget-object v0, Lokio/Base64;->MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/16 v7, 0x3d

    .line 133
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 134
    mul-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    .line 135
    array-length v0, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int v4, v0, v2

    move v0, v1

    move v2, v1

    .line 136
    :goto_14
    if-ge v2, v4, :cond_5e

    .line 137
    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    .line 138
    add-int/lit8 v0, v1, 0x1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v3, v1

    .line 139
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    .line 140
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p1, v5

    aput-byte v5, v3, v1

    .line 136
    add-int/lit8 v1, v2, 0x3

    move v2, v1

    goto :goto_14

    .line 142
    :cond_5e
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_c4

    .line 148
    :goto_64
    :try_start_64
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_64 .. :try_end_6b} :catch_bd

    return-object v0

    .line 150
    :pswitch_6c  #0x2
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    aput-byte v2, v3, v0

    .line 151
    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p0, v4

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    aget-byte v2, p1, v2

    aput-byte v2, v3, v1

    .line 152
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    aput-byte v2, v3, v0

    .line 153
    aput-byte v7, v3, v1

    goto :goto_64

    .line 144
    :pswitch_9e  #0x1
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    aput-byte v2, v3, v0

    .line 145
    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p0, v4

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    aput-byte v2, v3, v1

    .line 146
    add-int/lit8 v1, v0, 0x1

    aput-byte v7, v3, v0

    .line 147
    aput-byte v7, v3, v1

    goto :goto_64

    .line 158
    :catch_bd
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 142
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_9e  #00000001
        :pswitch_6c  #00000002
    .end packed-switch
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .registers 2

    .line 129
    sget-object v0, Lokio/Base64;->URL_MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
