.class public Lcom/blankj/utilcode/util/ClickUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;,
        Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;,
        Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;,
        Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;,
        Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;,
        Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener$LazyHolder;
    }
.end annotation


# static fields
.field private static final DEBOUNCING_DEFAULT_VALUE:J = 0x3e8L

.field private static final PRESSED_BG_ALPHA_DEFAULT_VALUE:F = 0.9f

.field private static final PRESSED_BG_ALPHA_STYLE:I = 0x4

.field private static final PRESSED_BG_DARK_DEFAULT_VALUE:F = 0.9f

.field private static final PRESSED_BG_DARK_STYLE:I = 0x5

.field private static final PRESSED_VIEW_ALPHA_DEFAULT_VALUE:F = 0.8f

.field private static final PRESSED_VIEW_ALPHA_SRC_TAG:I = -0x3

.field private static final PRESSED_VIEW_ALPHA_TAG:I = -0x2

.field private static final PRESSED_VIEW_SCALE_DEFAULT_VALUE:F = -0.06f

.field private static final PRESSED_VIEW_SCALE_TAG:I = -0x1

.field private static final TIP_DURATION:J = 0x7d0L

.field private static sClickCount:I

.field private static sLastClickMillis:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static applyDebouncing([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V
    .registers 9

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    if-nez v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/blankj/utilcode/util/ClickUtils$1;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ClickUtils$1;-><init>(ZJLandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static applyGlobalDebouncing(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applyGlobalDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applyGlobalDebouncing(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyGlobalDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applyGlobalDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applyDebouncing([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applyGlobalDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyGlobalDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applyPressedBgAlpha(Landroid/view/View;)V
    .registers 2

    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static applyPressedBgAlpha(Landroid/view/View;F)V
    .registers 3

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgStyle(Landroid/view/View;IF)V

    return-void
.end method

.method public static applyPressedBgDark(Landroid/view/View;)V
    .registers 2

    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgDark(Landroid/view/View;F)V

    return-void
.end method

.method public static applyPressedBgDark(Landroid/view/View;F)V
    .registers 3

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgStyle(Landroid/view/View;IF)V

    return-void
.end method

.method private static applyPressedBgStyle(Landroid/view/View;IF)V
    .registers 7

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    neg-int v2, p1

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createStyleDrawable(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static applyPressedViewAlpha(Landroid/view/View;F)V
    .registers 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, -0x3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->getInstance()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public static varargs applyPressedViewAlpha([Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewAlpha([Landroid/view/View;[F)V

    return-void
.end method

.method public static applyPressedViewAlpha([Landroid/view/View;[F)V
    .registers 5

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lt v0, v1, :cond_3

    :cond_2
    aget-object v1, p0, v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewAlpha(Landroid/view/View;F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewAlpha(Landroid/view/View;F)V

    goto :goto_1
.end method

.method public static applyPressedViewScale(Landroid/view/View;F)V
    .registers 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->getInstance()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public static varargs applyPressedViewScale([Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewScale([Landroid/view/View;[F)V

    return-void
.end method

.method public static applyPressedViewScale([Landroid/view/View;[F)V
    .registers 5

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lt v0, v1, :cond_3

    :cond_2
    aget-object v1, p0, v0

    const v2, -0x428a3d71    # -0.06f

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewScale(Landroid/view/View;F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewScale(Landroid/view/View;F)V

    goto :goto_1
.end method

.method public static applySingleDebouncing(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applySingleDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applySingleDebouncing(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applySingleDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applySingleDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applyDebouncing([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static applySingleDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applySingleDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static back2HomeFriendly(Ljava/lang/CharSequence;)V
    .registers 4

    const-wide/16 v0, 0x7d0

    sget-object v2, Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;->DEFAULT:Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;

    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->back2HomeFriendly(Ljava/lang/CharSequence;JLcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;)V

    return-void
.end method

.method public static back2HomeFriendly(Ljava/lang/CharSequence;JLcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/blankj/utilcode/util/ClickUtils;->sLastClickMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    sget v0, Lcom/blankj/utilcode/util/ClickUtils;->sClickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/blankj/utilcode/util/ClickUtils;->sClickCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->startHomeActivity()V

    invoke-interface {p3}, Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;->dismiss()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/blankj/utilcode/util/ClickUtils;->sLastClickMillis:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/blankj/utilcode/util/ClickUtils;->sClickCount:I

    invoke-interface {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;->show(Ljava/lang/CharSequence;J)V

    sput-wide v0, Lcom/blankj/utilcode/util/ClickUtils;->sLastClickMillis:J

    goto :goto_0
.end method

.method private static createAlphaDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->setAlpha(I)V

    return-object v0
.end method

.method private static createDarkDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ClickUtils;->getDarkColorFilter(F)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method

.method private static createStyleDrawable(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createAlphaDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->createAlphaDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v6, [I

    const v3, -0x101009e

    aput v3, v0, v5

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v0, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object p0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createDarkDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static expandClickArea(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1, p1, p1, p1}, Lcom/blankj/utilcode/util/ClickUtils;->expandClickArea(Landroid/view/View;IIII)V

    return-void
.end method

.method public static expandClickArea(Landroid/view/View;IIII)V
    .registers 12

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_0

    const-string v0, "ClickUtils"

    const-string v1, "expandClickArea must have parent view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$2;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/blankj/utilcode/util/ClickUtils$2;-><init>(Landroid/view/View;IIIILandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static getDarkColorFilter(F)Landroid/graphics/ColorMatrixColorFilter;
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v5, v2, v3

    const/4 v3, 0x6

    aput p0, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput v5, v2, v3

    const/16 v3, 0xa

    aput v5, v2, v3

    const/16 v3, 0xb

    aput v5, v2, v3

    const/16 v3, 0xc

    aput p0, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput v5, v2, v3

    const/16 v3, 0x10

    aput v5, v2, v3

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v0
.end method
