.class final Lcom/google/android/gms/internal/ads/at;
.super Ljava/lang/Object;


# direct methods
.method private static j6([BI)J
    .registers 5

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, v0, 0xff

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 v0, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static j6([BII)J
    .registers 5

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide p0

    shr-long/2addr p0, p2

    const-wide/32 v0, 0x3ffffff

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static j6([BJI)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_13

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_1

    :cond_13
    return-void
.end method

.method static j6([B[B)[B
    .registers 53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1fa

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v4

    const-wide/32 v6, 0x3ffffff

    and-long/2addr v4, v6

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v10

    const-wide/32 v12, 0x3ffff03

    and-long/2addr v10, v12

    const/4 v12, 0x6

    const/4 v13, 0x4

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v14

    const-wide/32 v16, 0x3ffc0ff

    and-long v14, v14, v16

    const/16 v3, 0x9

    invoke-static {v0, v3, v12}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v17

    const-wide/32 v19, 0x3f03fff

    and-long v17, v17, v19

    const/16 v6, 0xc

    const/16 v7, 0x8

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v21

    const-wide/32 v23, 0xfffff

    and-long v21, v21, v23

    const-wide/16 v23, 0x5

    mul-long v25, v14, v23

    mul-long v27, v17, v23

    mul-long v29, v21, v23

    const/16 v6, 0x11

    new-array v7, v6, [B

    const-wide/16 v31, 0x0

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    move-wide/from16 v39, v37

    const/4 v3, 0x0

    :goto_56
    array-length v12, v1

    const/16 v13, 0x10

    const/16 v41, 0x1a

    if-ge v3, v12, :cond_12c

    array-length v12, v1

    sub-int/2addr v12, v3

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v1, v3, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v42, 0x1

    aput-byte v42, v7, v12

    if-eq v12, v13, :cond_71

    add-int/lit8 v12, v12, 0x1

    invoke-static {v7, v12, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_71
    invoke-static {v7, v2, v2}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v42

    add-long v39, v39, v42

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v42

    add-long v33, v33, v42

    const/4 v6, 0x6

    const/4 v12, 0x4

    invoke-static {v7, v6, v12}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v43

    add-long v31, v31, v43

    const/16 v12, 0x9

    invoke-static {v7, v12, v6}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v43

    add-long v35, v35, v43

    const/16 v6, 0x8

    const/16 v8, 0xc

    invoke-static {v7, v8, v6}, Lcom/google/android/gms/internal/ads/at;->j6([BII)J

    move-result-wide v43

    aget-byte v6, v7, v13

    const/16 v8, 0x18

    shl-int/2addr v6, v8

    int-to-long v12, v6

    or-long v12, v43, v12

    add-long v37, v37, v12

    mul-long v12, v39, v4

    mul-long v43, v33, v29

    add-long v12, v12, v43

    mul-long v43, v31, v27

    add-long v12, v12, v43

    mul-long v43, v35, v25

    add-long v12, v12, v43

    mul-long v43, v10, v23

    mul-long v43, v43, v37

    add-long v12, v12, v43

    mul-long v43, v39, v10

    mul-long v45, v33, v4

    add-long v43, v43, v45

    mul-long v45, v31, v29

    add-long v43, v43, v45

    mul-long v45, v35, v27

    add-long v43, v43, v45

    mul-long v45, v37, v25

    add-long v43, v43, v45

    shr-long v45, v12, v41

    add-long v43, v43, v45

    mul-long v45, v39, v14

    mul-long v47, v33, v10

    add-long v45, v45, v47

    mul-long v47, v31, v4

    add-long v45, v45, v47

    mul-long v47, v35, v29

    add-long v45, v45, v47

    mul-long v47, v37, v27

    add-long v45, v45, v47

    shr-long v47, v43, v41

    add-long v45, v45, v47

    mul-long v47, v39, v17

    mul-long v49, v33, v14

    add-long v47, v47, v49

    mul-long v49, v31, v10

    add-long v47, v47, v49

    mul-long v49, v35, v4

    add-long v47, v47, v49

    mul-long v49, v37, v29

    add-long v47, v47, v49

    shr-long v49, v45, v41

    add-long v47, v47, v49

    mul-long v39, v39, v21

    mul-long v33, v33, v17

    add-long v39, v39, v33

    mul-long v31, v31, v14

    add-long v39, v39, v31

    mul-long v35, v35, v10

    add-long v39, v39, v35

    mul-long v37, v37, v4

    add-long v39, v39, v37

    shr-long v31, v47, v41

    add-long v39, v39, v31

    const-wide/32 v19, 0x3ffffff

    and-long v12, v12, v19

    shr-long v31, v39, v41

    mul-long v31, v31, v23

    add-long v12, v12, v31

    and-long v31, v43, v19

    shr-long v33, v12, v41

    add-long v33, v31, v33

    add-int/lit8 v3, v3, 0x10

    and-long v31, v45, v19

    and-long v35, v47, v19

    and-long v37, v39, v19

    and-long v39, v12, v19

    const/16 v6, 0x11

    const/4 v8, 0x3

    const/4 v13, 0x4

    goto/16 :goto_56

    :cond_12c
    const-wide/32 v19, 0x3ffffff

    shr-long v3, v33, v41

    add-long v31, v31, v3

    and-long v3, v31, v19

    shr-long v5, v31, v41

    add-long v35, v35, v5

    and-long v5, v35, v19

    shr-long v7, v35, v41

    add-long v37, v37, v7

    and-long v7, v37, v19

    shr-long v9, v37, v41

    mul-long v9, v9, v23

    add-long v39, v39, v9

    and-long v9, v39, v19

    and-long v11, v33, v19

    shr-long v14, v39, v41

    add-long/2addr v11, v14

    add-long v23, v9, v23

    shr-long v14, v23, v41

    add-long/2addr v14, v11

    shr-long v17, v14, v41

    add-long v17, v3, v17

    shr-long v21, v17, v41

    add-long v21, v5, v21

    shr-long v25, v21, v41

    add-long v25, v7, v25

    const-wide/32 v27, 0x4000000

    sub-long v25, v25, v27

    const/16 v1, 0x3f

    shr-long v27, v25, v1

    const-wide/16 v29, -0x1

    xor-long v29, v27, v29

    const-wide/32 v19, 0x3ffffff

    and-long v14, v14, v19

    and-long v14, v14, v29

    and-long v11, v11, v27

    or-long/2addr v11, v14

    and-long v14, v17, v19

    and-long v14, v14, v29

    and-long v3, v3, v27

    or-long/2addr v3, v14

    and-long v14, v21, v19

    and-long v14, v14, v29

    and-long v5, v5, v27

    or-long/2addr v5, v14

    shl-long v14, v11, v41

    and-long v9, v9, v27

    and-long v17, v23, v19

    and-long v17, v17, v29

    or-long v9, v9, v17

    or-long/2addr v9, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v9, v14

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v17

    add-long v9, v9, v17

    const/4 v1, 0x6

    shr-long/2addr v11, v1

    const/16 v1, 0x14

    shl-long v17, v3, v1

    or-long v11, v11, v17

    and-long/2addr v11, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v17

    add-long v11, v11, v17

    const/16 v1, 0x20

    shr-long v16, v9, v1

    add-long v11, v11, v16

    const/16 v16, 0xc

    shr-long v3, v3, v16

    const/16 v16, 0xe

    shl-long v16, v5, v16

    or-long v3, v3, v16

    and-long/2addr v3, v14

    const/16 v2, 0x18

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v18

    add-long v3, v3, v18

    shr-long v18, v11, v1

    add-long v3, v3, v18

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at;->j6([BI)J

    move-result-wide v0

    new-array v2, v13, [B

    and-long/2addr v9, v14

    const/4 v13, 0x0

    invoke-static {v2, v9, v10, v13}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    and-long v9, v11, v14

    const/4 v11, 0x4

    invoke-static {v2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    and-long v9, v3, v14

    const/16 v11, 0x8

    invoke-static {v2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    const/16 v9, 0x12

    shr-long/2addr v5, v9

    and-long v9, v25, v29

    and-long v7, v7, v27

    or-long/2addr v7, v9

    shl-long/2addr v7, v11

    or-long/2addr v5, v7

    and-long/2addr v5, v14

    add-long/2addr v5, v0

    const/16 v0, 0x20

    shr-long v0, v3, v0

    add-long/2addr v5, v0

    and-long v0, v5, v14

    const/16 v3, 0xc

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/at;->j6([BJI)V

    return-object v2

    :cond_1fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_203

    :goto_202
    throw v0

    :goto_203
    goto :goto_202
.end method
