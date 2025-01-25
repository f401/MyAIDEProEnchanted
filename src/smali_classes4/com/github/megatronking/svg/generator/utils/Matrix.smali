.class public Lcom/github/megatronking/svg/generator/utils/Matrix;
.super Ljava/lang/Object;


# static fields
.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field private final MATRIX:[F


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    int-to-float v1, v4

    aput v1, v0, v3

    int-to-float v1, v3

    aput v1, v0, v4

    const/4 v1, 0x2

    int-to-float v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    int-to-float v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    int-to-float v2, v4

    aput v2, v0, v1

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    return-void
.end method


# virtual methods
.method public getValues([F)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_10

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v0, v0, v2

    aput v0, p1, v2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v0, v0, v3

    aput v0, p1, v3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v0, v0, v4

    aput v0, p1, v4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v0, v0, v5

    aput v0, p1, v5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v0, v0, v6

    aput v0, p1, v6

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    aput v1, p1, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, p1, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    aput v1, p1, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    aput v1, p1, v0

    return-void
.end method

.method public mapVector(FF)[F
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p1, v0, v3

    aput p2, v0, v4

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v1, v1, v3

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v2, v2, v4

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v0, v4

    return-object v0
.end method

.method public mapVectors([F)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    move v0, v1

    :goto_a
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_8

    mul-int/lit8 v2, v0, 0x2

    aget v2, p1, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-virtual {p0, v2, v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;->mapVector(FF)[F

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    aget v4, v2, v1

    aput v4, p1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    aget v2, v2, v4

    aput v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public postRotate(FFF)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v3, 0x9

    new-array v3, v3, [F

    aput v0, v3, v7

    neg-float v4, v2

    aput v4, v3, v8

    const/4 v4, 0x2

    neg-float v5, p2

    mul-float/2addr v5, v0

    mul-float v6, p3, v2

    add-float/2addr v5, v6

    add-float/2addr v5, p2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    const/4 v4, 0x4

    aput v0, v3, v4

    const/4 v4, 0x5

    neg-float v5, p2

    mul-float/2addr v2, v5

    mul-float/2addr v0, p3

    sub-float v0, v2, v0

    add-float/2addr v0, p3

    aput v0, v3, v4

    const/4 v0, 0x6

    int-to-float v2, v7

    aput v2, v3, v0

    const/4 v0, 0x7

    int-to-float v2, v7

    aput v2, v3, v0

    const/16 v0, 0x8

    int-to-float v2, v8

    aput v2, v3, v0

    invoke-virtual {v1, v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    invoke-virtual {v0, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    invoke-virtual {p0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->set(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    return-void
.end method

.method public postScale(FF)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    aput p1, v1, v4

    int-to-float v2, v4

    aput v2, v1, v5

    const/4 v2, 0x2

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p2, v1, v2

    const/4 v2, 0x5

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0x8

    int-to-float v3, v5

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    new-instance v1, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    invoke-virtual {v1, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->set(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    return-void
.end method

.method public postTranslate(FF)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    int-to-float v2, v5

    aput v2, v1, v4

    int-to-float v2, v4

    aput v2, v1, v5

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, v5

    aput v3, v1, v2

    const/4 v2, 0x5

    aput p2, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0x8

    int-to-float v3, v5

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    new-instance v1, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    invoke-virtual {v1, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->set(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    return-void
.end method

.method public preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V
    .registers 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/Matrix;",
            ")V"
        }
    .end annotation

    const/16 v2, 0x9

    new-array v2, v2, [F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    aget v4, v2, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x3

    aget v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    const/4 v8, 0x6

    aget v8, v2, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, 0x4

    aget v12, v2, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    const/4 v14, 0x7

    aget v14, v2, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    const/16 v16, 0x2

    aget v16, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    const/16 v18, 0x5

    aget v18, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    const/16 v20, 0x8

    aget v20, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    const/16 v22, 0x0

    aget v22, v2, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget v23, v23, v24

    const/16 v24, 0x3

    aget v24, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v25, v0

    const/16 v26, 0x5

    aget v25, v25, v26

    const/16 v26, 0x6

    aget v26, v2, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget v27, v27, v28

    const/16 v28, 0x1

    aget v28, v2, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget v29, v29, v30

    const/16 v30, 0x4

    aget v30, v2, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v31, v0

    const/16 v32, 0x5

    aget v31, v31, v32

    const/16 v32, 0x7

    aget v32, v2, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget v33, v33, v34

    const/16 v34, 0x2

    aget v34, v2, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v35, v0

    const/16 v36, 0x4

    aget v35, v35, v36

    const/16 v36, 0x5

    aget v36, v2, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v37, v0

    const/16 v38, 0x5

    aget v37, v37, v38

    const/16 v38, 0x8

    aget v38, v2, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v39, v0

    const/16 v40, 0x6

    aget v39, v39, v40

    const/16 v40, 0x0

    aget v40, v2, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v41, v0

    const/16 v42, 0x7

    aget v41, v41, v42

    const/16 v42, 0x3

    aget v42, v2, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v43, v0

    const/16 v44, 0x8

    aget v43, v43, v44

    const/16 v44, 0x6

    aget v44, v2, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v45, v0

    const/16 v46, 0x6

    aget v45, v45, v46

    const/16 v46, 0x1

    aget v46, v2, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v47, v0

    const/16 v48, 0x7

    aget v47, v47, v48

    const/16 v48, 0x4

    aget v48, v2, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v49, v0

    const/16 v50, 0x8

    aget v49, v49, v50

    const/16 v50, 0x7

    aget v50, v2, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v51, v0

    const/16 v52, 0x6

    aget v51, v51, v52

    const/16 v52, 0x2

    aget v52, v2, v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v53, v0

    const/16 v54, 0x7

    aget v53, v53, v54

    const/16 v54, 0x5

    aget v54, v2, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    move-object/from16 v55, v0

    const/16 v56, 0x8

    aget v55, v55, v56

    const/16 v56, 0x9

    move/from16 v0, v56

    new-array v0, v0, [F

    move-object/from16 v56, v0

    const/16 v57, 0x0

    mul-float/2addr v3, v4

    mul-float v4, v5, v6

    add-float/2addr v3, v4

    mul-float v4, v7, v8

    add-float/2addr v3, v4

    aput v3, v56, v57

    const/4 v3, 0x1

    mul-float v4, v9, v10

    mul-float v5, v11, v12

    add-float/2addr v4, v5

    mul-float v5, v13, v14

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/4 v3, 0x2

    mul-float v4, v15, v16

    mul-float v5, v17, v18

    add-float/2addr v4, v5

    mul-float v5, v19, v20

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/4 v3, 0x3

    mul-float v4, v21, v22

    mul-float v5, v23, v24

    add-float/2addr v4, v5

    mul-float v5, v25, v26

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/4 v3, 0x4

    mul-float v4, v27, v28

    mul-float v5, v29, v30

    add-float/2addr v4, v5

    mul-float v5, v31, v32

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/4 v3, 0x5

    mul-float v4, v33, v34

    mul-float v5, v35, v36

    add-float/2addr v4, v5

    mul-float v5, v37, v38

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/4 v3, 0x6

    mul-float v4, v39, v40

    mul-float v5, v41, v42

    add-float/2addr v4, v5

    mul-float v5, v43, v44

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/4 v3, 0x7

    mul-float v4, v45, v46

    mul-float v5, v47, v48

    add-float/2addr v4, v5

    mul-float v5, v49, v50

    add-float/2addr v4, v5

    aput v4, v56, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget v2, v2, v4

    mul-float v2, v2, v55

    mul-float v4, v51, v52

    mul-float v5, v53, v54

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    aput v2, v56, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public reset()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    int-to-float v1, v4

    aput v1, v0, v3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    int-to-float v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x2

    int-to-float v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x3

    int-to-float v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x4

    int-to-float v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x5

    int-to-float v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x6

    int-to-float v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x7

    int-to-float v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/16 v1, 0x8

    int-to-float v2, v4

    aput v2, v0, v1

    return-void
.end method

.method public set(Lcom/github/megatronking/svg/generator/utils/Matrix;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/Matrix;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->reset()V

    :goto_5
    return-void

    :cond_6
    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p1, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    goto :goto_5
.end method

.method public setRotate(FFF)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0x9

    new-array v3, v3, [F

    aput v2, v3, v7

    neg-float v4, v1

    aput v4, v3, v8

    const/4 v4, 0x2

    neg-float v5, p2

    mul-float/2addr v5, v2

    mul-float v6, p3, v1

    add-float/2addr v5, v6

    add-float/2addr v5, p2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v4, 0x5

    neg-float v5, p2

    mul-float/2addr v1, v5

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    aput v1, v3, v4

    const/4 v1, 0x6

    int-to-float v2, v7

    aput v2, v3, v1

    const/4 v1, 0x7

    int-to-float v2, v7

    aput v2, v3, v1

    const/16 v1, 0x8

    int-to-float v2, v8

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    return-void
.end method

.method public setScale(FF)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    aput p1, v1, v4

    int-to-float v2, v4

    aput v2, v1, v5

    const/4 v2, 0x2

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p2, v1, v2

    const/4 v2, 0x5

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0x8

    int-to-float v3, v5

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    return-void
.end method

.method public setTranslate(FF)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    int-to-float v2, v5

    aput v2, v1, v4

    int-to-float v2, v4

    aput v2, v1, v5

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, v5

    aput v3, v1, v2

    const/4 v2, 0x5

    aput p2, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0x8

    int-to-float v3, v5

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->setValues([F)V

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    return-void
.end method

.method public setValues([F)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_10

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v1, p1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v1, p1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v1, p1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v1, p1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    aget v1, p1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/4 v1, 0x7

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/Matrix;->MATRIX:[F

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget v2, p1, v2

    aput v2, v0, v1

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->getValues([F)V

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Matrix{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/utils/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
