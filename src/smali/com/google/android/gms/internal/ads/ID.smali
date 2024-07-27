.class public final Lcom/google/android/gms/internal/ads/ID;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[F

.field private static final FH:Ljava/lang/Object;

.field private static Hw:[I

.field public static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->DW:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->FH:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static j6([BI)I
    .registers 11

    const/4 v1, 0x0

    sget-object v5, Lcom/google/android/gms/internal/ads/ID;->FH:Ljava/lang/Object;

    monitor-enter v5

    move v4, v1

    move v0, v1

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_4

    :goto_1
    add-int/lit8 v2, p1, -0x2

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :goto_2
    if-ge v0, p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    array-length v2, v2

    if-gt v2, v4, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    aput v0, v2, v4

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_2

    :cond_4
    sub-int v6, p1, v4

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, v4, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    aget v7, v7, v2

    sub-int/2addr v7, v3

    invoke-static {p0, v3, p0, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v7

    add-int/lit8 v8, v0, 0x1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v8, 0x1

    aput-byte v1, p0, v8

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    sub-int v1, v6, v0

    :try_start_1
    invoke-static {p0, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v5

    return v6

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/ads/JD;
    .registers 25

    new-instance v16, Lcom/google/android/gms/internal/ads/MD;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/MD;-><init>([BII)V

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v4

    const/16 v5, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v5

    const/4 v11, 0x1

    const/16 v6, 0x64

    if-eq v4, v6, :cond_0

    const/16 v6, 0x6e

    if-eq v4, v6, :cond_0

    const/16 v6, 0x7a

    if-eq v4, v6, :cond_0

    const/16 v6, 0xf4

    if-eq v4, v6, :cond_0

    const/16 v6, 0x2c

    if-eq v4, v6, :cond_0

    const/16 v6, 0x53

    if-eq v4, v6, :cond_0

    const/16 v6, 0x56

    if-eq v4, v6, :cond_0

    const/16 v6, 0x76

    if-eq v4, v6, :cond_0

    const/16 v6, 0x80

    if-eq v4, v6, :cond_0

    const/16 v6, 0x8a

    if-ne v4, v6, :cond_2

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v10

    const/4 v4, 0x3

    if-ne v10, v4, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v4

    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x3

    if-eq v10, v6, :cond_6

    const/16 v6, 0x8

    :goto_1
    const/4 v7, 0x0

    move v13, v7

    :goto_2
    if-ge v13, v6, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x6

    if-ge v13, v7, :cond_7

    const/16 v7, 0x10

    :goto_3
    const/4 v12, 0x0

    const/16 v9, 0x8

    const/16 v8, 0x8

    :goto_4
    if-ge v12, v7, :cond_9

    if-eqz v9, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->FH()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x100

    rem-int/lit16 v9, v9, 0x100

    :cond_1
    if-nez v9, :cond_8

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_2
    const/4 v4, 0x1

    const/4 v9, 0x0

    move v6, v4

    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    :goto_7
    const/4 v14, 0x0

    move v13, v4

    :goto_8
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    :cond_3
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v8, v4, 0x4

    rsub-int/lit8 v4, v10, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v4, v7

    shl-int/lit8 v15, v4, 0x4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v21

    if-nez v6, :cond_e

    rsub-int/lit8 v4, v10, 0x2

    const/4 v6, 0x1

    :goto_9
    add-int v7, v18, v19

    mul-int/2addr v6, v7

    sub-int v6, v8, v6

    add-int v7, v20, v21

    mul-int/2addr v4, v7

    sub-int v7, v15, v4

    :goto_a
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v8, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v8

    const/16 v11, 0xff

    if-ne v8, v11, :cond_10

    const/16 v8, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v8

    const/16 v11, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v11

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    int-to-float v4, v8

    int-to-float v8, v11

    div-float/2addr v4, v8

    :cond_4
    move v8, v4

    :goto_b
    new-instance v4, Lcom/google/android/gms/internal/ads/JD;

    add-int/lit8 v11, v17, 0x4

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/ads/JD;-><init>(IIIFZZIIIZ)V

    return-object v4

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0xc

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0x40

    goto/16 :goto_3

    :cond_8
    move v8, v9

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v7, v13, 0x1

    move v13, v7

    goto/16 :goto_2

    :cond_a
    move v9, v4

    move v6, v10

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x1

    if-ne v12, v4, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->FH()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->FH()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const/4 v4, 0x0

    :goto_c
    int-to-long v0, v4

    move-wide/from16 v20, v0

    cmp-long v7, v20, v18

    if-gez v7, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_e
    const/4 v4, 0x3

    if-ne v6, v4, :cond_f

    const/4 v7, 0x1

    :goto_d
    const/4 v4, 0x1

    if-ne v6, v4, :cond_13

    const/4 v4, 0x2

    :goto_e
    rsub-int/lit8 v6, v10, 0x2

    mul-int/2addr v4, v6

    move v6, v7

    goto/16 :goto_9

    :cond_f
    const/4 v7, 0x2

    goto :goto_d

    :cond_10
    sget-object v4, Lcom/google/android/gms/internal/ads/ID;->DW:[F

    array-length v11, v4

    if-ge v8, v11, :cond_11

    aget v8, v4, v8

    goto :goto_b

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v11, 0x2e

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "NalUnitUtil"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_13
    move v4, v11

    goto :goto_e

    :cond_14
    move v6, v8

    move v7, v15

    goto/16 :goto_a
.end method

.method public static j6(Ljava/nio/ByteBuffer;)V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move v2, v1

    move v0, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_1
    return-void

    :cond_0
    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v5, :cond_2

    move v0, v1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static j6(Ljava/lang/String;B)Z
    .registers 4

    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
