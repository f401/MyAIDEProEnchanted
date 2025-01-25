.class public Landroidj/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;,
        Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroidj/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field final mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v0}, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/SlidingPaneLayout;->IMPL:Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v0}, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/SlidingPaneLayout;->IMPL:Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v0}, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/SlidingPaneLayout;->IMPL:Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x1

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x33333334

    iput v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    iput-boolean v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42000000  # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    new-instance v1, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidj/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v1}, Landroidj/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v3}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance v1, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {v1, p0}, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidj/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2, v1}, Landroidj/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidj/support/v4/widget/ViewDragHelper$Callback;)Landroidj/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    const/high16 v2, 0x43c80000  # 400.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidj/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroidj/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_c
    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .registers 10

    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_43

    if-eqz p3, :cond_43

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_21

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    :cond_21
    iget-object v2, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    shl-int/lit8 v1, v1, 0x18

    const v4, 0xffffff

    and-int/2addr v4, p3

    or-int/2addr v1, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v1

    if-eq v1, v5, :cond_3f

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v5, v0}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_3f
    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    invoke-static {p1}, Landroidj/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_53

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_53
    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroidj/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Landroidj/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_42
.end method

.method private openPane(Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_d

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1, p2}, Landroidj/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_d
    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private parallaxOtherViews(F)V
    .registers 11

    const/4 v1, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_30

    if-eqz v3, :cond_2d

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_17
    if-gtz v0, :cond_30

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    move v2, v1

    :goto_1f
    if-ge v2, v4, :cond_5d

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v5, v1, :cond_32

    :cond_29
    :goto_29
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    :cond_2d
    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_17

    :cond_30
    move v0, v1

    goto :goto_1a

    :cond_32
    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v1, v8, v1

    iget v6, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v6, v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v6, v8, p1

    iget v7, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v1, v6

    if-eqz v3, :cond_48

    neg-int v1, v1

    :cond_48
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v0, :cond_29

    if-eqz v3, :cond_58

    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v1, v8

    :goto_52
    iget v6, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v5, v1, v6}, Landroidj/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_29

    :cond_58
    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v1, v8, v1

    goto :goto_52

    :cond_5d
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    goto :goto_8
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 16

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_5a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    :goto_55
    return v2

    :cond_56
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    :cond_5a
    if-eqz p2, :cond_68

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_6a

    :goto_62
    invoke-static {p1, p3}, Landroidj/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_68
    const/4 v2, 0x0

    goto :goto_55

    :cond_6a
    neg-int p3, p3

    goto :goto_62
.end method

.method public canSlide()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public closePane()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->abort()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_12
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    :cond_9
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    :cond_9
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    :goto_c
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_1e

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_16
    if-eqz v1, :cond_1a

    if-nez v0, :cond_20

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    :cond_1e
    const/4 v1, 0x0

    goto :goto_16

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int v2, v1, v5

    :goto_38
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1a

    :cond_3f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v1, v2, v5

    goto :goto_38
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    iget-boolean v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_3a

    iget-boolean v3, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v3, :cond_3a

    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :goto_35
    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_3a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_5b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    :goto_44
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v0

    :cond_48
    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_35

    :cond_5b
    iget-boolean v3, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v3, :cond_aa

    iget v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_aa

    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_70

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_70
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_87

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v0, v1

    goto :goto_44

    :cond_87
    const-string v0, "SlidingPaneLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawChild: child view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned null drawing cache"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_44

    :cond_aa
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-virtual {p2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_b3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_44
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getCoveredFadeColor()I
    .registers 2
    .annotation build Landroidj/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2
    .annotation build Landroidj/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SlidingPaneLayout;->IMPL:Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroidj/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1c

    iget-boolean v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_4

    :cond_1c
    move v0, v1

    goto :goto_4
.end method

.method isLayoutRtlSupport()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOpen()Z
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSlideable()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-virtual {v0}, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_1f
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_2d

    if-nez v3, :cond_2d

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_2d

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v0, v5, v6}, Landroidj/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_2d
    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v0, :cond_43

    if-eqz v3, :cond_43

    :cond_37
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_40
    :goto_40
    return v2

    :cond_41
    move v0, v2

    goto :goto_2b

    :cond_43
    const/4 v0, 0x3

    if-eq v3, v0, :cond_48

    if-ne v3, v1, :cond_4e

    :cond_48
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    goto :goto_40

    :cond_4e
    packed-switch v3, :pswitch_data_b0

    :cond_51
    :pswitch_51  #0x1
    move v0, v2

    :goto_52
    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroidj/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_5c

    if-eqz v0, :cond_40

    :cond_5c
    move v2, v1

    goto :goto_40

    :pswitch_5e  #0x0
    iput-boolean v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {v4, v5, v0, v3}, Landroidj/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    goto :goto_52

    :pswitch_82  #0x2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidj/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_51

    cmpl-float v0, v3, v0

    if-lez v0, :cond_51

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    iput-boolean v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    goto :goto_40

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_51  #00000001
        :pswitch_82  #00000002
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 21

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_c
    sub-int v8, p4, p2

    if-eqz v7, :cond_52

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    :goto_14
    if-eqz v7, :cond_57

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v0

    move v1, v0

    :goto_1b
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v10

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_5d

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v0, :cond_5d

    const/high16 v0, 0x3f800000  # 1.0f

    :goto_31
    iput v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_33
    const/4 v0, 0x0

    move v6, v0

    move v2, v4

    move v3, v4

    :goto_37
    if-ge v6, v10, :cond_d7

    invoke-virtual {p0, v6}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5f

    move v0, v2

    :goto_46
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v2, v0

    goto :goto_37

    :cond_4b
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_c

    :cond_52
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    goto :goto_14

    :cond_57
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v0

    move v1, v0

    goto :goto_1b

    :cond_5d
    const/4 v0, 0x0

    goto :goto_31

    :cond_5f
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget-boolean v4, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v4, :cond_bb

    iget v4, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    sub-int v13, v8, v1

    iget v14, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int/2addr v13, v14

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v13, v2

    add-int/2addr v4, v5

    sub-int/2addr v13, v4

    iput v13, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    if-eqz v7, :cond_b6

    iget v4, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_83
    add-int v5, v2, v4

    add-int/2addr v5, v13

    div-int/lit8 v14, v12, 0x2

    add-int/2addr v5, v14

    sub-int v14, v8, v1

    if-le v5, v14, :cond_b9

    const/4 v5, 0x1

    :goto_8e
    iput-boolean v5, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    int-to-float v0, v13

    iget v5, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float/2addr v0, v5

    float-to-int v5, v0

    add-int v0, v4, v5

    add-int/2addr v0, v2

    int-to-float v2, v5

    iget v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v2, 0x0

    :goto_a0
    if-eqz v7, :cond_d2

    sub-int v4, v8, v0

    add-int/2addr v4, v2

    sub-int v2, v4, v12

    :goto_a7
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v11, v2, v9, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    goto :goto_46

    :cond_b6
    iget v4, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_83

    :cond_b9
    const/4 v5, 0x0

    goto :goto_8e

    :cond_bb
    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_cf

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v0, :cond_cf

    const/high16 v0, 0x3f800000  # 1.0f

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    sub-float/2addr v0, v2

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    move v0, v3

    goto :goto_a0

    :cond_cf
    const/4 v2, 0x0

    move v0, v3

    goto :goto_a0

    :cond_d2
    sub-int v2, v0, v2

    add-int v4, v2, v12

    goto :goto_a7

    :cond_d7
    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v0, :cond_102

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_106

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v0, :cond_e8

    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_e8
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_fd

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v0, v1, v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_fd
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void

    :cond_106
    const/4 v0, 0x0

    :goto_107
    if-ge v0, v10, :cond_fd

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v1, v2, v3}, Landroidj/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_107
.end method

.method protected onMeasure(II)V
    .registers 18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v4, 0x40000000  # 2.0f

    if-eq v1, v4, :cond_77

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_6f

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_67

    move v1, v0

    move v9, v2

    move v11, v3

    :goto_21
    const/4 v0, 0x0

    sparse-switch v9, :sswitch_data_246

    const/4 v1, -0x1

    move v2, v1

    :goto_27
    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v11, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int v10, v3, v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v12

    const/4 v3, 0x2

    if-le v12, v3, :cond_43

    const-string v3, "SlidingPaneLayout"

    const-string v4, "onMeasure: More than two child views are not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 v3, 0x0

    iput-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v6, 0x0

    move v8, v6

    move v3, v10

    move v4, v0

    :goto_4a
    if-ge v8, v12, :cond_12d

    invoke-virtual {p0, v8}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_ad

    const/4 v6, 0x0

    iput-boolean v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move v0, v1

    :goto_62
    add-int/lit8 v6, v8, 0x1

    move v1, v0

    move v8, v6

    goto :goto_4a

    :cond_67
    if-nez v1, :cond_240

    const/16 v3, 0x12c

    move v1, v0

    move v9, v2

    move v11, v3

    goto :goto_21

    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    if-nez v2, :cond_240

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_89

    if-nez v2, :cond_240

    const/16 v0, 0x12c

    const/high16 v2, -0x80000000

    move v1, v0

    move v9, v2

    move v11, v3

    goto :goto_21

    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_91
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    sub-int v1, v0, v1

    move v0, v1

    move v2, v1

    goto :goto_27

    :sswitch_a0
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    goto/16 :goto_27

    :cond_ad
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_bd

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float/2addr v5, v6

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v6, :cond_bd

    move v0, v1

    goto :goto_62

    :cond_bd
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    iget v7, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v14, -0x2

    if-ne v7, v14, :cond_ff

    sub-int v6, v10, v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_cf
    iget v7, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v7, v14, :cond_116

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_da
    invoke-virtual {v13, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v14, -0x80000000

    if-ne v9, v14, :cond_ef

    if-le v7, v4, :cond_ef

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_ef
    sub-int/2addr v3, v6

    if-gez v3, :cond_12b

    const/4 v6, 0x1

    :goto_f3
    iput-boolean v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    iget-boolean v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v0, :cond_fb

    iput-object v13, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    :cond_fb
    or-int v0, v6, v1

    goto/16 :goto_62

    :cond_ff
    iget v7, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v7, v14, :cond_10d

    sub-int v6, v10, v6

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_cf

    :cond_10d
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_cf

    :cond_116
    iget v7, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v7, v14, :cond_122

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_da

    :cond_122
    iget v7, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_da

    :cond_12b
    const/4 v6, 0x0

    goto :goto_f3

    :cond_12d
    if-nez v1, :cond_134

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_221

    :cond_134
    iget v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v13, v10, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_13a
    if-ge v9, v12, :cond_221

    invoke-virtual {p0, v9}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_14c

    :cond_148
    :goto_148
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_13a

    :cond_14c
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_148

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v6, :cond_195

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_195

    const/4 v6, 0x1

    move v8, v6

    :goto_167
    if-eqz v8, :cond_198

    const/4 v6, 0x0

    move v7, v6

    :goto_16b
    if-eqz v1, :cond_1be

    iget-object v6, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v14, v6, :cond_1be

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v6, :cond_148

    if-gt v7, v13, :cond_17e

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_148

    :cond_17e
    if-eqz v8, :cond_1b3

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_19e

    const/high16 v0, -0x80000000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_18b
    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v14, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_148

    :cond_195
    const/4 v6, 0x0

    move v8, v6

    goto :goto_167

    :cond_198
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move v7, v6

    goto :goto_16b

    :cond_19e
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1aa

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_18b

    :cond_1aa
    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_18b

    :cond_1b3
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_18b

    :cond_1be
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_148

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v6, :cond_1ff

    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_1ea

    const/high16 v6, -0x80000000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_1d4
    if-eqz v1, :cond_20a

    iget v8, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v8

    sub-int v0, v10, v0

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    if-eq v7, v0, :cond_148

    invoke-virtual {v14, v8, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_148

    :cond_1ea
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1f6

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1d4

    :cond_1f6
    iget v6, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1d4

    :cond_1ff
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1d4

    :cond_20a
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v8, v8

    mul-float/2addr v0, v8

    div-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v7

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v14, v0, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_148

    :cond_221
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v11, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    iput-boolean v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-eqz v0, :cond_23f

    if-nez v1, :cond_23f

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->abort()V

    :cond_23f
    return-void

    :cond_240
    move v1, v0

    move v9, v2

    move v11, v3

    goto/16 :goto_21

    nop

    :sswitch_data_246
    .sparse-switch
        -0x80000000 -> :sswitch_a0
        0x40000000 -> :sswitch_91
    .end sparse-switch
.end method

.method onPanelDragged(I)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v3, :cond_23

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int p1, v2, v1

    :cond_23
    if-eqz v3, :cond_54

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    move v2, v1

    :goto_2a
    if-eqz v3, :cond_5a

    iget v1, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_2e
    add-int/2addr v1, v2

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_41

    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_41
    iget-boolean v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v0, v1, v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_4e
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    goto :goto_7

    :cond_54
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    move v2, v1

    goto :goto_2a

    :cond_5a
    iget v1, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_2e
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {p1}, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->openPane()Z

    :goto_18
    iget-boolean v0, p1, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_7

    :cond_1d
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_18
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v1, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    :goto_13
    iput-boolean v0, v1, Landroidj/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-object v1

    :cond_16
    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_62

    goto :goto_8

    :pswitch_19  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_8

    :pswitch_26  #0x1
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v3, v1, v3

    iget v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v4, v2, v4

    iget-object v5, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidj/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-int v4, v5, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v4, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_8

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_26  #00000001
    .end packed-switch
.end method

.method public openPane()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method setAllChildrenVisible()V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_19

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public setPanelSlideListener(Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidj/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method public smoothSlideClosed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public smoothSlideOpen()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .registers 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v2

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    int-to-float v2, v3

    add-float/2addr v0, v2

    sub-float v0, v4, v0

    float-to-int v0, v0

    :goto_32
    iget-object v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v3, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v4, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_6

    :cond_4a
    invoke-virtual {p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_32

    :cond_59
    move v0, v1

    goto :goto_6
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .registers 21

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    :goto_10
    if-eqz v9, :cond_52

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v12

    if-eqz p1, :cond_5c

    invoke-static/range {p1 .. p1}, Landroidj/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v13

    const/4 v6, 0x0

    move v8, v6

    :goto_40
    if-ge v8, v13, :cond_4c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v14, v0, :cond_61

    :cond_4c
    return-void

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v7

    goto :goto_10

    :cond_52
    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_16

    :cond_5c
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3a

    :cond_61
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v15, 0x8

    if-ne v6, v15, :cond_6d

    :goto_69
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_40

    :cond_6d
    if-eqz v9, :cond_a8

    move v6, v1

    :goto_70
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    if-eqz v9, :cond_aa

    move v6, v7

    :goto_83
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v17, v11, v12

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    if-lt v15, v3, :cond_ac

    move/from16 v0, v16

    if-lt v0, v4, :cond_ac

    if-gt v6, v2, :cond_ac

    move/from16 v0, v17

    if-gt v0, v5, :cond_ac

    const/4 v6, 0x4

    :goto_a4
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_69

    :cond_a8
    move v6, v7

    goto :goto_70

    :cond_aa
    move v6, v1

    goto :goto_83

    :cond_ac
    const/4 v6, 0x0

    goto :goto_a4
.end method
