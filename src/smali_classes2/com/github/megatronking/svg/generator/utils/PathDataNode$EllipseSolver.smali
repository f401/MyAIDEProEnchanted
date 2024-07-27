.class Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/megatronking/svg/generator/utils/PathDataNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EllipseSolver"
.end annotation


# instance fields
.field private mDirectionChanged:Z

.field private mDstMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

.field private mDstMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

.field private mDstMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

.field private mMajorAxis:F

.field private mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

.field private mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

.field private mMinorAxis:F

.field private mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

.field private mRotationDegree:F


# direct methods
.method constructor <init>(Lcom/github/megatronking/svg/generator/utils/AffineTransform;FFFFFFFFF)V
    .registers 27

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxis:F

    const/4 v1, 0x0

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxis:F

    const/4 v1, 0x0

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mRotationDegree:F

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v1, p7, v1

    if-nez v1, :cond_0

    const/4 v7, 0x0

    :goto_0
    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v1, p8, v1

    if-nez v1, :cond_1

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->computeOriginalCenter(FFFFFZZFF)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v7

    iget v5, v7, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget v6, v7, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v1 .. v6}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->computeControlPoints(FFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    const/4 v1, 0x0

    check-cast v1, Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    const/4 v1, 0x0

    check-cast v1, Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    const/4 v1, 0x0

    check-cast v1, Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    const/4 v1, 0x0

    check-cast v1, Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/megatronking/svg/generator/utils/Point;->getX()F

    move-result v8

    invoke-virtual {v1}, Lcom/github/megatronking/svg/generator/utils/Point;->getY()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v10, v1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v11, v1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v12, v1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v13, v1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v14, v1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v15, v1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDstMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->computeDirectionChange(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDirectionChanged:Z

    sub-float v2, v10, v8

    sub-float v3, v11, v9

    sub-float v4, v12, v8

    sub-float v5, v13, v9

    sub-float v6, v14, v8

    sub-float v7, v15, v9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->computeABThetaFromControlPoints(FFFFFF)V

    return-void

    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method static synthetic access$1000027(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F
    .registers 2

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->getMajorAxis()F

    move-result v0

    return v0
.end method

.method static synthetic access$1000028(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F
    .registers 2

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->getMinorAxis()F

    move-result v0

    return v0
.end method

.method static synthetic access$1000029(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F
    .registers 2

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->getRotationDegree()F

    move-result v0

    return v0
.end method

.method static synthetic access$1000030(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)Z
    .registers 2

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->getDirectionChanged()Z

    move-result v0

    return v0
.end method

.method private computeABThetaFromControlPoints(FFFFFF)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)V"
        }
    .end annotation

    mul-float v2, p1, p1

    mul-float v3, p1, p2

    mul-float v4, p2, p2

    mul-float v5, p3, p3

    mul-float v6, p3, p4

    mul-float v7, p4, p4

    mul-float v8, p5, p5

    mul-float v9, p5, p6

    mul-float v10, p6, p6

    mul-float v11, v4, v6

    mul-float/2addr v11, v8

    mul-float v12, v3, v7

    mul-float/2addr v12, v8

    sub-float/2addr v11, v12

    mul-float v12, v4, v5

    mul-float/2addr v12, v9

    sub-float/2addr v11, v12

    mul-float v12, v2, v7

    mul-float/2addr v12, v9

    add-float/2addr v11, v12

    mul-float v12, v3, v5

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    mul-float v12, v2, v6

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    neg-float v11, v11

    const/4 v12, 0x0

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    neg-float v12, v4

    mul-float/2addr v12, v6

    mul-float v13, v3, v7

    add-float/2addr v12, v13

    mul-float v13, v4, v9

    add-float/2addr v12, v13

    mul-float v13, v7, v9

    sub-float/2addr v12, v13

    mul-float v13, v3, v10

    sub-float/2addr v12, v13

    mul-float v13, v6, v10

    add-float/2addr v12, v13

    div-float/2addr v12, v11

    mul-float v13, v4, v5

    mul-float v14, v2, v7

    sub-float/2addr v13, v14

    mul-float/2addr v4, v8

    sub-float v4, v13, v4

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    mul-float v7, v2, v10

    add-float/2addr v4, v7

    mul-float v7, v5, v10

    sub-float/2addr v4, v7

    div-float/2addr v4, v11

    mul-float v7, v3, v5

    mul-float v10, v2, v6

    sub-float/2addr v7, v10

    mul-float/2addr v3, v8

    sub-float v3, v7, v3

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    mul-float v3, v5, v9

    sub-float/2addr v2, v3

    neg-float v3, v11

    div-float/2addr v2, v3

    sub-float v3, v12, v2

    const/4 v5, 0x0

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-nez v3, :cond_2

    move/from16 v0, p3

    float-to-double v2, v0

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxis:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxis:F

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxis:F

    const/4 v2, 0x0

    int-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mRotationDegree:F

    goto :goto_0

    :cond_2
    sub-float v3, v12, v2

    div-float v3, v4, v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v3, v6

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float v5, v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const/4 v8, 0x0

    int-to-double v8, v8

    cmpg-double v6, v6, v8

    if-nez v6, :cond_3

    const/4 v3, 0x1

    int-to-float v3, v3

    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxis:F

    const/4 v2, 0x1

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxis:F

    const/4 v2, 0x0

    int-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mRotationDegree:F

    goto/16 :goto_0

    :cond_3
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    div-float v3, v4, v3

    add-float v4, v12, v2

    add-float/2addr v3, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v12

    sub-float/2addr v2, v3

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    int-to-float v4, v4

    div-float v3, v4, v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    iput v3, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxis:F

    const/4 v3, 0x1

    int-to-float v3, v3

    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxis:F

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v4, v5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mRotationDegree:F

    goto/16 :goto_0
.end method

.method private computeControlPoints(FFFFF)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {v0, p1, v1}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {v0, v1, p2}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {p0, v0, p3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->rotatePoint2D(Lcom/github/megatronking/svg/generator/utils/Point;F)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {p0, v0, p3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->rotatePoint2D(Lcom/github/megatronking/svg/generator/utils/Point;F)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    add-float/2addr v1, p4

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    add-float/2addr v1, p5

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    add-float/2addr v1, p4

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxisPoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    add-float/2addr v1, p5

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    const/16 v0, 0x2d

    int-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, p2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Lcom/github/megatronking/svg/generator/utils/Point;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>(FF)V

    iput-object v2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {p0, v0, p3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->rotatePoint2D(Lcom/github/megatronking/svg/generator/utils/Point;F)Lcom/github/megatronking/svg/generator/utils/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    add-float/2addr v1, p4

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMiddlePoint:Lcom/github/megatronking/svg/generator/utils/Point;

    iget v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    add-float/2addr v1, p5

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return-void
.end method

.method private computeDirectionChange(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->getCrossProduct(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)F

    move-result v1

    invoke-direct {p0, p4, p5, p6}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->getCrossProduct(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)F

    move-result v2

    mul-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private computeOriginalCenter(FFFFFZZFF)Lcom/github/megatronking/svg/generator/utils/Point;
    .registers 23

    new-instance v3, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {v3}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>()V

    move/from16 v0, p5

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v0, p5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    sub-float v2, p1, p8

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float v6, p2, p9

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v7, v4, v2

    mul-float v8, v5, v6

    add-float/2addr v7, v8

    mul-float/2addr v6, v4

    neg-float v8, v5

    mul-float/2addr v2, v8

    add-float/2addr v6, v2

    mul-float v2, p3, p3

    mul-float v8, p4, p4

    mul-float v9, v7, v7

    mul-float v10, v6, v6

    mul-float v11, v2, v8

    mul-float v12, v2, v10

    sub-float/2addr v11, v12

    mul-float v12, v8, v9

    sub-float/2addr v11, v12

    mul-float/2addr v2, v10

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    div-float v2, v11, v2

    const/4 v8, 0x0

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    const/4 v2, 0x0

    int-to-float v2, v2

    :cond_0
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    if-nez p6, :cond_2

    if-nez p7, :cond_1

    :goto_0
    neg-float v2, v2

    :cond_1
    mul-float v8, v2, p3

    mul-float/2addr v6, v8

    div-float v6, v6, p4

    neg-float v2, v2

    mul-float v2, v2, p4

    mul-float/2addr v2, v7

    div-float v2, v2, p3

    add-float v7, p1, p8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float v8, p2, p9

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v9, v4, v6

    mul-float v10, v5, v2

    sub-float/2addr v9, v10

    add-float/2addr v7, v9

    iput v7, v3, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    mul-float/2addr v2, v4

    mul-float v4, v5, v6

    add-float/2addr v2, v4

    add-float/2addr v2, v8

    iput v2, v3, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return-object v3

    :cond_2
    if-eqz p7, :cond_1

    goto :goto_0
.end method

.method private getCrossProduct(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)F
    .registers 11

    iget v0, p2, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget v1, p1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget v2, p2, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    iget v3, p1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    iget v4, p3, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget v5, p1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    iget v6, p1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    sub-float/2addr v1, v6

    mul-float/2addr v0, v1

    sub-float v1, v2, v3

    sub-float v2, v4, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getDirectionChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mDirectionChanged:Z

    return v0
.end method

.method private getMajorAxis()F
    .registers 2

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMajorAxis:F

    return v0
.end method

.method private getMinorAxis()F
    .registers 2

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mMinorAxis:F

    return v0
.end method

.method private getRotationDegree()F
    .registers 2

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->mRotationDegree:F

    return v0
.end method

.method private rotatePoint2D(Lcom/github/megatronking/svg/generator/utils/Point;F)Lcom/github/megatronking/svg/generator/utils/Point;
    .registers 8

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>()V

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    mul-float/2addr v3, v1

    iget v4, p1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget v3, p1, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iget v4, p1, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    mul-float/2addr v1, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return-object v0
.end method
