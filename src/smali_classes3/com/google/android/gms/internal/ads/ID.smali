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

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->DW:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->FH:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
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
        0x3fc00000  # 1.5f
        0x40000000  # 2.0f
    .end array-data
.end method

.method public static j6([BI)I
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/ID;->FH:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_3b

    :goto_8
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_21

    aget-byte v4, p0, v2

    if-nez v4, :cond_1e

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1e

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    move v2, p1

    :goto_22
    if-ge v2, p1, :cond_6

    :try_start_24
    sget-object v4, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    array-length v5, v4

    if-gt v5, v3, :cond_32

    array-length v5, v4

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    :cond_32
    sget-object v4, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3b
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3f
    if-ge v2, v3, :cond_58

    sget-object v6, Lcom/google/android/gms/internal/ads/ID;->Hw:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_5f

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    aput-byte v1, p0, v5

    add-int/lit8 v5, v7, 0x1

    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_58
    sub-int v1, p1, v5

    :try_start_5a
    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_5f

    goto :goto_63

    :goto_62
    throw p0

    :goto_63
    goto :goto_62
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/ads/JD;
    .registers 22

    new-instance v0, Lcom/google/android/gms/internal/ads/MD;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/MD;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v5

    const/16 v4, 0x64

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x7a

    if-eq v2, v4, :cond_4c

    const/16 v4, 0xf4

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x53

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x56

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x76

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x80

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x8a

    if-ne v2, v4, :cond_49

    goto :goto_4c

    :cond_49
    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_9c

    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v2

    if-ne v2, v6, :cond_57

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v4

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v9

    if-eqz v9, :cond_9b

    if-eq v2, v6, :cond_6c

    const/16 v9, 0x8

    goto :goto_6e

    :cond_6c
    const/16 v9, 0xc

    :goto_6e
    const/4 v10, 0x0

    :goto_6f
    if-ge v10, v9, :cond_9b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v11

    if-eqz v11, :cond_98

    const/4 v11, 0x6

    if-ge v10, v11, :cond_7d

    const/16 v11, 0x10

    goto :goto_7f

    :cond_7d
    const/16 v11, 0x40

    :goto_7f
    const/4 v12, 0x0

    const/16 v13, 0x8

    const/16 v14, 0x8

    :goto_84
    if-ge v12, v11, :cond_98

    if-eqz v13, :cond_91

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->FH()I

    move-result v13

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x100

    rem-int/lit16 v13, v13, 0x100

    :cond_91
    if-nez v13, :cond_94

    goto :goto_95

    :cond_94
    move v14, v13

    :goto_95
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    :cond_98
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    :cond_9b
    move v9, v4

    :goto_9c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v12

    if-nez v12, :cond_af

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    move/from16 p1, v4

    goto :goto_d4

    :cond_af
    if-ne v12, v8, :cond_d1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->FH()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->FH()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v11

    int-to-long v13, v11

    move/from16 p1, v4

    const/4 v11, 0x0

    :goto_c3
    int-to-long v3, v11

    cmp-long v15, v3, v13

    if-gez v15, :cond_ce

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_c3

    :cond_ce
    move v14, v10

    const/4 v13, 0x0

    goto :goto_d6

    :cond_d1
    move/from16 p1, v4

    const/4 v10, 0x0

    :goto_d4
    move v13, v10

    const/4 v14, 0x0

    :goto_d6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v10

    if-nez v10, :cond_ed

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    :cond_ed
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/MD;->DW(I)V

    add-int/2addr v3, v8

    shl-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v7, v10, 0x2

    add-int/2addr v4, v8

    mul-int v4, v4, v7

    shl-int/lit8 v4, v4, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v11

    if-eqz v11, :cond_12a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->DW()I

    move-result v17

    if-nez v2, :cond_113

    goto :goto_120

    :cond_113
    const/16 v18, 0x2

    if-ne v2, v6, :cond_119

    const/4 v6, 0x1

    goto :goto_11a

    :cond_119
    const/4 v6, 0x2

    :goto_11a
    if-ne v2, v8, :cond_11d

    const/4 v8, 0x2

    :cond_11d
    mul-int v7, v7, v8

    move v8, v6

    :goto_120
    add-int/2addr v11, v15

    mul-int v11, v11, v8

    sub-int/2addr v3, v11

    add-int v16, v16, v17

    mul-int v16, v16, v7

    sub-int v4, v4, v16

    :cond_12a
    move v6, v3

    move v7, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_177

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v2

    if-eqz v2, :cond_177

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_156

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v0

    if-eqz v1, :cond_154

    if-eqz v0, :cond_154

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v3, v1, v0

    :cond_154
    move v8, v3

    goto :goto_179

    :cond_156
    sget-object v0, Lcom/google/android/gms/internal/ads/ID;->DW:[F

    array-length v2, v0

    if-ge v1, v2, :cond_15f

    aget v0, v0, v1

    move v8, v0

    goto :goto_179

    :cond_15f
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "NalUnitUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_177
    const/high16 v8, 0x3f800000  # 1.0f

    :goto_179
    new-instance v0, Lcom/google/android/gms/internal/ads/JD;

    add-int/lit8 v11, p1, 0x4

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/ads/JD;-><init>(IIIFZZIIIZ)V

    return-object v0
.end method

.method public static j6(Ljava/nio/ByteBuffer;)V
    .registers 10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    const/4 v3, 0x0

    :cond_39
    move v2, v4

    goto :goto_7

    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static j6(Ljava/lang/String;B)Z
    .registers 5

    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1d

    :cond_e
    const-string v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    :cond_1d
    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
