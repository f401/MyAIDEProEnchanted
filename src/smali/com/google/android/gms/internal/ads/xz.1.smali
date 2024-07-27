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
    .registers 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/xz;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    mul-int v1, v0, p2

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    mul-int v1, v0, p2

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    iput v2, p0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    iput v3, p0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    return-void
.end method

.method private final DW(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    add-int/2addr v0, p1

    if-le v0, v1, :cond_0

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->VH:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    :cond_0
    return-void
.end method

.method private final DW([SII)V
    .registers 13

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    div-int v4, v0, p3

    iget v5, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v6, p3, v5

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_0

    mul-int v7, v3, v6

    mul-int v8, p2, v5

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    aget-short v7, p1, v7

    add-int/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    div-int/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    int-to-short v0, v0

    aput-short v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final FH()V
    .registers 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    div-float v17, v2, v3

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v2, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v18, v2

    if-gtz v2, :cond_0

    const-wide v2, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v18, v2

    if-gez v2, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_2

    const/4 v7, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v2}, Lcom/google/android/gms/internal/ads/xz;->j6([SII)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    add-int/2addr v7, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    add-int/2addr v2, v7

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    sub-int/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v5, v7, v4

    const/4 v6, 0x0

    mul-int/2addr v4, v2

    invoke-static {v3, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    move/from16 v0, v16

    if-eq v3, v0, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->j6:I

    int-to-float v4, v3

    div-float v2, v4, v2

    float-to-int v2, v2

    move v4, v2

    move v5, v3

    :goto_2
    const/16 v2, 0x4000

    if-gt v4, v2, :cond_3

    const/16 v2, 0x4000

    if-le v5, v2, :cond_10

    :cond_3
    div-int/lit8 v2, v4, 0x2

    div-int/lit8 v3, v5, 0x2

    move v4, v2

    move v5, v3

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/xz;->j6([SII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->j6:I

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_7

    div-int/lit16 v2, v2, 0xfa0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2, v3}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v2

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->lg:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->rN:I

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    if-nez v5, :cond_b

    :cond_6
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    move v13, v3

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->lg:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->a8:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->U2:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v18, v2

    if-lez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v17, v2

    if-ltz v2, :cond_d

    int-to-float v2, v13

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v17, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v9, v7, v13

    move-object v8, v6

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/xz;->j6(II[SI[SI[SI)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr v2, v13

    add-int/2addr v7, v2

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2}, Lcom/google/android/gms/internal/ads/xz;->DW([SII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    div-int/2addr v6, v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    div-int/2addr v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6, v8}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    mul-int v4, v3, v2

    shl-int/lit8 v2, v2, 0x2

    sub-int v3, v4, v2

    add-int/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->FH:I

    if-ge v3, v2, :cond_19

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->Hw:I

    if-le v4, v3, :cond_18

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2, v3}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v2

    goto/16 :goto_4

    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v4}, Lcom/google/android/gms/internal/ads/xz;->DW([SII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/xz;->Zo:[S

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/xz;->j6([SIII)I

    move-result v2

    goto/16 :goto_4

    :cond_a
    move v2, v3

    goto/16 :goto_4

    :cond_b
    mul-int/lit8 v5, v3, 0x3

    if-gt v4, v5, :cond_6

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/xz;->a8:I

    mul-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_6

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_c
    move v13, v2

    goto/16 :goto_6

    :cond_d
    int-to-float v2, v13

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, v3, v17

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v17, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    move v2, v13

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v17, v2

    if-gez v2, :cond_f

    int-to-float v2, v13

    mul-float v2, v2, v17

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v17

    div-float/2addr v2, v3

    float-to-int v8, v2

    :goto_a
    add-int v2, v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v4, v7, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    mul-int/2addr v6, v3

    mul-int/2addr v3, v13

    invoke-static {v12, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int v11, v3, v13

    add-int/2addr v13, v7

    move-object v14, v12

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/xz;->j6(II[SI[SI[SI)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr v7, v8

    goto/16 :goto_0

    :cond_f
    int-to-float v2, v13

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v17

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->Mr:I

    move v8, v13

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    sub-int v2, v2, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    add-int/2addr v3, v2

    if-le v3, v6, :cond_11

    div-int/lit8 v3, v6, 0x2

    add-int/2addr v3, v2

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->EQ:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v7, v16, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    mul-int/2addr v9, v6

    mul-int/2addr v6, v2

    invoke-static {v3, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/xz;->aM:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_16

    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    add-int/lit8 v7, v3, 0x1

    mul-int/2addr v7, v4

    mul-int v8, v6, v5

    if-le v7, v8, :cond_13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    const/4 v3, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    if-ge v3, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    mul-int v10, v2, v6

    add-int/2addr v10, v3

    aget-short v11, v9, v10

    add-int/2addr v10, v6

    aget-short v9, v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    add-int/lit8 v13, v12, 0x1

    mul-int/2addr v13, v4

    mul-int/2addr v10, v5

    sub-int v10, v13, v10

    mul-int/2addr v12, v4

    sub-int v12, v13, v12

    mul-int/2addr v6, v8

    add-int/2addr v6, v3

    mul-int v8, v11, v10

    sub-int v10, v12, v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    div-int/2addr v8, v12

    int-to-short v8, v8

    aput-short v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    goto :goto_c

    :cond_13
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    if-ne v3, v5, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->J0:I

    if-ne v6, v4, :cond_15

    const/4 v3, 0x1

    :goto_e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/xz;->J8:I

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_15
    const/4 v3, 0x0

    goto :goto_e

    :cond_16
    add-int/lit8 v2, v3, -0x1

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/xz;->we:[S

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v6, v2, v5

    const/4 v7, 0x0

    sub-int/2addr v3, v2

    mul-int/2addr v3, v5

    invoke-static {v4, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    :cond_17
    return-void

    :cond_18
    move v3, v4

    goto/16 :goto_9

    :cond_19
    move v2, v3

    goto/16 :goto_8
.end method

.method private final j6([SIII)I
    .registers 16

    const/4 v8, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v9, p2, v0

    const/4 v5, 0x1

    const/16 v3, 0xff

    move v6, v8

    move v2, v8

    move v4, p3

    :goto_0
    if-gt v4, p4, :cond_3

    move v7, v8

    move v1, v8

    :goto_1
    if-ge v7, v4, :cond_1

    add-int v0, v9, v7

    aget-short v0, p1, v0

    add-int v10, v9, v4

    add-int/2addr v10, v7

    aget-short v10, p1, v10

    if-lt v0, v10, :cond_0

    sub-int/2addr v0, v10

    :goto_2
    add-int/2addr v1, v0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_0
    sub-int v0, v10, v0

    goto :goto_2

    :cond_1
    mul-int v0, v1, v6

    mul-int v7, v5, v4

    if-ge v0, v7, :cond_2

    move v5, v1

    move v6, v4

    :cond_2
    mul-int v0, v1, v3

    mul-int v7, v2, v4

    if-le v0, v7, :cond_4

    move v0, v1

    move v3, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    div-int v0, v5, v6

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->lg:I

    div-int v0, v2, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->rN:I

    return v6

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private final j6(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    add-int/2addr v0, p1

    if-le v0, v1, :cond_0

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->u7:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    :cond_0
    return-void
.end method

.method private static j6(II[SI[SI[SI)V
    .registers 16

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, p1, :cond_1

    mul-int v0, p5, p1

    add-int v3, v0, v5

    mul-int v0, p7, p1

    add-int v4, v0, v5

    mul-int v0, p3, p1

    add-int v2, v0, v5

    move v0, v1

    :goto_1
    if-ge v0, p0, :cond_0

    aget-short v6, p4, v3

    sub-int v7, p0, v0

    mul-int/2addr v6, v7

    aget-short v7, p6, v4

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v3, p1

    add-int/2addr v4, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final j6([SII)V
    .registers 8

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/xz;->j6(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int v1, p2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    mul-int/2addr v3, v0

    mul-int/2addr v0, p3

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

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
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/2addr v2, v0

    invoke-virtual {p1, v1, v4, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->tp:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    mul-int/2addr v2, v3

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final j6()V
    .registers 8

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->Ws:F

    iget v3, p0, Lcom/google/android/gms/internal/ads/xz;->QX:F

    div-float/2addr v0, v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    int-to-float v5, v2

    div-float v0, v5, v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/xz;->j3:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int v3, v4, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/xz;->DW(I)V

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/xz;->v5:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/xz;->DW:I

    mul-int/lit8 v6, v4, 0x2

    mul-int/2addr v6, v5

    if-ge v0, v6, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xz;->gn:[S

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    aput-short v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xz;->FH()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    if-le v0, v3, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/ads/xz;->aM:I

    :cond_1
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

    mul-int/2addr v3, v4

    mul-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/xz;->XL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xz;->FH()V

    return-void
.end method
