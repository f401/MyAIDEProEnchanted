.class final Lcom/google/android/gms/internal/ads/at;
.super Ljava/lang/Object;


# direct methods
.method private static j6([BI)J
    .registers 6

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static j6([BII)J
    .registers 7

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v0

    shr-long/2addr v0, p2

    const-wide/32 v2, 0x3ffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static j6([BJI)V
    .registers 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static j6([B[B)[B
    .registers 42

    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v2

    const-wide/32 v4, 0x3ffffff

    and-long v16, v2, v4

    const/4 v2, 0x3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v2

    const-wide/32 v4, 0x3ffff03

    and-long v18, v2, v4

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v2

    const-wide/32 v4, 0x3ffc0ff

    and-long v20, v2, v4

    const/16 v2, 0x9

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v2

    const-wide/32 v4, 0x3f03fff

    and-long v22, v2, v4

    const/16 v2, 0xc

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v2

    const-wide/32 v4, 0xfffff

    and-long v24, v2, v4

    const-wide/16 v2, 0x5

    mul-long v26, v20, v2

    const-wide/16 v2, 0x5

    mul-long v28, v22, v2

    const-wide/16 v2, 0x5

    mul-long v30, v24, v2

    const/16 v2, 0x11

    new-array v15, v2, [B

    const-wide/16 v12, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    move-wide v4, v6

    move-wide v8, v6

    move-wide v10, v6

    :goto_0
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v14, v6, :cond_1

    const/16 v6, 0x10

    move-object/from16 v0, p1

    array-length v7, v0

    sub-int/2addr v7, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x1

    aput-byte v7, v15, v6

    const/16 v7, 0x10

    if-eq v6, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x11

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-static {v15, v6, v7, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v15, v6, v7}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v6

    add-long/2addr v6, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v8

    add-long/2addr v8, v12

    const/4 v12, 0x6

    const/4 v13, 0x4

    invoke-static {v15, v12, v13}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v12

    add-long/2addr v2, v12

    const/16 v12, 0x9

    const/4 v13, 0x6

    invoke-static {v15, v12, v13}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v12

    add-long/2addr v4, v12

    const/16 v12, 0xc

    const/16 v13, 0x8

    invoke-static {v15, v12, v13}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v12

    const/16 v32, 0x10

    aget-byte v32, v15, v32

    shl-int/lit8 v32, v32, 0x18

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    or-long v12, v12, v32

    add-long/2addr v10, v12

    mul-long v12, v6, v16

    mul-long v32, v8, v30

    add-long v12, v12, v32

    mul-long v32, v2, v28

    add-long v12, v12, v32

    mul-long v32, v4, v26

    add-long v12, v12, v32

    const-wide/16 v32, 0x5

    mul-long v32, v32, v18

    mul-long v32, v32, v10

    add-long v12, v12, v32

    mul-long v32, v6, v18

    mul-long v34, v8, v16

    add-long v32, v32, v34

    mul-long v34, v2, v30

    add-long v32, v32, v34

    mul-long v34, v4, v28

    add-long v32, v32, v34

    mul-long v34, v10, v26

    add-long v32, v32, v34

    const/16 v34, 0x1a

    shr-long v34, v12, v34

    add-long v32, v32, v34

    mul-long v34, v6, v20

    mul-long v36, v8, v18

    add-long v34, v34, v36

    mul-long v36, v2, v16

    add-long v34, v34, v36

    mul-long v36, v4, v30

    add-long v34, v34, v36

    mul-long v36, v10, v28

    add-long v34, v34, v36

    const/16 v36, 0x1a

    shr-long v36, v32, v36

    add-long v34, v34, v36

    mul-long v36, v6, v22

    mul-long v38, v8, v20

    add-long v36, v36, v38

    mul-long v38, v2, v18

    add-long v36, v36, v38

    mul-long v38, v4, v16

    add-long v36, v36, v38

    mul-long v38, v10, v30

    add-long v36, v36, v38

    const/16 v38, 0x1a

    shr-long v38, v34, v38

    add-long v36, v36, v38

    mul-long v6, v6, v24

    mul-long v8, v8, v22

    add-long/2addr v6, v8

    mul-long v2, v2, v20

    add-long/2addr v2, v6

    mul-long v4, v4, v18

    add-long/2addr v2, v4

    mul-long v4, v10, v16

    add-long/2addr v2, v4

    const/16 v4, 0x1a

    shr-long v4, v36, v4

    add-long v6, v2, v4

    const-wide/32 v2, 0x3ffffff

    and-long/2addr v2, v12

    const/16 v4, 0x1a

    shr-long v4, v6, v4

    const-wide/16 v8, 0x5

    mul-long/2addr v4, v8

    add-long v8, v2, v4

    const-wide/32 v2, 0x3ffffff

    and-long v2, v2, v32

    const/16 v4, 0x1a

    shr-long v4, v8, v4

    add-long v12, v2, v4

    add-int/lit8 v14, v14, 0x10

    const-wide/32 v2, 0x3ffffff

    and-long v2, v2, v34

    const-wide/32 v4, 0x3ffffff

    and-long v4, v4, v36

    const-wide/32 v10, 0x3ffffff

    and-long/2addr v10, v6

    const-wide/32 v6, 0x3ffffff

    and-long/2addr v6, v8

    move-wide v8, v6

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x1a

    shr-long v6, v12, v6

    add-long/2addr v2, v6

    const-wide/32 v6, 0x3ffffff

    and-long/2addr v6, v2

    const/16 v14, 0x1a

    shr-long/2addr v2, v14

    add-long/2addr v2, v4

    const-wide/32 v4, 0x3ffffff

    and-long/2addr v4, v2

    const/16 v14, 0x1a

    shr-long/2addr v2, v14

    add-long/2addr v2, v10

    const-wide/32 v10, 0x3ffffff

    and-long/2addr v10, v2

    const/16 v14, 0x1a

    shr-long/2addr v2, v14

    const-wide/16 v14, 0x5

    mul-long/2addr v2, v14

    add-long/2addr v2, v8

    const-wide/32 v8, 0x3ffffff

    and-long/2addr v8, v2

    const-wide/32 v14, 0x3ffffff

    and-long/2addr v12, v14

    const/16 v14, 0x1a

    shr-long/2addr v2, v14

    add-long/2addr v2, v12

    const-wide/16 v12, 0x5

    add-long/2addr v12, v8

    const/16 v14, 0x1a

    shr-long v14, v12, v14

    add-long/2addr v14, v2

    const/16 v16, 0x1a

    shr-long v16, v14, v16

    add-long v16, v16, v6

    const/16 v18, 0x1a

    shr-long v18, v16, v18

    add-long v18, v18, v4

    const/16 v20, 0x1a

    shr-long v20, v18, v20

    add-long v20, v20, v10

    const-wide/32 v22, 0x4000000

    sub-long v20, v20, v22

    const/16 v22, 0x3f

    shr-long v22, v20, v22

    const-wide/16 v24, -0x1

    xor-long v24, v24, v22

    const-wide/32 v26, 0x3ffffff

    and-long v14, v14, v26

    and-long v14, v14, v24

    and-long v2, v2, v22

    or-long/2addr v2, v14

    const-wide/32 v14, 0x3ffffff

    and-long v14, v14, v16

    and-long v14, v14, v24

    and-long v6, v6, v22

    or-long/2addr v6, v14

    const-wide/32 v14, 0x3ffffff

    and-long v14, v14, v18

    and-long v14, v14, v24

    and-long v4, v4, v22

    or-long/2addr v4, v14

    const/16 v14, 0x1a

    shl-long v14, v2, v14

    and-long v8, v8, v22

    const-wide/32 v16, 0x3ffffff

    and-long v12, v12, v16

    and-long v12, v12, v24

    or-long/2addr v8, v12

    or-long/2addr v8, v14

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    const/16 v12, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v12

    add-long/2addr v8, v12

    const/4 v12, 0x6

    shr-long/2addr v2, v12

    const/16 v12, 0x14

    shl-long v12, v6, v12

    or-long/2addr v2, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v12

    add-long/2addr v2, v12

    const/16 v12, 0x20

    shr-long v12, v8, v12

    add-long/2addr v2, v12

    const/16 v12, 0xc

    shr-long/2addr v6, v12

    const/16 v12, 0xe

    shl-long v12, v4, v12

    or-long/2addr v6, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v6, v12

    const/16 v12, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    const/16 v12, 0x20

    shr-long v12, v2, v12

    add-long/2addr v6, v12

    const/16 v12, 0x1c

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v12

    const/16 v14, 0x10

    new-array v14, v14, [B

    const-wide v16, 0xffffffffL

    and-long v8, v8, v16

    const/4 v15, 0x0

    invoke-static {v14, v8, v9, v15}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    const/4 v8, 0x4

    invoke-static {v14, v2, v3, v8}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v6

    const/16 v8, 0x8

    invoke-static {v14, v2, v3, v8}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    const/16 v2, 0x12

    shr-long v2, v4, v2

    and-long v4, v20, v24

    and-long v8, v10, v22

    or-long/2addr v4, v8

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v2, v12

    const/16 v4, 0x20

    shr-long v4, v6, v4

    add-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0xc

    invoke-static {v14, v2, v3, v4}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    return-object v14

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The key length in bytes must be 32."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
