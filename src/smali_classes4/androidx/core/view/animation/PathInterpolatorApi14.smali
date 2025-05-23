.class Landroidx/core/view/animation/PathInterpolatorApi14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method constructor <init>(FF)V
    .registers 4

    invoke-static {p1, p2}, Landroidx/core/view/animation/PathInterpolatorApi14;->createQuad(FF)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method constructor <init>(FFFF)V
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/animation/PathInterpolatorApi14;->createCubic(FFFF)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const v0, 0x3b03126f  # 0.002f

    div-float v0, v3, v0

    float-to-int v0, v0

    add-int/lit8 v4, v0, 0x1

    new-array v0, v4, [F

    iput-object v0, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    new-array v0, v4, [F

    iput-object v0, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    const/4 v0, 0x2

    new-array v5, v0, [F

    move v0, v1

    :goto_21
    if-ge v0, v4, :cond_3d

    int-to-float v6, v0

    mul-float/2addr v6, v3

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v6, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    aget v7, v5, v1

    aput v7, v6, v0

    iget-object v6, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    const/4 v7, 0x1

    aget v7, v5, v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3d
    return-void
.end method

.method private static createCubic(FFFF)Landroid/graphics/Path;
    .registers 11

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method private static createQuad(FF)Landroid/graphics/Path;
    .registers 5

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p0, p1, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_8

    :goto_7
    return v0

    :cond_8
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_e

    move v0, v1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_15
    sub-int v2, v3, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_2a

    add-int v2, v1, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    aget v4, v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_28

    move v3, v2

    goto :goto_15

    :cond_28
    move v1, v2

    goto :goto_15

    :cond_2a
    iget-object v2, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    aget v4, v2, v3

    aget v5, v2, v1

    sub-float/2addr v4, v5

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    aget v0, v0, v1

    goto :goto_7

    :cond_3a
    aget v0, v2, v1

    sub-float v0, p1, v0

    div-float/2addr v0, v4

    iget-object v2, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    aget v1, v2, v1

    aget v2, v2, v3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_7
.end method
