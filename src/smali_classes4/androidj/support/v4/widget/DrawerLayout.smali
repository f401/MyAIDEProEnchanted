.class public Landroidj/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroidj/support/v4/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroidj/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroidj/support/v4/widget/DrawerLayout$SavedState;,
        Landroidj/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

.field private mListener:Landroidj/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroidj/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_28

    move v0, v1

    :goto_14
    sput-boolean v0, Landroidj/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2a

    :goto_1a
    sput-boolean v1, Landroidj/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2c

    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    :goto_27
    return-void

    :cond_28
    move v0, v2

    goto :goto_14

    :cond_2a
    move v1, v2

    goto :goto_1a

    :cond_2c
    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_27
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidj/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroidj/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    const/high16 v0, -0x67000000

    iput v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    iput-boolean v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    iput v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000  # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    const/high16 v1, 0x43c80000  # 400.0f

    mul-float/2addr v1, v0

    new-instance v2, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v3}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidj/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    new-instance v2, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidj/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroidj/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidj/support/v4/widget/ViewDragHelper$Callback;)Landroidj/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroidj/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroidj/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidj/support/v4/widget/ViewDragHelper;)V

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroidj/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidj/support/v4/widget/ViewDragHelper$Callback;)Landroidj/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidj/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroidj/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v2}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidj/support/v4/widget/ViewDragHelper;)V

    invoke-virtual {p0, v4}, Landroidj/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    invoke-static {p0, v4}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance v1, Landroidj/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroidj/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroidj/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v1}, Landroidj/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroidj/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_ae

    sget-object v1, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p0}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    sget-object v1, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p1}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    :cond_ae
    const/high16 v1, 0x41200000  # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void
.end method

.method static gravityToString(I)Ljava/lang/String;
    .registers 3

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const-string v0, "LEFT"

    :goto_7
    return-object v0

    :cond_8
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const-string v0, "RIGHT"

    goto :goto_7

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private hasPeekingDrawer()Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_1c

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_1c
    move v0, v1

    goto :goto_17
.end method

.method private hasVisibleDrawer()Z
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-static {p1, p2}, Landroidj/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidj/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidj/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_1e
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidj/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidj/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_1e
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method private resolveShadowDrawables()V
    .registers 2

    sget-boolean v0, Landroidj/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Landroidj/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidj/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_13

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_1e

    if-ne v2, p1, :cond_1e

    :cond_17
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1b

    :cond_23
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1  # Landroidj/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_10
    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p0, v4}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v0, 0x1

    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    iget-object v5, p0, Landroidj/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_2f
    if-nez v0, :cond_4e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_37
    if-ge v1, v2, :cond_4e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    :cond_4e
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_9
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_f
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_13
    sget-boolean v0, Landroidj/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_1c
    return-void

    :cond_1d
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_13
.end method

.method cancelChildViewTouch()V
    .registers 9

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_27

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    :goto_15
    if-ge v7, v1, :cond_21

    invoke-virtual {p0, v7}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_27
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    return-void
.end method

.method public closeDrawer(IZ)V
    .registers 6

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroidj/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {p0, v0, p2}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_39

    iput v2, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    iput v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    :goto_35
    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_39
    if-eqz p2, :cond_65

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_35

    :cond_57
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_35

    :cond_65
    invoke-virtual {p0, p1, v2}, Landroidj/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v3, p1}, Landroidj/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35
.end method

.method public closeDrawers()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_7
    if-ge v2, v4, :cond_4f

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v5}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5f

    if-eqz p1, :cond_24

    iget-boolean v6, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_24

    move v0, v1

    :goto_20
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_7

    :cond_24
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3f

    iget-object v7, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    :goto_3b
    iput-boolean v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    move v0, v1

    goto :goto_20

    :cond_3f
    iget-object v6, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_3b

    :cond_4f
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v1, :cond_5e

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    :cond_5e
    return-void

    :cond_5f
    move v0, v1

    goto :goto_20
.end method

.method public computeScroll()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_1e

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1e
    iput v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, v4}, Landroidj/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroidj/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_32

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_32
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    iput v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_2e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d

    :cond_2e
    invoke-direct {p0, p1, v3}, Landroidj/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_42

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_42
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3b

    iput v2, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1c
    if-ltz v1, :cond_2d

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1c

    :cond_2d
    invoke-direct {p0, p1, v2}, Landroidj/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    :cond_3b
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_1e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_1e
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    if-eqz v5, :cond_12b

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v7, :cond_55

    invoke-virtual {p0, v3}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_3a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3a

    invoke-static {v2}, Landroidj/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_3e

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1a

    :cond_3e
    const/4 v8, 0x3

    invoke-virtual {p0, v2, v8}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v0, :cond_3a

    move v0, v2

    goto :goto_3a

    :cond_4d
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v1, :cond_3a

    move v1, v2

    goto :goto_3a

    :cond_55
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v3, v1

    :goto_5e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_97

    if-eqz v5, :cond_97

    iget v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    iget v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimColor:I

    iget-object v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    shl-int/lit8 v1, v1, 0x18

    const v5, 0xffffff

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v0

    const/4 v2, 0x0

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_96
    :goto_96
    return v7

    :cond_97
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_de

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidj/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v2

    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_96

    :cond_de
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_96

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidj/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v3

    const/4 v4, 0x0

    sub-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_96

    :cond_12b
    move v3, v1

    goto/16 :goto_5e
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .registers 8

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_23

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    and-int/lit8 v5, v2, 0x7

    if-ne v4, v5, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method findOpenDrawer()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_1f

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1b

    move-object v0, v1

    :goto_1a
    return-object v0

    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method findVisibleDrawer()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1d

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_18
    return-object v0

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x1

    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroidj/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_b
    return-object v0

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    :cond_18
    new-instance v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getDrawerElevation()F
    .registers 2

    sget-boolean v0, Landroidj/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDrawerLockMode(I)I
    .registers 5

    const/4 v2, 0x3

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    sparse-switch p1, :sswitch_data_4e

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :sswitch_a
    iget v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v1, v2, :cond_11

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_9

    :cond_11
    if-nez v0, :cond_18

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    :goto_15
    if-eq v0, v2, :cond_8

    goto :goto_9

    :cond_18
    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_15

    :sswitch_1b
    iget v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq v1, v2, :cond_22

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_9

    :cond_22
    if-nez v0, :cond_29

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    :goto_26
    if-eq v0, v2, :cond_8

    goto :goto_9

    :cond_29
    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_26

    :sswitch_2c
    iget v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq v1, v2, :cond_33

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_9

    :cond_33
    if-nez v0, :cond_3a

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :goto_37
    if-eq v0, v2, :cond_8

    goto :goto_9

    :cond_3a
    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_37

    :sswitch_3d
    iget v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v1, v2, :cond_44

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_9

    :cond_44
    if-nez v0, :cond_4b

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    :goto_48
    if-eq v0, v2, :cond_8

    goto :goto_9

    :cond_4b
    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_48

    :sswitch_data_4e
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_1b
        0x800003 -> :sswitch_2c
        0x800005 -> :sswitch_3d
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    return v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    :goto_d
    return-object v0

    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDrawerOpen(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method isDrawerView(Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_16

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isDrawerVisible(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .registers 6

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int v0, v1, v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    return-void

    :cond_1e
    neg-int v0, v0

    goto :goto_17
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    sget-object v0, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_24

    iget-object v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_24
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroidj/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroidj/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    packed-switch v2, :pswitch_data_70

    :cond_15
    :goto_15
    move v2, v0

    :goto_16
    or-int/2addr v3, v4

    if-nez v3, :cond_25

    if-nez v2, :cond_25

    invoke-direct {p0}, Landroidj/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v2

    if-nez v2, :cond_25

    iget-boolean v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v2, :cond_26

    :cond_25
    move v0, v1

    :cond_26
    return v0

    :pswitch_27  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    iput v5, p0, Landroidj/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    iget v6, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6d

    iget-object v6, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    float-to-int v2, v2

    float-to-int v5, v5

    invoke-virtual {v6, v2, v5}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6d

    move v2, v1

    :goto_4b
    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_16

    :pswitch_50  #0x2
    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroidj/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v2}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightCallback:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v2}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    move v2, v0

    goto :goto_16

    :pswitch_65  #0x1, 0x3
    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_15

    :cond_6d
    move v2, v0

    goto :goto_4b

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_65  #00000001
        :pswitch_50  #00000002
        :pswitch_65  #00000003
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroidj/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_12
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mInLayout:Z

    sub-int v6, p4, p2

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_b
    if-ge v5, v7, :cond_cc

    invoke-virtual {p0, v5}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1d

    :cond_19
    :goto_19
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b

    :cond_1d
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v8}, Landroidj/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_19

    :cond_3f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_88

    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v2, v9, v1

    int-to-float v2, v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    :goto_5a
    iget v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_95

    const/4 v3, 0x1

    :goto_61
    iget v4, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_d4

    iget v4, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v1

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_71
    if-eqz v3, :cond_76

    invoke-virtual {p0, v8, v2}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    :cond_76
    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ca

    const/4 v0, 0x0

    :goto_7e
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_19

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    :cond_88
    int-to-float v1, v9

    iget v2, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v1, v6, v1

    sub-int v2, v6, v1

    int-to-float v2, v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    goto :goto_5a

    :cond_95
    const/4 v3, 0x0

    goto :goto_61

    :sswitch_97
    sub-int v4, p5, p3

    iget v10, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v1

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v1, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_71

    :sswitch_aa
    sub-int v11, p5, p3

    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    iget v12, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v4, v12, :cond_bc

    iget v4, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    :cond_b6
    :goto_b6
    add-int/2addr v9, v1

    add-int/2addr v10, v4

    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_71

    :cond_bc
    add-int v12, v4, v10

    iget v13, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_b6

    iget v4, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_b6

    :cond_ca
    const/4 v0, 0x4

    goto :goto_7e

    :cond_cc
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mInLayout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void

    nop

    :sswitch_data_d4
    .sparse-switch
        0x10 -> :sswitch_aa
        0x50 -> :sswitch_97
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v1, v4, :cond_18

    const/high16 v4, 0x40000000  # 2.0f

    if-eq v3, v4, :cond_16a

    :cond_18
    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_61

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_56

    :cond_22
    :goto_22
    const/high16 v1, -0x80000000

    if-ne v3, v1, :cond_5b

    move v1, v0

    :goto_27
    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_69

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    move v3, v0

    :goto_36
    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v7, v0

    :goto_42
    if-ge v7, v9, :cond_16d

    invoke-virtual {p0, v7}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_6c

    move v0, v4

    :goto_51
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v4, v0

    goto :goto_42

    :cond_56
    if-nez v1, :cond_22

    const/16 v0, 0x12c

    goto :goto_22

    :cond_5b
    if-nez v3, :cond_16a

    const/16 v2, 0x12c

    move v1, v0

    goto :goto_27

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    const/4 v0, 0x0

    move v3, v0

    goto :goto_36

    :cond_6c
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v3, :cond_87

    iget v6, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v6, v8}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    invoke-static {v10}, Landroidj/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_ad

    sget-object v11, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroidj/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v11, v10, v12, v6}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_87
    :goto_87
    invoke-virtual {p0, v10}, Landroidj/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b5

    iget v6, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v11

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v11, v2, v11

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    move v0, v4

    goto :goto_51

    :cond_ad
    sget-object v11, Landroidj/support/v4/widget/DrawerLayout;->IMPL:Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroidj/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v11, v0, v12, v6}, Landroidj/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_87

    :cond_b5
    invoke-virtual {p0, v10}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_13b

    sget-boolean v6, Landroidj/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v6, :cond_ce

    invoke-static {v10}, Landroidj/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v6

    iget v11, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_ce

    iget v6, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v10, v6}, Landroidj/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_ce
    invoke-virtual {p0, v10}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v11, v6, 0x7

    const/4 v6, 0x3

    if-ne v11, v6, :cond_115

    const/4 v6, 0x1

    :goto_d8
    if-eqz v6, :cond_dc

    if-nez v4, :cond_e0

    :cond_dc
    if-nez v6, :cond_117

    if-eqz v5, :cond_117

    :cond_e0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child drawer has absolute gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Landroidj/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already has a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    const/4 v6, 0x0

    goto :goto_d8

    :cond_117
    if-eqz v6, :cond_139

    const/4 v4, 0x1

    :goto_11a
    iget v6, p0, Landroidj/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v11}, Landroidj/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    iget v11, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v12, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v0}, Landroidj/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    move v0, v4

    goto/16 :goto_51

    :cond_139
    const/4 v5, 0x1

    goto :goto_11a

    :cond_13b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16a
    move v1, v0

    goto/16 :goto_27

    :cond_16d
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    const/4 v2, 0x3

    instance-of v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    check-cast p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;

    invoke-virtual {p1}, Landroidj/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v0, :cond_21

    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_21
    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    if-eq v0, v2, :cond_2a

    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v0, v2}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_2a
    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v0, v2, :cond_34

    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_34
    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v0, v2, :cond_40

    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_40
    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v0, v2, :cond_8

    iget v0, p1, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v1, 0x800005

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_8
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v6, Landroidj/support/v4/widget/DrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v6, v0}, Landroidj/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v5, v3

    :goto_10
    if-ge v5, v7, :cond_2f

    invoke-virtual {p0, v5}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    if-ne v1, v2, :cond_40

    move v1, v2

    :goto_21
    iget v4, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_42

    move v4, v2

    :goto_27
    if-nez v1, :cond_2b

    if-eqz v4, :cond_44

    :cond_2b
    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, v6, Landroidj/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    :cond_2f
    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v0, v6, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v0, v6, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v0, v6, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v0, v6, Landroidj/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    return-object v6

    :cond_40
    move v1, v3

    goto :goto_21

    :cond_42
    move v4, v3

    goto :goto_27

    :cond_44
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_76

    :goto_15
    :pswitch_15  #0x2
    return v1

    :pswitch_16  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    iput v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    iput-boolean v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_15

    :pswitch_27  #0x1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_73

    invoke-virtual {p0, v4}, Landroidj/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_73

    iget v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    iget v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidj/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_73

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_69

    move v0, v1

    :goto_63
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_15

    :cond_69
    move v0, v2

    goto :goto_63

    :pswitch_6b  #0x3
    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_15

    :cond_73
    move v0, v1

    goto :goto_63

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_27  #00000001
        :pswitch_15  #00000002
        :pswitch_6b  #00000003
    .end packed-switch
.end method

.method public openDrawer(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    return-void
.end method

.method public openDrawer(IZ)V
    .registers 6

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroidj/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {p0, v0, p2}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .registers 8

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Landroidj/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_3e

    iput v3, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    iput v4, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    invoke-direct {p0, p1, v4}, Landroidj/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    :goto_3a
    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_3e
    if-eqz p2, :cond_6a

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_3a

    :cond_57
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_3a

    :cond_6a
    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v2, p1}, Landroidj/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3a
.end method

.method public removeDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1  # Landroidj/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-nez p2, :cond_14

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->requestLayout()V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setDrawerElevation(F)V
    .registers 5

    iput p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Landroidj/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method public setDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListener:Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListener:Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    :cond_9
    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    :cond_e
    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mListener:Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 5

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    sparse-switch p2, :sswitch_data_3c

    :goto_b
    if-eqz p1, :cond_15

    const/4 v0, 0x3

    if-ne v1, v0, :cond_25

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    :goto_12
    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_15
    packed-switch p1, :pswitch_data_4e

    :cond_18
    :goto_18
    return-void

    :sswitch_19
    iput p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_b

    :sswitch_1c
    iput p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_b

    :sswitch_1f
    iput p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_b

    :sswitch_22
    iput p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_b

    :cond_25
    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    goto :goto_12

    :pswitch_28  #0x2
    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_18

    :pswitch_32  #0x1
    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_18

    :sswitch_data_3c
    .sparse-switch
        0x3 -> :sswitch_19
        0x5 -> :sswitch_1c
        0x800003 -> :sswitch_1f
        0x800005 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_32  #00000001
        :pswitch_28  #00000002
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 6

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerShadow(II)V
    .registers 4
    .param p1  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidj/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    const v2, 0x800005

    const v1, 0x800003

    sget-boolean v0, Landroidj/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    and-int v0, p2, v1

    if-ne v0, v1, :cond_18

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    :goto_11
    invoke-direct {p0}, Landroidj/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_a

    :cond_18
    and-int v0, p2, v2

    if-ne v0, v2, :cond_1f

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_1f
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_27
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 5

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    iput-object p2, p0, Landroidj/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    iput-object p2, p0, Landroidj/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_d
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    :goto_c
    return-void

    :cond_d
    iput p2, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_c
.end method

.method public setScrimColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mScrimColor:I

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidj/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mLeftDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidj/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/DrawerLayout;->mRightDragger:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidj/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v3

    if-eq v2, v1, :cond_12

    if-ne v3, v1, :cond_4b

    :cond_12
    move v2, v1

    :goto_13
    if-eqz p3, :cond_27

    if-nez p2, :cond_27

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_54

    invoke-virtual {p0, p3}, Landroidj/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    :cond_27
    :goto_27
    iget v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v2, v0, :cond_60

    iput v2, p0, Landroidj/support/v4/widget/DrawerLayout;->mDrawerState:I

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3a
    if-ltz v1, :cond_60

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, v2}, Landroidj/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3a

    :cond_4b
    if-eq v2, v0, :cond_4f

    if-ne v3, v0, :cond_51

    :cond_4f
    move v2, v0

    goto :goto_13

    :cond_51
    const/4 v0, 0x0

    move v2, v0

    goto :goto_13

    :cond_54
    iget v0, v0, Landroidj/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    invoke-virtual {p0, p3}, Landroidj/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_27

    :cond_60
    return-void
.end method
