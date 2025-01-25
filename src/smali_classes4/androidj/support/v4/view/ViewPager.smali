.class public Landroidj/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/ViewPager$DecorView;,
        Landroidj/support/v4/view/ViewPager$ItemInfo;,
        Landroidj/support/v4/view/ViewPager$LayoutParams;,
        Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroidj/support/v4/view/ViewPager$PageTransformer;,
        Landroidj/support/v4/view/ViewPager$PagerObserver;,
        Landroidj/support/v4/view/ViewPager$SavedState;,
        Landroidj/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroidj/support/v4/view/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidj/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidj/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidj/support/v4/view/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidj/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidj/support/v4/view/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroidj/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroidj/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Landroidj/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Landroidj/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidj/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewPager;->sPositionComparator:Landroidj/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mTempItem:Landroidj/support/v4/view/ViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mRestoredCurItem:I

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    iput v4, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    iput-boolean v4, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    iput-boolean v3, p0, Landroidj/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v0, Landroidj/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/ViewPager$3;-><init>(Landroidj/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mTempItem:Landroidj/support/v4/view/ViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mRestoredCurItem:I

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    iput v4, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    iput-boolean v4, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    iput-boolean v3, p0, Landroidj/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v0, Landroidj/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/ViewPager$3;-><init>(Landroidj/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Landroidj/support/v4/view/ViewPager$ItemInfo;ILandroidj/support/v4/view/ViewPager$ItemInfo;)V
    .registers 15

    const/4 v2, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    if-lez v0, :cond_56

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    :goto_16
    if-eqz p3, :cond_bc

    iget v0, p3, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v0, v1, :cond_73

    iget v1, p3, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v3, p3, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v1, v3

    add-float v4, v1, v5

    move v1, v2

    move v3, v0

    :goto_29
    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v3, v0, :cond_bc

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_bc

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :goto_3d
    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v7, :cond_59

    iget-object v7, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_59

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    goto :goto_3d

    :cond_56
    const/4 v0, 0x0

    move v5, v0

    goto :goto_16

    :cond_59
    :goto_59
    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v7, :cond_68

    iget-object v7, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v7, v3}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v5

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_68
    iput v4, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v0, v3, 0x1

    add-float v3, v7, v5

    add-float/2addr v4, v3

    move v3, v0

    goto :goto_29

    :cond_73
    iget v1, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v0, v1, :cond_bc

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p3, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :goto_84
    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v3, v0, :cond_bc

    if-ltz v1, :cond_bc

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :goto_92
    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v7, :cond_a3

    if-lez v1, :cond_a3

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    goto :goto_92

    :cond_a3
    :goto_a3
    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v7, :cond_b2

    iget-object v7, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v7, v3}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v5

    sub-float/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_a3

    :cond_b2
    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v5

    sub-float/2addr v4, v7

    iput v4, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_84

    :cond_bc
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v3, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v1, v0, -0x1

    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v0, :cond_fa

    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    :goto_ce
    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v6, -0x1

    if-ne v0, v4, :cond_fe

    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v10

    :goto_dc
    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    add-int/lit8 v0, p2, -0x1

    move v4, v0

    :goto_e1
    if-ltz v4, :cond_114

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :goto_eb
    iget v8, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v1, v8, :cond_102

    iget-object v8, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v1}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v5

    sub-float/2addr v3, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_eb

    :cond_fa
    const v0, -0x800001

    goto :goto_ce

    :cond_fe
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_dc

    :cond_102
    iget v8, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v5

    sub-float/2addr v3, v8

    iput v3, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v0, :cond_10e

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    :cond_10e
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_e1

    :cond_114
    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v1, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v1

    add-float v1, v0, v5

    iget v0, p1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_122
    if-ge v4, v7, :cond_153

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :goto_12c
    iget v8, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v8, :cond_13b

    iget-object v8, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v3}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v5

    add-float/2addr v1, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_12c

    :cond_13b
    iget v8, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_147

    iget v8, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v1

    sub-float/2addr v8, v10

    iput v8, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    :cond_147
    iput v1, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    add-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_122

    :cond_153
    iput-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5c

    move v0, v4

    :goto_8
    if-eqz v0, :cond_3d

    invoke-direct {p0, v2}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5e

    move v1, v4

    :goto_16
    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_35

    if-eq v3, v6, :cond_3d

    :cond_35
    invoke-virtual {p0, v5, v6}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    if-eq v5, v1, :cond_3d

    invoke-direct {p0, v5}, Landroidj/support/v4/view/ViewPager;->pageScrolled(I)Z

    :cond_3d
    iput-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    move v1, v2

    move v3, v0

    :goto_41
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_60

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-boolean v5, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_58

    iput-boolean v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move v3, v4

    :cond_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :cond_5c
    move v0, v2

    goto :goto_8

    :cond_5e
    move v1, v2

    goto :goto_16

    :cond_60
    if-eqz v3, :cond_69

    if-eqz p1, :cond_6a

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidj/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_69
.end method

.method private determineTargetPage(IFII)I
    .registers 8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_43

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_43

    if-lez p3, :cond_40

    :goto_12
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3f
    return p1

    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_43
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_4e

    const v0, 0x3ecccccd  # 0.4f

    :goto_4a
    add-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_12

    :cond_4e
    const v0, 0x3f19999a  # 0.6f

    goto :goto_4a
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_28

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_31
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_28

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_31
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_28

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_31
    return-void
.end method

.method private enableLayers(Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_1a

    if-eqz p1, :cond_18

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformerLayerType:I

    :goto_c
    invoke-virtual {p0, v2}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_18
    move v0, v1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_11
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_8

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_8
    if-nez p2, :cond_e

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_d
    return-object p1

    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2a
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    if-eq v0, p0, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2a
.end method

.method private getClientWidth()I
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidj/support/v4/view/ViewPager$ItemInfo;
    .registers 13

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    move v10, v0

    :goto_10
    if-lez v1, :cond_6c

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_18
    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object v3, v0

    move v7, v6

    move v8, v2

    move v9, v2

    :goto_1f
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_69

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    if-nez v5, :cond_4e

    iget v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v4, 0x1

    if-eq v2, v11, :cond_4e

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mTempItem:Landroidj/support/v4/view/ViewPager$ItemInfo;

    add-float v2, v9, v8

    add-float/2addr v2, v1

    iput v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v2, v4, 0x1

    iput v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget v4, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v2, v4}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v2

    iput v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v7, v7, -0x1

    :cond_4e
    iget v9, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    if-nez v5, :cond_58

    cmpl-float v4, v10, v9

    if-ltz v4, :cond_69

    :cond_58
    add-float/2addr v2, v9

    add-float/2addr v2, v1

    cmpg-float v2, v10, v2

    if-ltz v2, :cond_68

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v7, v2, :cond_6e

    :cond_68
    move-object v3, v0

    :cond_69
    return-object v3

    :cond_6a
    move v10, v2

    goto :goto_10

    :cond_6c
    move v1, v2

    goto :goto_18

    :cond_6e
    iget v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v7, v7, 0x1

    move-object v3, v0

    move v4, v2

    move v5, v6

    goto :goto_1f
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidj/support/v4/view/ViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isGutterDrag(FF)Z
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pageScrolled(I)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mCalledSuper:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroidj/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    int-to-float v6, p1

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget v7, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v6, v7

    iget v1, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v4

    div-float v1, v6, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v5, v1, v2}, Landroidj/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v0, :cond_51

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private performDrag(F)Z
    .registers 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    iput p1, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    add-float v5, v1, v0

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v6

    int-to-float v0, v6

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, v0, v1

    int-to-float v7, v6

    iget v8, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v9, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v9, :cond_91

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, v6

    mul-float/2addr v4, v0

    move v0, v2

    :goto_3b
    iget v9, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v10, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v10}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v9, v10, :cond_8e

    iget v1, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v3, v6

    mul-float/2addr v1, v3

    move v3, v2

    :goto_4c
    cmpg-float v7, v5, v4

    if-gez v7, :cond_76

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    sub-float v1, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_60
    :goto_60
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v0, v4

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroidj/support/v4/view/ViewPager;->pageScrolled(I)Z

    return v2

    :cond_76
    cmpl-float v0, v5, v1

    if-lez v0, :cond_8c

    if-eqz v3, :cond_8a

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    sub-float v2, v5, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v6

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_8a
    move v4, v1

    goto :goto_60

    :cond_8c
    move v4, v5

    goto :goto_60

    :cond_8e
    mul-float v1, v7, v8

    goto :goto_4c

    :cond_91
    move v0, v3

    goto :goto_3b
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 10

    if-lez p2, :cond_4c

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-int v2, p2, v2

    sub-int/2addr v2, v3

    add-int/2addr v2, p4

    int-to-float v2, v2

    div-float v2, v4, v2

    sub-int v0, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_20

    :cond_4c
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->infoForPosition(I)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_5c
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidj/support/v4/view/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_20

    :cond_7c
    const/4 v0, 0x0

    goto :goto_5c
.end method

.method private removeNonDecorViews()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->endDrag()V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroidj/support/v4/view/ViewPager;->infoForPosition(I)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1c
    if-eqz p2, :cond_27

    invoke-virtual {p0, v0, v1, p3}, Landroidj/support/v4/view/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_26

    invoke-direct {p0, p1}, Landroidj/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    if-eqz p4, :cond_2c

    invoke-direct {p0, p1}, Landroidj/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    :cond_2c
    invoke-direct {p0, v1}, Landroidj/support/v4/view/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroidj/support/v4/view/ViewPager;->pageScrolled(I)Z

    goto :goto_26

    :cond_36
    move v0, v1

    goto :goto_1c
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroidj/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_28

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Landroidj/support/v4/view/ViewPager;->sPositionComparator:Landroidj/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2f
    return-void
.end method


# virtual methods
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_2f

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v3}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    :cond_39
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_51
    if-eqz p1, :cond_3f

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method addNewItem(II)Landroidj/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    new-instance v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput p1, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidj/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_21

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_27

    :cond_21
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    return-object v0

    :cond_27
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26
.end method

.method public addOnAdapterChangeListener(Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1  # Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    invoke-virtual {p0, p3}, Landroidj/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0, p3}, Landroidj/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidj/support/v4/view/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_2f

    if-eqz v0, :cond_28

    iget-boolean v2, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_28

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, v1}, Landroidj/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_2e
    return-void

    :cond_2f
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    :cond_33
    move-object v1, p3

    goto :goto_a
.end method

.method public arrowScroll(I)Z
    .registers 11

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_3e

    move-object v0, v1

    :goto_e
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c6

    if-eq v1, v0, :cond_c6

    if-ne p1, v7, :cond_a4

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidj/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidj/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_9f

    if-lt v2, v3, :cond_9f

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    :goto_34
    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_3d
    return v0

    :cond_3e
    if-eqz v2, :cond_de

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_44
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e1

    if-ne v0, p0, :cond_7b

    move v0, v4

    :goto_4b
    if-nez v0, :cond_de

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_61
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_80

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_61

    :cond_7b
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_44

    :cond_80
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_e

    :cond_9f
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_34

    :cond_a4
    if-ne p1, v8, :cond_db

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidj/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidj/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_c0

    if-gt v2, v3, :cond_c0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    goto/16 :goto_34

    :cond_c0
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_34

    :cond_c6
    if-eq p1, v7, :cond_ca

    if-ne p1, v4, :cond_d0

    :cond_ca
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    goto/16 :goto_34

    :cond_d0
    if-eq p1, v8, :cond_d5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_db

    :cond_d5
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    goto/16 :goto_34

    :cond_db
    move v0, v3

    goto/16 :goto_34

    :cond_de
    move-object v0, v2

    goto/16 :goto_e

    :cond_e1
    move v0, v3

    goto/16 :goto_4b
.end method

.method public beginFakeDrag()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    :goto_7
    return v4

    :cond_8
    iput-boolean v8, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragging:Z

    invoke-virtual {p0, v8}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    iput v5, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_32

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v0, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    move v4, v8

    goto :goto_7

    :cond_32
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1b
.end method

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

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

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
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_63
    const/4 v2, 0x0

    goto :goto_55
.end method

.method public canScrollHorizontally(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    if-gez p1, :cond_1a

    int-to-float v2, v2

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_6

    move v0, v1

    goto :goto_6

    :cond_1a
    if-lez p1, :cond_6

    int-to-float v2, v2

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidj/support/v4/view/ViewPager$LayoutParams;

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

.method public clearOnPageChangeListeners()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroidj/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_3d
    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_40
    return-void

    :cond_41
    invoke-direct {p0, v1}, Landroidj/support/v4/view/ViewPager;->completeScroll(Z)V

    goto :goto_40
.end method

.method dataSetChanged()V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    iput v8, p0, Landroidj/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_45

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_45

    move v0, v1

    :goto_21
    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    move v3, v2

    move v5, v0

    move v6, v2

    :goto_26
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_85

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-object v7, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v9, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroidj/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_47

    :cond_41
    :goto_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    :cond_45
    move v0, v2

    goto :goto_21

    :cond_47
    const/4 v9, -0x2

    if-ne v7, v9, :cond_76

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v6, :cond_59

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v5, p0}, Landroidj/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v6, v1

    :cond_59
    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v9}, Landroidj/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_b8

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v4, v8, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v1

    goto :goto_41

    :cond_76
    iget v9, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v7, :cond_41

    iget v5, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v9, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v9, :cond_81

    move v4, v7

    :cond_81
    iput v7, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    move v5, v1

    goto :goto_41

    :cond_85
    if-eqz v6, :cond_8c

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidj/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_8c
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v3, Landroidj/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b7

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    move v3, v2

    :goto_9a
    if-ge v3, v5, :cond_b1

    invoke-virtual {p0, v3}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v6, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_ad

    const/4 v6, 0x0

    iput v6, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    :cond_ad
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9a

    :cond_b1
    invoke-virtual {p0, v4, v2, v1}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->requestLayout()V

    :cond_b7
    return-void

    :cond_b8
    move v5, v1

    goto :goto_41
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroidj/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_e

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0, v3}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_33

    iget v4, v4, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_33

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    goto :goto_d

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L  # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_a3

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_a3

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_a3

    :cond_19
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000  # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5a
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    const/high16 v6, 0x42b40000  # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v8, 0x3f800000  # 1.0f

    add-float/2addr v7, v8

    neg-float v7, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-virtual {v6, v3, v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidj/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9d
    :goto_9d
    if-eqz v0, :cond_a2

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_a2
    return-void

    :cond_a3
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->finish()V

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_9d
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    const/4 v5, 0x1

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v5, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    iget v4, v3, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v3, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v1, v2

    iget v2, v3, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v1, v2

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v4, v1, v0, v2}, Landroidj/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v1

    invoke-virtual {p0, v1, v5, v5, v0}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    :cond_49
    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->endDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragging:Z

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    :cond_f
    :goto_f
    return v0

    :sswitch_10
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_f

    :sswitch_17
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_f

    :sswitch_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f

    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_f

    :cond_30
    invoke-static {p1, v3}, Landroidj/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v3}, Landroidj/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_f

    nop

    :sswitch_data_3c
    .sparse-switch
        0x15 -> :sswitch_10
        0x16 -> :sswitch_17
        0x3d -> :sswitch_1e
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .registers 12

    const/4 v7, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-nez v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v0, p1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v4, v3

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    iget v8, p0, Landroidj/support/v4/view/ViewPager;->mLastOffset:F

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v9, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v9, :cond_93

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, v3

    mul-float/2addr v0, v4

    :goto_48
    iget v4, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_90

    iget v1, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v3, v3

    mul-float/2addr v1, v3

    :goto_58
    cmpg-float v3, v2, v0

    if-gez v3, :cond_88

    :goto_5c
    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroidj/support/v4/view/ViewPager;->pageScrolled(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v4, 0x2

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_11

    :cond_88
    cmpl-float v0, v2, v1

    if-lez v0, :cond_8e

    move v0, v1

    goto :goto_5c

    :cond_8e
    move v0, v2

    goto :goto_5c

    :cond_90
    mul-float v1, v6, v8

    goto :goto_58

    :cond_93
    mul-float v0, v4, v5

    goto :goto_48
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidj/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidj/support/v4/view/PagerAdapter;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;
    .registers 4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_12

    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_12
    invoke-virtual {p0, p1}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_d
.end method

.method infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v3, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidj/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method infoForPosition(I)Landroidj/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method initViewPager()V
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v4}, Landroidj/support/v4/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroidj/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000  # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidj/support/v4/view/ViewPager;->mMaximumVelocity:I

    new-instance v1, Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidj/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mLeftEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    new-instance v1, Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidj/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/view/ViewPager;->mRightEdge:Landroidj/support/v4/widget/EdgeEffectCompat;

    const/high16 v0, 0x41c80000  # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mFlingDistance:I

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mCloseEnough:I

    const/high16 v0, 0x41800000  # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mDefaultGutterSize:I

    new-instance v0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroidj/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroidj/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p0, v4}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_6b
    new-instance v0, Landroidj/support/v4/view/ViewPager$4;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/ViewPager$4;-><init>(Landroidj/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroidj/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_16
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v1, :cond_b4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_b4

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget v1, v0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v4, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v3, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v9, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v10, v2, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    const/4 v2, 0x0

    move v5, v3

    :goto_56
    if-ge v5, v10, :cond_b4

    :goto_58
    iget v3, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v5, v3, :cond_6b

    if-ge v2, v9, :cond_6b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$ItemInfo;

    goto :goto_58

    :cond_6b
    iget v3, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v5, v3, :cond_b5

    iget v3, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    iget v4, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v11, v1, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    :goto_7c
    move-object/from16 v0, p0

    iget v11, v0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_ad

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidj/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroidj/support/v4/view/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v14, v0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroidj/support/v4/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidj/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_ad
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_c4

    :cond_b4
    return-void

    :cond_b5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v3, v5}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_7c

    :cond_c4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_56
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    if-ne v0, v6, :cond_12

    :cond_e
    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->resetTouch()Z

    :cond_11
    :goto_11
    return v2

    :cond_12
    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1a

    move v2, v6

    goto :goto_11

    :cond_1a
    iget-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-nez v1, :cond_11

    :cond_1e
    sparse-switch v0, :sswitch_data_112

    :cond_21
    :goto_21
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2b
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_11

    :sswitch_33
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_72

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Landroidj/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_72

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_72

    iput v7, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    iput v10, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionY:F

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_11

    :cond_72
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_af

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_af

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v6}, Landroidj/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_a8

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_92
    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    iput v10, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionY:F

    invoke-direct {p0, v6}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_99
    :goto_99
    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_21

    invoke-direct {p0, v7}, Landroidj/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_21

    :cond_a8
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_92

    :cond_af
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_99

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_99

    :sswitch_b9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    iput-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_106

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_106

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v6}, Landroidj/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_21

    :cond_106
    invoke-direct {p0, v2}, Landroidj/support/v4/view/ViewPager;->completeScroll(Z)V

    iput-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_21

    :sswitch_10d
    invoke-direct {p0, p1}, Landroidj/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_21

    :sswitch_data_112
    .sparse-switch
        0x0 -> :sswitch_b9
        0x2 -> :sswitch_33
        0x6 -> :sswitch_10d
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v12

    sub-int v13, p4, p2

    sub-int v14, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v15

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_1f
    if-ge v11, v12, :cond_bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_13f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v5, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_13f

    iget v5, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->gravity:I

    iget v0, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v17, v0

    and-int/lit8 v1, v5, 0x7

    packed-switch v1, :pswitch_data_144

    :pswitch_44  #0x2, 0x4
    move v6, v3

    move v10, v9

    move v8, v9

    :goto_47
    and-int/lit8 v1, v17, 0x70

    sparse-switch v1, :sswitch_data_152

    move v1, v2

    move v3, v4

    move v5, v4

    :goto_4f
    add-int v2, v10, v15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v7, 0x1

    move v3, v6

    move v7, v2

    :goto_64
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    move v2, v1

    move v4, v5

    move v9, v8

    goto :goto_1f

    :pswitch_6b  #0x3
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v8, v9, v1

    move v6, v3

    move v10, v9

    goto :goto_47

    :pswitch_74  #0x1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v3

    move v10, v1

    move v8, v9

    goto :goto_47

    :pswitch_84  #0x5
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v3, v5

    sub-int v3, v13, v3

    sub-int v1, v3, v1

    move v10, v1

    move v8, v9

    goto :goto_47

    :sswitch_95
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v5, v4, v1

    move v1, v2

    move v3, v4

    goto :goto_4f

    :sswitch_9e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v14, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v2

    move v5, v4

    goto :goto_4f

    :sswitch_ad
    sub-int v1, v14, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move v5, v4

    goto :goto_4f

    :cond_bc
    sub-int v1, v13, v9

    sub-int v5, v1, v3

    const/4 v1, 0x0

    move v3, v1

    :goto_c2
    if-ge v3, v12, :cond_119

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-eq v1, v8, :cond_115

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v8, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_115

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v8

    if-eqz v8, :cond_115

    int-to-float v10, v5

    iget v8, v8, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v8, v10

    float-to-int v8, v8

    add-int/2addr v8, v9

    iget-boolean v10, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v10, :cond_108

    const/4 v10, 0x0

    iput-boolean v10, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    int-to-float v10, v5

    iget v1, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v10, v14, v4

    sub-int/2addr v10, v2

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v6, v1, v10}, Landroid/view/View;->measure(II)V

    :cond_108
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v6, v8, v4, v1, v10}, Landroid/view/View;->layout(IIII)V

    :cond_115
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_c2

    :cond_119
    move-object/from16 v0, p0

    iput v4, v0, Landroidj/support/v4/view/ViewPager;->mTopPageBounds:I

    sub-int v1, v14, v2

    move-object/from16 v0, p0

    iput v1, v0, Landroidj/support/v4/view/ViewPager;->mBottomPageBounds:I

    move-object/from16 v0, p0

    iput v7, v0, Landroidj/support/v4/view/ViewPager;->mDecorChildCount:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_139

    move-object/from16 v0, p0

    iget v1, v0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidj/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    :cond_139
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    return-void

    :cond_13f
    move v1, v2

    move v5, v4

    move v8, v9

    goto/16 :goto_64

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_74  #00000001
        :pswitch_44  #00000002
        :pswitch_6b  #00000003
        :pswitch_44  #00000004
        :pswitch_84  #00000005
    .end packed-switch

    :sswitch_data_152
    .sparse-switch
        0x10 -> :sswitch_9e
        0x30 -> :sswitch_95
        0x50 -> :sswitch_ad
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroidj/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroidj/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroidj/support/v4/view/ViewPager;->mGutterSize:I

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_3b
    if-ge v8, v9, :cond_bc

    invoke-virtual {p0, v8}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_a5

    iget-boolean v1, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_a5

    iget v1, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v1, 0x7

    iget v1, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v3, v1, 0x70

    const/high16 v2, -0x80000000

    const/high16 v1, -0x80000000

    const/16 v7, 0x30

    if-eq v3, v7, :cond_69

    const/16 v7, 0x50

    if-ne v3, v7, :cond_a9

    :cond_69
    const/4 v3, 0x1

    move v7, v3

    :goto_6b
    const/4 v3, 0x3

    if-eq v6, v3, :cond_71

    const/4 v3, 0x5

    if-ne v6, v3, :cond_ac

    :cond_71
    const/4 v3, 0x1

    move v6, v3

    :goto_73
    if-eqz v7, :cond_af

    const/high16 v2, 0x40000000  # 2.0f

    :cond_77
    :goto_77
    iget v3, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v3, v11, :cond_10e

    const/high16 v2, 0x40000000  # 2.0f

    iget v3, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_10b

    iget v3, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->width:I

    :goto_85
    iget v11, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_109

    const/high16 v1, 0x40000000  # 2.0f

    iget v11, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_109

    iget v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->height:I

    :goto_93
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_b4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    :cond_a5
    :goto_a5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3b

    :cond_a9
    const/4 v3, 0x0

    move v7, v3

    goto :goto_6b

    :cond_ac
    const/4 v3, 0x0

    move v6, v3

    goto :goto_73

    :cond_af
    if-eqz v6, :cond_77

    const/high16 v1, 0x40000000  # 2.0f

    goto :goto_77

    :cond_b4
    if-eqz v6, :cond_a5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_a5

    :cond_bc
    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_db
    if-ge v1, v2, :cond_111

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_105

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_f5

    iget-boolean v5, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_105

    :cond_f5
    int-to-float v5, v4

    iget v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    :cond_105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_db

    :cond_109
    move v0, v5

    goto :goto_93

    :cond_10b
    move v3, v4

    goto/16 :goto_85

    :cond_10e
    move v3, v4

    goto/16 :goto_85

    :cond_111
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 15
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_71

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    move v6, v5

    :goto_1a
    if-ge v6, v9, :cond_71

    invoke-virtual {p0, v6}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v2, :cond_32

    move v0, v1

    move v2, v3

    :cond_2c
    :goto_2c
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v1, v0

    move v3, v2

    goto :goto_1a

    :cond_32
    iget v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_ac

    :pswitch_39  #0x2, 0x4
    move v4, v3

    move v0, v1

    move v2, v3

    :goto_3c
    add-int v1, v4, v7

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v1, :cond_2c

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2c

    :pswitch_49  #0x3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v2, v3, v0

    move v4, v3

    move v0, v1

    goto :goto_3c

    :pswitch_52  #0x1
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v1

    move v2, v3

    goto :goto_3c

    :pswitch_61  #0x5
    sub-int v0, v8, v1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    move v2, v3

    goto :goto_3c

    :cond_71
    invoke-direct {p0, p1, p2, p3}, Landroidj/support/v4/view/ViewPager;->dispatchOnPageScrolled(IFI)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformer:Landroidj/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    move v1, v5

    :goto_81
    if-ge v1, v3, :cond_a7

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_95

    :goto_91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_81

    :cond_95
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformer:Landroidj/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v5, v4, v0}, Landroidj/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_91

    :cond_a7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mCalledSuper:Z

    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_39  #00000002
        :pswitch_49  #00000003
        :pswitch_39  #00000004
        :pswitch_61  #00000005
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2c

    move v4, v0

    move v5, v1

    :goto_d
    if-eq v5, v2, :cond_35

    invoke-virtual {p0, v5}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {p0, v3}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_31

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_31

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v5, v2, -0x1

    move v2, v3

    move v4, v3

    goto :goto_d

    :cond_31
    add-int v3, v5, v4

    move v5, v3

    goto :goto_d

    :cond_35
    move v0, v1

    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroidj/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Landroidj/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroidj/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v1, p1, Landroidj/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Landroidj/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Landroidj/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_7

    :cond_26
    iget v0, p1, Landroidj/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mRestoredCurItem:I

    iget-object v0, p1, Landroidj/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v0, p1, Landroidj/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroidj/support/v4/view/ViewPager$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    iput v1, v0, Landroidj/support/v4/view/ViewPager$SavedState;->position:I

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroidj/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidj/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_19
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_c

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroidj/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_6

    :cond_15
    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    move v0, v1

    goto :goto_6

    :cond_23
    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2d
    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_15e

    :cond_3b
    :goto_3b
    :pswitch_3b  #0x4
    if-eqz v1, :cond_6

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_6

    :pswitch_41  #0x0
    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    goto :goto_3b

    :pswitch_62  #0x2
    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v2, :cond_be

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_74

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->resetTouch()Z

    move-result v1

    goto :goto_3b

    :cond_74
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_be

    cmpl-float v2, v4, v2

    if-lez v2, :cond_be

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v0}, Landroidj/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v2, v3, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d4

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_ab
    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionY:F

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v0}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_be

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_be
    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_3b

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-direct {p0, v1}, Landroidj/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto/16 :goto_3b

    :cond_d4
    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_ab

    :pswitch_db  #0x1
    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_3b

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v1, v2}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget v6, v4, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroidj/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v6, v2, v1, v3}, Landroidj/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v0, v0, v1}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->resetTouch()Z

    move-result v1

    goto/16 :goto_3b

    :pswitch_12b  #0x3
    iget-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_3b

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-direct {p0, v2, v0, v1, v1}, Landroidj/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->resetTouch()Z

    move-result v1

    goto/16 :goto_3b

    :pswitch_13a  #0x5
    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_3b

    :pswitch_14c  #0x6
    invoke-direct {p0, p1}, Landroidj/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_3b

    nop

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_db  #00000001
        :pswitch_62  #00000002
        :pswitch_12b  #00000003
        :pswitch_3b  #00000004
        :pswitch_13a  #00000005
        :pswitch_14c  #00000006
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_d

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method pageRight()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_19

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_19

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method populate()V
    .registers 2

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .registers 15

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_29a

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->infoForPosition(I)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    iput p1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    move-object v1, v0

    :goto_d
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-nez v0, :cond_15

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    goto :goto_14

    :cond_1d
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidj/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    const/4 v2, 0x0

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    if-eq v10, v0, :cond_a8

    :try_start_45
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_50
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_50} :catch_9e

    move-result-object v0

    :goto_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pager id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Pager class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Problematic adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_9e
    move-exception v0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_a8
    const/4 v0, 0x0

    move v2, v0

    :goto_aa
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_297

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget v3, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-lt v3, v4, :cond_168

    iget v3, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_297

    :goto_c6
    if-nez v0, :cond_294

    if-lez v10, :cond_294

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0, v2}, Landroidj/support/v4/view/ViewPager;->addNewItem(II)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    move-object v8, v0

    :goto_d1
    if-eqz v8, :cond_127

    const/4 v5, 0x0

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_16d

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :goto_e0
    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    if-gtz v12, :cond_170

    const/4 v3, 0x0

    :goto_e7
    iget v6, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v7, v6, -0x1

    move v6, v2

    :goto_ec
    if-ltz v7, :cond_f6

    cmpl-float v2, v5, v3

    if-ltz v2, :cond_1a9

    if-ge v7, v9, :cond_1a9

    if-nez v0, :cond_17f

    :cond_f6
    iget v4, v8, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v3, v6, 0x1

    const/high16 v0, 0x40000000  # 2.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_124

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1db

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-object v5, v0

    :goto_111
    if-gtz v12, :cond_1de

    const/4 v0, 0x0

    move v2, v0

    :goto_115
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, v5

    :goto_11a
    if-ge v7, v10, :cond_124

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_216

    if-le v7, v11, :cond_216

    if-nez v0, :cond_1eb

    :cond_124
    invoke-direct {p0, v8, v6, v1}, Landroidj/support/v4/view/ViewPager;->calculatePageOffsets(Landroidj/support/v4/view/ViewPager$ItemInfo;ILandroidj/support/v4/view/ViewPager$ItemInfo;)V

    :cond_127
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v8, :cond_250

    iget-object v0, v8, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_12f
    invoke-virtual {v1, p0, v2, v0}, Landroidj/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidj/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_13d
    if-ge v1, v2, :cond_253

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iput v1, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    iget-boolean v4, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_164

    iget v4, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_164

    invoke-virtual {p0, v3}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_164

    iget v4, v3, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    iput v4, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    iget v3, v3, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iput v3, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->position:I

    :cond_164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13d

    :cond_168
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_aa

    :cond_16d
    const/4 v0, 0x0

    goto/16 :goto_e0

    :cond_170
    const/high16 v3, 0x40000000  # 2.0f

    iget v6, v8, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    sub-float/2addr v3, v6

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v12

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    goto/16 :goto_e7

    :cond_17f
    iget v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v7, v2, :cond_291

    iget-boolean v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v2, :cond_291

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v7, v0}, Landroidj/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v2, v4, -0x1

    if-ltz v2, :cond_1a7

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :goto_19f
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    :goto_1a2
    add-int/lit8 v7, v7, -0x1

    move v4, v2

    goto/16 :goto_ec

    :cond_1a7
    const/4 v0, 0x0

    goto :goto_19f

    :cond_1a9
    if-eqz v0, :cond_1c1

    iget v2, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v7, v2, :cond_1c1

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v0

    add-int/lit8 v2, v4, -0x1

    if-ltz v2, :cond_1bf

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    goto :goto_1a2

    :cond_1bf
    const/4 v0, 0x0

    goto :goto_1a2

    :cond_1c1
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v7, v0}, Landroidj/support/v4/view/ViewPager;->addNewItem(II)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v0

    add-int/lit8 v6, v6, 0x1

    if-ltz v4, :cond_1d8

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    move v2, v4

    goto :goto_1a2

    :cond_1d8
    const/4 v0, 0x0

    move v2, v4

    goto :goto_1a2

    :cond_1db
    const/4 v5, 0x0

    goto/16 :goto_111

    :cond_1de
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v12

    div-float/2addr v0, v2

    const/high16 v2, 0x40000000  # 2.0f

    add-float/2addr v0, v2

    move v2, v0

    goto/16 :goto_115

    :cond_1eb
    iget v5, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v7, v5, :cond_20f

    iget-boolean v5, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_20f

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v0}, Landroidj/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_214

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    :cond_20f
    :goto_20f
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_11a

    :cond_214
    const/4 v0, 0x0

    goto :goto_20f

    :cond_216
    if-eqz v0, :cond_234

    iget v5, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v7, v5, :cond_234

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_232

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    goto :goto_20f

    :cond_232
    const/4 v0, 0x0

    goto :goto_20f

    :cond_234
    invoke-virtual {p0, v7, v3}, Landroidj/support/v4/view/ViewPager;->addNewItem(II)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_24e

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    goto :goto_20f

    :cond_24e
    const/4 v0, 0x0

    goto :goto_20f

    :cond_250
    const/4 v0, 0x0

    goto/16 :goto_12f

    :cond_253
    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28f

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    :goto_266
    if-eqz v0, :cond_26e

    iget v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-eq v0, v1, :cond_14

    :cond_26e
    const/4 v0, 0x0

    :goto_26f
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroidj/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_28c

    iget v2, v2, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_28c

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_28c
    add-int/lit8 v0, v0, 0x1

    goto :goto_26f

    :cond_28f
    const/4 v0, 0x0

    goto :goto_266

    :cond_291
    move v2, v4

    goto/16 :goto_1a2

    :cond_294
    move-object v8, v0

    goto/16 :goto_d1

    :cond_297
    const/4 v0, 0x0

    goto/16 :goto_c6

    :cond_29a
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_d
.end method

.method public removeOnAdapterChangeListener(Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1  # Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeOnPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroidj/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public setAdapter(Landroidj/support/v4/view/PagerAdapter;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v5}, Landroidj/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidj/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_12
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget v4, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v0, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroidj/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_2f
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidj/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->removeNonDecorViews()V

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v2}, Landroidj/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_41
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_84

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mObserver:Landroidj/support/v4/view/ViewPager$PagerObserver;

    if-nez v0, :cond_56

    new-instance v0, Landroidj/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/ViewPager$PagerObserver;-><init>(Landroidj/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mObserver:Landroidj/support/v4/view/ViewPager$PagerObserver;

    :cond_56
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mObserver:Landroidj/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v3}, Landroidj/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Landroidj/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    iget v3, p0, Landroidj/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_a6

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Landroidj/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroidj/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v0, v2, v6}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/view/ViewPager;->mRestoredCurItem:I

    iput-object v5, p0, Landroidj/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v5, p0, Landroidj/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :cond_84
    :goto_84
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_96
    if-ge v2, v3, :cond_b0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p0, v1, p1}, Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidj/support/v4/view/ViewPager;Landroidj/support/v4/view/PagerAdapter;Landroidj/support/v4/view/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :cond_a6
    if-nez v0, :cond_ac

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    goto :goto_84

    :cond_ac
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_84

    :cond_b0
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1b

    :try_start_9
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1b} :catch_2b

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_34

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_34
    move-exception v0

    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, p1, v0, v1}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void

    :cond_c
    move v0, v1

    goto :goto_8
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidj/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_e
    invoke-direct {p0, v1}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_11
    return-void

    :cond_12
    if-nez p3, :cond_24

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_24

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0, v1}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_11

    :cond_24
    if-gez p1, :cond_4b

    move p1, v1

    :cond_27
    :goto_27
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_34

    iget v2, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_5c

    :cond_34
    move v2, v1

    :goto_35
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v3, v0, Landroidj/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    :cond_4b
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_27

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_27

    :cond_5c
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_61

    move v1, v3

    :cond_61
    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_70

    iput p1, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v1, :cond_6c

    invoke-direct {p0, p1}, Landroidj/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    :cond_6c
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_11

    :cond_70
    invoke-virtual {p0, p1}, Landroidj/support/v4/view/ViewPager;->populate(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroidj/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_11
.end method

.method setInternalPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)Landroidj/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_26
    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    iput p1, p0, Landroidj/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    :cond_2f
    return-void
.end method

.method public setOnPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager;->mOnPageChangeListener:Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    iput p1, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroidj/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->invalidate()V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setPageTransformer(ZLandroidj/support/v4/view/ViewPager$PageTransformer;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/view/ViewPager;->setPageTransformer(ZLandroidj/support/v4/view/ViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLandroidj/support/v4/view/ViewPager$PageTransformer;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_26

    if-eqz p2, :cond_27

    move v0, v1

    :goto_b
    iget-object v3, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformer:Landroidj/support/v4/view/ViewPager$PageTransformer;

    if-eqz v3, :cond_29

    move v3, v1

    :goto_10
    if-eq v0, v3, :cond_2b

    move v3, v1

    :goto_13
    iput-object p2, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformer:Landroidj/support/v4/view/ViewPager$PageTransformer;

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_1d

    const/4 v1, 0x2

    :cond_1d
    iput v1, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrder:I

    iput p3, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformerLayerType:I

    :goto_21
    if-eqz v3, :cond_26

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    :cond_26
    return-void

    :cond_27
    move v0, v2

    goto :goto_b

    :cond_29
    move v3, v2

    goto :goto_10

    :cond_2b
    move v3, v2

    goto :goto_13

    :cond_2d
    iput v2, p0, Landroidj/support/v4/view/ViewPager;->mDrawingOrder:I

    goto :goto_21
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Landroidj/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Landroidj/support/v4/view/ViewPager;->mScrollState:I

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mPageTransformer:Landroidj/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, Landroidj/support/v4/view/ViewPager;->enableLayers(Z)V

    :cond_11
    invoke-direct {p0, p1}, Landroidj/support/v4/view/ViewPager;->dispatchOnScrollStateChanged(I)V

    goto :goto_4

    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/view/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .registers 15

    const/4 v5, 0x1

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, v6}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v5

    :goto_1b
    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_27
    iget-object v1, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v6}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    move v1, v0

    :goto_30
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_54

    if-nez v4, :cond_54

    invoke-direct {p0, v6}, Landroidj/support/v4/view/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->populate()V

    invoke-virtual {p0, v6}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_d

    :cond_46
    move v0, v6

    goto :goto_1b

    :cond_48
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_27

    :cond_4f
    invoke-virtual {p0}, Landroidj/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    goto :goto_30

    :cond_54
    invoke-direct {p0, v5}, Landroidj/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v8, v5

    int-to-float v5, v5

    invoke-virtual {p0, v7}, Landroidj/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_9c

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    int-to-float v7, v9

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_8a
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput-boolean v6, p0, Landroidj/support/v4/view/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_d

    :cond_9c
    int-to-float v0, v0

    iget-object v5, p0, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    iget v7, p0, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v5, v7}, Landroidj/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v0, v5

    iget v5, p0, Landroidj/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float v0, v7, v0

    add-float/2addr v0, v10

    const/high16 v5, 0x42c80000  # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_8a
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
