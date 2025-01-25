.class public final Lcom/blankj/utilcode/util/SizeUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyDimension(FI)F
    .registers 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_26

    const/4 v1, 0x4

    if-eq p1, v1, :cond_23

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1b

    const/4 p0, 0x0

    :cond_1a
    :goto_1a
    return p0

    :cond_1b
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p0, v0

    const v0, 0x3d214285

    :goto_21
    mul-float/2addr p0, v0

    goto :goto_1a

    :cond_23
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_21

    :cond_26
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p0, v0

    const v0, 0x3c638e39

    goto :goto_21

    :cond_2d
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    goto :goto_21

    :cond_30
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_21
.end method

.method public static dp2px(F)I
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static forceGetViewSize(Landroid/view/View;Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;)V
    .registers 3

    new-instance v0, Lcom/blankj/utilcode/util/SizeUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/SizeUtils$1;-><init>(Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getMeasuredHeight(Landroid/view/View;)I
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->measureView(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getMeasuredWidth(Landroid/view/View;)I
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->measureView(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static measureView(Landroid/view/View;)[I
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_e
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_32

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1e
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0

    :cond_32
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1e
.end method

.method public static px2dp(F)I
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static px2sp(F)I
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static sp2px(F)I
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
