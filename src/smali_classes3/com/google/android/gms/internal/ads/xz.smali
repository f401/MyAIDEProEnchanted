.class final Lcom/google/android/gms/internal/ads/xz;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private EQ:I

.field private final FH:I

.field private final Hw:I

.field private J0:I

.field private J8:I

.field private Mr:I

.field private QX:F

.field private U2:I

.field private VH:I

.field private Ws:F

.field private XL:I

.field private final Zo:[S

.field private a8:I

.field private aM:I

.field private gn:[S

.field private j3:I

.field private final j6:I

.field private lg:I

.field private rN:I

.field private tp:[S

.field private u7:I

.field private final v5:I

.field private we:[S


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    mul-int p2, p2, p1

    new-array v0, p2, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    new-array v0, p2, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    new-array p1, p2, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    return-void
.end method

.method private final DW(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    add-int/2addr v0, p1

    if-le v0, v1, :cond_19

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    :cond_19
    return-void
.end method

.method private final DW([SII)V
    .registers 12

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    div-int/2addr v0, p3

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int p3, p3, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_24

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, p3, :cond_1b

    mul-int v6, v3, p3

    mul-int v7, p2, v1

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    aget-short v6, p1, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    div-int/2addr v5, p3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_24
    return-void
.end method

.method private final FH()V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    div-float/2addr v2, v3

    float-to-double v3, v2

    const-wide v5, 0x3ff0000a7c5ac472L  # 1.00001

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpl-double v10, v3, v5

    if-gtz v10, :cond_2c

    const-wide v5, 0x3fefffeb074a771dL  # 0.99999

    cmpg-double v10, v3, v5

    if-gez v10, :cond_21

    goto :goto_2c

    :cond_21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    invoke-direct {v0, v2, v8, v3}, Lcom/google/android/gms/internal/ads/xz;->j6([SII)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    goto/16 :goto_171

    :cond_2c
    :goto_2c
    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    if-lt v5, v6, :cond_171

    const/4 v6, 0x0

    :goto_33
    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    if-lez v10, :cond_4a

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    invoke-direct {v0, v11, v6, v10}, Lcom/google/android/gms/internal/ads/xz;->j6([SII)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    sub-int/2addr v11, v10

    iput v11, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    add-int/2addr v6, v10

    goto/16 :goto_158

    :cond_4a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->j6:I

    const/16 v12, 0xfa0

    if-le v11, v12, :cond_55

    div-int/lit16 v11, v11, 0xfa0

    goto :goto_56

    :cond_55
    const/4 v11, 0x1

    :goto_56
    iget v12, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    if-ne v12, v9, :cond_65

    if-ne v11, v9, :cond_65

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    invoke-direct {v0, v10, v6, v11, v12}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v10

    goto :goto_9b

    :cond_65
    invoke-direct {v0, v10, v6, v11}, Lcom/google/android/gms/internal/ads/xz;->DW([SII)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    iget v13, v0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    div-int/2addr v13, v11

    iget v14, v0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    div-int/2addr v14, v11

    invoke-direct {v0, v12, v8, v13, v14}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v12

    if-eq v11, v9, :cond_9a

    mul-int v12, v12, v11

    shl-int/lit8 v11, v11, 0x2

    sub-int v13, v12, v11

    add-int/2addr v12, v11

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    if-ge v13, v11, :cond_82

    move v13, v11

    :cond_82
    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    if-le v12, v11, :cond_87

    move v12, v11

    :cond_87
    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    if-ne v11, v9, :cond_90

    invoke-direct {v0, v10, v6, v13, v12}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v10

    goto :goto_9b

    :cond_90
    invoke-direct {v0, v10, v6, v9}, Lcom/google/android/gms/internal/ads/xz;->DW([SII)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    invoke-direct {v0, v10, v8, v13, v12}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v10

    goto :goto_9b

    :cond_9a
    move v10, v12

    :goto_9b
    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->lg:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/xz;->rN:I

    if-eqz v11, :cond_b6

    iget v13, v0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    if-nez v13, :cond_a6

    goto :goto_b6

    :cond_a6
    mul-int/lit8 v13, v11, 0x3

    if-le v12, v13, :cond_ab

    goto :goto_b6

    :cond_ab
    shl-int/lit8 v12, v11, 0x1

    iget v13, v0, Lcom/google/android/gms/internal/ads/xz;->a8:I

    mul-int/lit8 v13, v13, 0x3

    if-gt v12, v13, :cond_b4

    goto :goto_b6

    :cond_b4
    const/4 v12, 0x1

    goto :goto_b7

    :cond_b6
    :goto_b6
    const/4 v12, 0x0

    :goto_b7
    if-eqz v12, :cond_bd

    iget v12, v0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    move v15, v12

    goto :goto_be

    :cond_bd
    move v15, v10

    :goto_be
    iput v11, v0, Lcom/google/android/gms/internal/ads/xz;->a8:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    const/high16 v12, 0x40000000  # 2.0f

    cmpl-double v13, v3, v10

    if-lez v13, :cond_105

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    cmpl-float v10, v2, v12

    if-ltz v10, :cond_d7

    int-to-float v10, v15

    sub-float v11, v2, v7

    div-float/2addr v10, v11

    float-to-int v10, v10

    move v13, v10

    goto :goto_e2

    :cond_d7
    int-to-float v10, v15

    sub-float/2addr v12, v2

    mul-float v10, v10, v12

    sub-float v11, v2, v7

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    move v13, v15

    :goto_e2
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v17, v6, v15

    move/from16 v16, v10

    move v10, v13

    move/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move v9, v15

    move v15, v6

    invoke-static/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/xz;->j6(II[SI[SI[SI)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v10, v10, v18

    iput v10, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v15, v9, v18

    add-int/2addr v6, v15

    goto :goto_158

    :cond_105
    move v9, v15

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    const/high16 v10, 0x3f000000  # 0.5f

    cmpg-float v10, v2, v10

    if-gez v10, :cond_118

    int-to-float v10, v9

    mul-float v10, v10, v2

    sub-float v11, v7, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    move/from16 v18, v10

    goto :goto_126

    :cond_118
    int-to-float v10, v9

    mul-float v12, v12, v2

    sub-float/2addr v12, v7

    mul-float v10, v10, v12

    sub-float v11, v7, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    move/from16 v18, v9

    :goto_126
    add-int v14, v9, v18

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v11, v6, v10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v13, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    mul-int v13, v13, v10

    mul-int v10, v10, v9

    invoke-static {v15, v11, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v13, v10, v9

    add-int/2addr v9, v6

    move/from16 v10, v18

    move/from16 v19, v14

    move-object v14, v15

    move-object/from16 v16, v15

    move v15, v9

    move/from16 v17, v6

    invoke-static/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/xz;->j6(II[SI[SI[SI)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v9, v9, v19

    iput v9, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v6, v6, v18

    :goto_158
    iget v9, v0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    add-int/2addr v9, v6

    if-le v9, v5, :cond_16e

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    sub-int/2addr v2, v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v6, v6, v4

    mul-int v4, v4, v2

    invoke-static {v3, v6, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    goto :goto_171

    :cond_16e
    const/4 v9, 0x1

    goto/16 :goto_33

    :cond_171
    :goto_171
    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_23f

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    if-eq v3, v1, :cond_23f

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->j6:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    :goto_180
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_238

    if-le v3, v4, :cond_188

    goto/16 :goto_238

    :cond_188
    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    sub-int/2addr v4, v1

    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    add-int/2addr v5, v4

    if-le v5, v6, :cond_1a4

    div-int/lit8 v5, v6, 0x2

    add-int/2addr v5, v4

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    iget v7, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v6, v6, v7

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    :cond_1a4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v7, v1, v6

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    mul-int v10, v10, v6

    mul-int v6, v6, v4

    invoke-static {v5, v7, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    const/4 v1, 0x0

    :goto_1bd
    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_224

    :goto_1c3
    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    mul-int v7, v4, v2

    mul-int v9, v5, v3

    if-le v7, v9, :cond_211

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    const/4 v4, 0x0

    :goto_1d3
    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    if-ge v4, v5, :cond_205

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v7, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    aget-short v11, v9, v10

    add-int/2addr v10, v5

    aget-short v9, v9, v10

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    add-int/lit8 v13, v12, 0x1

    mul-int v13, v13, v2

    mul-int v10, v10, v3

    sub-int v10, v13, v10

    mul-int v12, v12, v2

    sub-int/2addr v13, v12

    mul-int v7, v7, v5

    add-int/2addr v7, v4

    mul-int v11, v11, v10

    sub-int v5, v13, v10

    mul-int v5, v5, v9

    add-int/2addr v11, v5

    div-int/2addr v11, v13

    int-to-short v5, v11

    aput-short v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d3

    :cond_205
    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    goto :goto_1c3

    :cond_211
    iput v4, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    if-ne v4, v3, :cond_221

    iput v8, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    if-ne v5, v2, :cond_21b

    const/4 v4, 0x1

    goto :goto_21c

    :cond_21b
    const/4 v4, 0x0

    :goto_21c
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    :cond_221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bd

    :cond_224
    if-eqz v5, :cond_23f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v3, v5, v2

    sub-int/2addr v4, v5

    mul-int v4, v4, v2

    invoke-static {v1, v3, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    goto :goto_23f

    :cond_238
    :goto_238
    const/4 v6, 0x1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_180

    :cond_23f
    :goto_23f
    return-void
.end method

.method private final j6([SIII)I
    .registers 14

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-gt p3, p4, :cond_36

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v5, p3, :cond_23

    add-int v7, p2, v5

    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    aget-short v8, p1, v8

    if-lt v7, v8, :cond_1d

    sub-int/2addr v7, v8

    goto :goto_1f

    :cond_1d
    sub-int v7, v8, v7

    :goto_1f
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_23
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2b

    move v3, p3

    move v0, v6

    :cond_2b
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_33

    move v2, p3

    move v4, v6

    :cond_33
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_36
    div-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->lg:I

    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/xz;->rN:I

    return v3
.end method

.method private final j6(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    add-int/2addr v0, p1

    if-le v0, v1, :cond_19

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    :cond_19
    return-void
.end method

.method private static j6(II[SI[SI[SI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_28

    mul-int v2, p5, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p3, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, p0, :cond_25

    aget-short v6, p4, v2

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v4

    add-int/2addr v4, p1

    add-int/2addr v2, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method private final j6([SII)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int p2, p2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    mul-int v2, v2, v0

    mul-int v0, v0, p3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    return v0
.end method

.method public final DW(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    return-void
.end method

.method public final DW(Ljava/nio/ShortBuffer;)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v0, v0, v2

    mul-int p1, p1, v2

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final j6()V
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v3, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/xz;->DW(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1f
    iget v4, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/lit8 v4, v4, 0x2

    mul-int v6, v4, v5

    if-ge v2, v6, :cond_33

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    mul-int v5, v5, v0

    add-int/2addr v5, v2

    aput-short v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xz;->FH()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    if-le v0, v3, :cond_41

    iput v3, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    :cond_41
    iput v1, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    return-void
.end method

.method public final j6(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    return-void
.end method

.method public final j6(Ljava/nio/ShortBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    div-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/xz;->DW(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v3, v3, v4

    mul-int v1, v1, v0

    shl-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xz;->FH()V

    return-void
.end method
