.class public final Lcom/baidu/mobstat/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 122
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/baidu/mobstat/dk;->a:[B

    return-void

    :array_a
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
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 148
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 149
    div-int/lit8 v1, v0, 0x4c

    .line 150
    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 154
    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    const/4 v6, 0x2

    if-ge v3, v1, :cond_67

    .line 156
    sget-object v7, Lcom/baidu/mobstat/dk;->a:[B

    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v6

    aget-byte v8, v7, v8

    aput-byte v8, v0, v4

    .line 157
    aget-byte v8, p0, v3

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v4, 0x1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v11, p0, v9

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v8, v11

    aget-byte v8, v7, v8

    aput-byte v8, v0, v10

    .line 159
    aget-byte v8, p0, v9

    add-int/lit8 v9, v3, 0x2

    add-int/lit8 v10, v4, 0x2

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v6, v8, 0x2

    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    aget-byte v6, v7, v6

    aput-byte v6, v0, v10

    add-int/lit8 v6, v4, 0x4

    .line 161
    add-int/lit8 v4, v4, 0x3

    aget-byte v8, p0, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v0, v4

    .line 162
    sub-int v4, v6, v5

    rem-int/lit8 v4, v4, 0x4c

    if-nez v4, :cond_63

    if-eqz v6, :cond_63

    add-int/lit8 v5, v5, 0x1

    :cond_63
    add-int/lit8 v3, v3, 0x3

    move v4, v6

    goto :goto_15

    .line 170
    :cond_67
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    const/16 v5, 0x3d

    const/4 v7, 0x1

    if-eq v3, v7, :cond_a4

    if-eq v3, v6, :cond_72

    goto :goto_c7

    .line 178
    :cond_72
    sget-object v3, Lcom/baidu/mobstat/dk;->a:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v6

    aget-byte v8, v3, v8

    aput-byte v8, v0, v4

    .line 179
    aget-byte v8, p0, v1

    add-int/2addr v1, v7

    add-int/lit8 v7, v4, 0x1

    aget-byte v9, p0, v1

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v8, v9

    aget-byte v8, v3, v8

    aput-byte v8, v0, v7

    .line 181
    add-int/lit8 v7, v4, 0x2

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v6

    aget-byte p0, v3, p0

    aput-byte p0, v0, v7

    add-int/lit8 p0, v4, 0x4

    .line 182
    add-int/lit8 v4, v4, 0x3

    aput-byte v5, v0, v4

    move v4, p0

    goto :goto_c7

    .line 172
    :cond_a4
    sget-object v3, Lcom/baidu/mobstat/dk;->a:[B

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v6, v7, 0x2

    aget-byte v6, v3, v6

    aput-byte v6, v0, v4

    .line 173
    add-int/lit8 v6, v4, 0x1

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, v3, p0

    aput-byte p0, v0, v6

    .line 174
    add-int/lit8 p0, v4, 0x2

    aput-byte v5, v0, p0

    add-int/lit8 p0, v4, 0x4

    .line 175
    add-int/lit8 v4, v4, 0x3

    aput-byte v5, v0, v4

    move v4, p0

    .line 187
    :goto_c7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p0
.end method

.method public static a([B)[B
    .registers 2

    .line 22
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dk;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)[B
    .registers 18

    .line 34
    div-int/lit8 v0, p1, 0x4

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 37
    new-array v0, v2, [B

    return-object v0

    .line 40
    :cond_b
    new-array v0, v0, [B

    move/from16 v3, p1

    const/4 v4, 0x0

    .line 47
    :goto_10
    add-int/lit8 v5, v3, -0x1

    aget-byte v5, p0, v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_c0

    const/16 v7, 0xd

    if-eq v5, v7, :cond_c0

    const/16 v8, 0x20

    if-eq v5, v8, :cond_c0

    const/16 v9, 0x9

    if-ne v5, v9, :cond_26

    goto/16 :goto_c0

    :cond_26
    const/16 v10, 0x3d

    if-ne v5, v10, :cond_2e

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c0

    :cond_2e
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_32
    const v13, 0xff00

    const/high16 v14, 0xff0000

    if-ge v5, v3, :cond_9e

    .line 67
    aget-byte v15, p0, v5

    if-eq v15, v6, :cond_99

    if-eq v15, v7, :cond_99

    if-eq v15, v8, :cond_99

    if-ne v15, v9, :cond_44

    goto :goto_99

    :cond_44
    const/16 v6, 0x41

    if-lt v15, v6, :cond_4f

    const/16 v6, 0x5a

    if-gt v15, v6, :cond_4f

    add-int/lit8 v15, v15, -0x41

    goto :goto_72

    :cond_4f
    const/16 v6, 0x61

    if-lt v15, v6, :cond_5a

    const/16 v6, 0x7a

    if-gt v15, v6, :cond_5a

    add-int/lit8 v15, v15, -0x47

    goto :goto_72

    :cond_5a
    const/16 v6, 0x30

    if-lt v15, v6, :cond_65

    const/16 v6, 0x39

    if-gt v15, v6, :cond_65

    add-int/lit8 v15, v15, 0x4

    goto :goto_72

    :cond_65
    const/16 v6, 0x2b

    if-ne v15, v6, :cond_6c

    const/16 v15, 0x3e

    goto :goto_72

    :cond_6c
    const/16 v6, 0x2f

    if-ne v15, v6, :cond_97

    const/16 v15, 0x3f

    :goto_72
    int-to-byte v6, v15

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v11, v6

    .line 96
    rem-int/lit8 v6, v12, 0x4

    if-ne v6, v1, :cond_94

    and-int v6, v11, v14

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    .line 98
    aput-byte v6, v0, v10

    and-int v6, v11, v13

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    .line 99
    add-int/lit8 v13, v10, 0x1

    aput-byte v6, v0, v13

    add-int/lit8 v6, v10, 0x3

    and-int/lit16 v13, v11, 0xff

    int-to-byte v13, v13

    .line 100
    add-int/lit8 v10, v10, 0x2

    aput-byte v13, v0, v10

    move v10, v6

    :cond_94
    add-int/lit8 v12, v12, 0x1

    goto :goto_99

    :cond_97
    const/4 v0, 0x0

    return-object v0

    :cond_99
    :goto_99
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    goto :goto_32

    :cond_9e
    if-lez v4, :cond_ba

    mul-int/lit8 v1, v4, 0x6

    shl-int v1, v11, v1

    add-int/lit8 v3, v10, 0x1

    and-int v5, v1, v14

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    .line 108
    aput-byte v5, v0, v10

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b9

    add-int/lit8 v10, v10, 0x2

    and-int/2addr v1, v13

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 110
    aput-byte v1, v0, v3

    goto :goto_ba

    .line 108
    :cond_b9
    move v10, v3

    .line 114
    :cond_ba
    :goto_ba
    new-array v1, v10, [B

    .line 115
    invoke-static {v0, v2, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_c0
    :goto_c0
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_10
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 136
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dk;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
