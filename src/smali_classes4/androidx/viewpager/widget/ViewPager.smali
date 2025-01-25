.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$DecorView;,
        Landroidx/viewpager/widget/ViewPager$ItemInfo;,
        Landroidx/viewpager/widget/ViewPager$LayoutParams;,
        Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$PageTransformer;,
        Landroidx/viewpager/widget/ViewPager$PagerObserver;,
        Landroidx/viewpager/widget/ViewPager$SavedState;,
        Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
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

.field private static final sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;",
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

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

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

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

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

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v0, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

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

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v0, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V
    .registers 14

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    if-lez v0, :cond_56

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    :goto_16
    if-eqz p3, :cond_bb

    iget v1, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v0, :cond_72

    iget v0, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v3, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v3

    add-float v4, v0, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v2

    move v3, v0

    :goto_29
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-gt v3, v0, :cond_bb

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_bb

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_3d
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v7, :cond_59

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_59

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_3d

    :cond_56
    const/4 v0, 0x0

    move v5, v0

    goto :goto_16

    :cond_59
    :goto_59
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v7, :cond_68

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v5

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_68
    iput v4, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    add-float/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_29

    :cond_72
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v0, :cond_bb

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v4, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v1, -0x1

    move v1, v0

    :goto_83
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-lt v3, v0, :cond_bb

    if-ltz v1, :cond_bb

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_91
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v7, :cond_a2

    if-lez v1, :cond_a2

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_91

    :cond_a2
    :goto_a2
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v7, :cond_b1

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v5

    sub-float/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_a2

    :cond_b1
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v5

    sub-float/2addr v4, v7

    iput v4, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_83

    :cond_bb
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v1, v0, -0x1

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v0, :cond_f9

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    :goto_cd
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_fd

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v9

    :goto_db
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    add-int/lit8 v0, p2, -0x1

    move v4, v0

    :goto_e0
    if-ltz v4, :cond_113

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_ea
    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v8, :cond_101

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v5

    sub-float/2addr v3, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_ea

    :cond_f9
    const v0, -0x800001

    goto :goto_cd

    :cond_fd
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_db

    :cond_101
    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v5

    sub-float/2addr v3, v8

    iput v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v0, :cond_10d

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    :cond_10d
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v0

    goto :goto_e0

    :cond_113
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v1, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v1

    add-float v1, v0, v5

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_121
    if-ge v4, v7, :cond_150

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_12b
    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v8, :cond_13a

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v5

    add-float/2addr v1, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_12b

    :cond_13a
    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v8, v6, :cond_144

    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v1

    sub-float/2addr v8, v9

    iput v8, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    :cond_144
    iput v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    add-float/2addr v1, v0

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_121

    :cond_150
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5b

    move v0, v4

    :goto_8
    if-eqz v0, :cond_3c

    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v3

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_34

    if-eq v3, v6, :cond_3c

    :cond_34
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    if-eq v5, v1, :cond_3c

    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    :cond_3c
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    move v1, v2

    move v3, v0

    :goto_40
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-boolean v5, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_57

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    move v3, v4

    :cond_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40

    :cond_5b
    move v0, v2

    goto :goto_8

    :cond_5d
    if-eqz v3, :cond_66

    if-eqz p1, :cond_67

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_66
    :goto_66
    return-void

    :cond_67
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_66
.end method

.method private determineTargetPage(IFII)I
    .registers 8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_41

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_41

    if-lez p3, :cond_3e

    :goto_12
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3d
    return p1

    :cond_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_41
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_4c

    const v0, 0x3ecccccd  # 0.4f

    :goto_48
    add-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_12

    :cond_4c
    const v0, 0x3f19999a  # 0.6f

    goto :goto_48
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_7
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_24

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_24
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2b
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_24

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_24
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2b
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_7
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_24

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_24
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2b
    return-void
.end method

.method private enableLayers(Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_1a

    if-eqz p1, :cond_18

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    :goto_c
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

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

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_5e

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_8
    if-nez p2, :cond_f

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5c

    if-eq v0, p0, :cond_5c

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2b

    :cond_5c
    move-object v0, v1

    goto :goto_e

    :cond_5e
    move-object v1, p1

    goto :goto_8
.end method

.method private getClientWidth()I
    .registers 3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_68

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    move v10, v0

    :goto_10
    if-lez v1, :cond_6a

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_18
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v3, v0

    move v7, v6

    move v8, v2

    move v9, v2

    :goto_1f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_67

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    if-nez v5, :cond_4c

    iget v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    if-eq v2, v4, :cond_4c

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    add-float v2, v8, v9

    add-float/2addr v2, v1

    iput v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iput v4, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v7, v7, -0x1

    :cond_4c
    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    if-nez v5, :cond_56

    cmpl-float v4, v10, v8

    if-ltz v4, :cond_67

    :cond_56
    add-float/2addr v2, v8

    add-float/2addr v2, v1

    cmpg-float v2, v10, v2

    if-ltz v2, :cond_66

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v7, v2, :cond_6c

    :cond_66
    move-object v3, v0

    :cond_67
    return-object v3

    :cond_68
    move v10, v2

    goto :goto_10

    :cond_6a
    move v1, v2

    goto :goto_18

    :cond_6c
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v9, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v7, v7, 0x1

    move-object v3, v0

    move v4, v2

    move v5, v6

    goto :goto_1f
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/viewpager/widget/ViewPager$DecorView;

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

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_22

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_22
    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pageScrolled(I)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-nez v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v1

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v6, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    int-to-float v7, p1

    div-float v5, v7, v5

    iget v7, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v5, v7

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v4

    div-float v1, v5, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v6, v1, v2}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_d

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDrag(F)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    add-float v5, v1, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v8, v0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float v4, v0, v8

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float v7, v0, v8

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v6, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_70

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float v4, v0, v8

    move v0, v2

    :goto_3a
    iget v6, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v9}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v6, v9, :cond_72

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v8

    move v6, v2

    :goto_4a
    cmpg-float v7, v5, v4

    if-gez v7, :cond_75

    if-eqz v0, :cond_8e

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    sub-float v1, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_5c
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v2, v1

    sub-float v2, v4, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    return v3

    :cond_70
    move v0, v3

    goto :goto_3a

    :cond_72
    move v6, v3

    move v1, v7

    goto :goto_4a

    :cond_75
    cmpl-float v0, v5, v1

    if-lez v0, :cond_8b

    if-eqz v6, :cond_89

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    sub-float v2, v5, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_87
    move v4, v1

    goto :goto_5c

    :cond_89
    move v3, v2

    goto :goto_87

    :cond_8b
    move v3, v2

    move v4, v5

    goto :goto_5c

    :cond_8e
    move v3, v2

    goto :goto_5c
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 10

    if-lez p2, :cond_4c

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

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

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto :goto_20

    :cond_4c
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_5c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

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
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->removeViewAt(I)V

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

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1c
    if-eqz p2, :cond_29

    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_26

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    move v0, v1

    goto :goto_1c

    :cond_29
    if-eqz p4, :cond_2e

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    :cond_2e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    goto :goto_26
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_26

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
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

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_2f

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

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
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_51
    if-eqz p1, :cond_3f

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 5

    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput p1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_21

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_27

    :cond_21
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    return-object v0

    :cond_27
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

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
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

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

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_2f

    if-eqz v0, :cond_20

    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v2, :cond_27

    :cond_20
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, v1}, Landroidx/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_26
    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    :cond_33
    move-object v1, p3

    goto :goto_a
.end method

.method public arrowScroll(I)Z
    .registers 9

    const/16 v6, 0x42

    const/16 v5, 0x11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_3d

    :goto_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c3

    if-eq v1, v0, :cond_c3

    if-ne p1, v5, :cond_a1

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_9c

    if-lt v2, v3, :cond_9c

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v0

    :goto_33
    if-eqz v0, :cond_3c

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->playSoundEffect(I)V

    :cond_3c
    return v0

    :cond_3d
    if-eqz v1, :cond_db

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_43
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7e

    if-ne v0, p0, :cond_79

    move v0, v3

    :goto_4a
    if-nez v0, :cond_db

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_60
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_80

    const-string v1, " => "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_60

    :cond_79
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_43

    :cond_7e
    move v0, v2

    goto :goto_4a

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ViewPager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_9c
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_33

    :cond_a1
    if-ne p1, v6, :cond_d8

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_bd

    if-gt v2, v3, :cond_bd

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v0

    goto/16 :goto_33

    :cond_bd
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_33

    :cond_c3
    if-eq p1, v5, :cond_c7

    if-ne p1, v3, :cond_cd

    :cond_c7
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v0

    goto/16 :goto_33

    :cond_cd
    if-eq p1, v6, :cond_d2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d8

    :cond_d2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v0

    goto/16 :goto_33

    :cond_d8
    move v0, v2

    goto/16 :goto_33

    :cond_db
    move-object v0, v1

    goto/16 :goto_d
.end method

.method public beginFakeDrag()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    :goto_7
    return v4

    :cond_8
    iput-boolean v8, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    invoke-virtual {p0, v8}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_32

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    move v4, v8

    goto :goto_7

    :cond_32
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1b
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 16

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

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
    if-ltz v7, :cond_52

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_4e

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_4e

    add-int v3, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_4e

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v3, v4, :cond_4e

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4d
    :goto_4d
    return v2

    :cond_4e
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    :cond_52
    if-eqz p2, :cond_5b

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_5b
    const/4 v2, 0x0

    goto :goto_4d
.end method

.method public canScrollHorizontally(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    if-gez p1, :cond_1a

    int-to-float v2, v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_25

    :goto_18
    move v1, v0

    goto :goto_6

    :cond_1a
    if-lez p1, :cond_6

    int-to-float v2, v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_25
    move v0, v1

    goto :goto_18
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

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

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public computeScroll()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :cond_3d
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_40
    return-void

    :cond_41
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    goto :goto_40
.end method

.method dataSetChanged()V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    iput v8, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_46

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_46

    move v0, v1

    :goto_21
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v3, v0

    move v4, v2

    move v6, v2

    :goto_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_85

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_48

    move v0, v3

    :goto_42
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_26

    :cond_46
    move v0, v2

    goto :goto_21

    :cond_48
    const/4 v9, -0x2

    if-ne v7, v9, :cond_77

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    if-nez v6, :cond_5a

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v6, v1

    :cond_5a
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v7, v9}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v3, v0, :cond_75

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v3, v8, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_75
    :goto_75
    move v0, v1

    goto :goto_42

    :cond_77
    iget v9, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v7, :cond_b8

    iget v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v3, v9, :cond_82

    move v5, v7

    :cond_82
    iput v7, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    goto :goto_75

    :cond_85
    if-eqz v6, :cond_8c

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_8c
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v4, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v3, :cond_b7

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_9a
    if-ge v3, v4, :cond_b1

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v6, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_ad

    const/4 v6, 0x0

    iput v6, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    :cond_ad
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9a

    :cond_b1
    invoke-virtual {p0, v5, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    :cond_b7
    return-void

    :cond_b8
    move v0, v3

    goto :goto_42
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_33

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

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
    .registers 4

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

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

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_a1

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_a1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_a1

    :cond_17
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000  # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_58
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    const/high16 v6, 0x42b40000  # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    const/high16 v8, 0x3f800000  # 1.0f

    add-float/2addr v7, v8

    neg-float v7, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-virtual {v6, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9b
    :goto_9b
    if-eqz v0, :cond_a0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_a0
    return-void

    :cond_a1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_9b
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    const/4 v5, 0x1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v3

    iget v4, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v1, v2

    iget v2, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v1, v2

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v4, v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v1

    invoke-virtual {p0, v1, v5, v5, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    :cond_41
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    return-void

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_42

    const/16 v1, 0x16

    if-eq v0, v1, :cond_30

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_19

    :cond_25
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_19

    :cond_30
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_19

    :cond_3b
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_19

    :cond_42
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_19

    :cond_4d
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_19
.end method

.method public fakeDragBy(F)V
    .registers 10

    const/4 v7, 0x0

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_82

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, p1

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float v2, v0, v5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float v4, v0, v5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v6, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_8e

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v0, v5

    :goto_40
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_8c

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v5

    :goto_4f
    cmpg-float v2, v3, v0

    if-gez v2, :cond_7c

    :goto_53
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v3, v2

    sub-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    const/4 v4, 0x2

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_9

    :cond_7c
    cmpl-float v0, v3, v1

    if-lez v0, :cond_8a

    move v0, v1

    goto :goto_53

    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    move v0, v3

    goto :goto_53

    :cond_8c
    move v1, v4

    goto :goto_4f

    :cond_8e
    move v0, v2

    goto :goto_40
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .registers 2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
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
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_d
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

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

.method infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

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

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000  # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v0, 0x41c80000  # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    const/high16 v0, 0x41800000  # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    new-instance v0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_6b
    new-instance v0, Landroidx/viewpager/widget/ViewPager$4;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$4;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_b8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_b8

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v9, v8

    div-float v10, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v6, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v4, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v12, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move v2, v3

    move v5, v4

    :goto_57
    if-ge v5, v12, :cond_b8

    :goto_59
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v3, :cond_6c

    if-ge v2, v11, :cond_6c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_59

    :cond_6c
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v5, v3, :cond_b9

    iget v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v4, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v9

    iget v4, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v6, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v6

    add-float/2addr v4, v10

    :goto_7c
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v13, v7

    cmpl-float v6, v6, v13

    if-lez v6, :cond_b1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b1
    add-int v6, v7, v8

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c7

    :cond_b8
    return-void

    :cond_b9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v3

    add-float v4, v3, v10

    add-float/2addr v4, v6

    add-float/2addr v3, v6

    mul-float/2addr v3, v9

    goto :goto_7c

    :cond_c7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v4

    goto :goto_57
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    if-ne v0, v6, :cond_13

    :cond_f
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    :cond_12
    :goto_12
    return v2

    :cond_13
    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1b

    move v2, v6

    goto :goto_12

    :cond_1b
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    if-nez v1, :cond_12

    :cond_1f
    if-eqz v0, :cond_c2

    if-eq v0, v3, :cond_3c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_38

    :cond_26
    :goto_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_30

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_30
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    goto :goto_12

    :cond_38
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_26

    :cond_3c
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7b

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Landroidx/viewpager/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7b

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7b

    iput v7, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v10, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    goto :goto_12

    :cond_7b
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_b8

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_b8

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_b1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_9b
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v10, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_a2
    :goto_a2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_26

    invoke-direct {p0, v7}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_26

    :cond_b1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_9b

    :cond_b8
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a2

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    goto :goto_a2

    :cond_c2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v0, v3, :cond_10e

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_10e

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto/16 :goto_26

    :cond_10e
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_26
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v11

    sub-int v12, p4, p2

    sub-int v13, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v14

    const/4 v1, 0x0

    const/4 v8, 0x0

    move v10, v1

    :goto_1f
    if-ge v10, v11, :cond_c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_149

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v6, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v6, :cond_149

    iget v6, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v6, 0x7

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v16, v1, 0x70

    const/4 v1, 0x1

    if-eq v6, v1, :cond_95

    const/4 v1, 0x3

    if-eq v6, v1, :cond_8c

    const/4 v1, 0x5

    if-eq v6, v1, :cond_7c

    move v9, v5

    move v7, v2

    move v6, v5

    :goto_4d
    const/16 v1, 0x10

    move/from16 v0, v16

    if-eq v0, v1, :cond_b9

    const/16 v1, 0x30

    move/from16 v0, v16

    if-eq v0, v1, :cond_b0

    const/16 v1, 0x50

    move/from16 v0, v16

    if-eq v0, v1, :cond_a2

    move v1, v3

    move v2, v4

    move v5, v3

    :goto_62
    add-int v3, v9, v14

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v15, v3, v1, v4, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v8, v8, 0x1

    move v1, v6

    move v3, v5

    move v4, v2

    :goto_76
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move v2, v7

    move v5, v1

    goto :goto_1f

    :cond_7c
    sub-int v1, v12, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v2, v6

    :goto_88
    move v9, v1

    move v7, v2

    move v6, v5

    goto :goto_4d

    :cond_8c
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v6, v1, v5

    move v9, v5

    move v7, v2

    goto :goto_4d

    :cond_95
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_88

    :cond_a2
    sub-int v1, v13, v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    move v5, v3

    goto :goto_62

    :cond_b0
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v5, v1, v3

    move v1, v3

    move v2, v4

    goto :goto_62

    :cond_b9
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v4

    move v5, v3

    goto :goto_62

    :cond_c8
    const/4 v1, 0x0

    move v6, v1

    :goto_ca
    if-ge v6, v11, :cond_123

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_11f

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v9, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_11f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_11f

    sub-int v10, v12, v5

    sub-int/2addr v10, v2

    int-to-float v10, v10

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    iget-boolean v14, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_112

    const/4 v14, 0x0

    iput-boolean v14, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v10, v13, v3

    sub-int/2addr v10, v4

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    :cond_112
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v7, v9, v3, v1, v10}, Landroid/view/View;->layout(IIII)V

    :cond_11f
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_ca

    :cond_123
    move-object/from16 v0, p0

    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    sub-int v1, v13, v4

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    move-object/from16 v0, p0

    iput v8, v0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_143

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    :cond_143
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    return-void

    :cond_149
    move v1, v5

    move v7, v2

    goto/16 :goto_76
.end method

.method protected onMeasure(II)V
    .registers 18

    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v1, v0}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v2, v0}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int v4, v1, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v12

    const/4 v1, 0x0

    move v11, v1

    :goto_3f
    const/4 v2, 0x1

    const/high16 v7, 0x40000000  # 2.0f

    if-ge v11, v12, :cond_cc

    invoke-virtual {p0, v11}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_ab

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v1, :cond_ab

    iget-boolean v3, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v3, :cond_ab

    iget v3, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v5, v3, 0x7

    iget v3, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v6, 0x30

    if-eq v3, v6, :cond_6c

    const/16 v6, 0x50

    if-ne v3, v6, :cond_af

    :cond_6c
    const/4 v3, 0x1

    move v10, v3

    :goto_6e
    const/4 v3, 0x3

    if-eq v5, v3, :cond_11a

    const/4 v3, 0x5

    if-ne v5, v3, :cond_b2

    move v9, v2

    :goto_75
    const/high16 v2, -0x80000000

    if-eqz v10, :cond_b5

    const/high16 v2, 0x40000000  # 2.0f

    :cond_7b
    const/high16 v3, -0x80000000

    :goto_7d
    iget v5, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_bc

    iget v2, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_ba

    iget v2, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    :goto_89
    const/high16 v6, 0x40000000  # 2.0f

    move v5, v2

    :goto_8c
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    const/4 v14, -0x2

    if-eq v2, v14, :cond_c2

    iget v2, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_bf

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    move v3, v7

    :goto_99
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v13, v2, v1}, Landroid/view/View;->measure(II)V

    if-eqz v10, :cond_c4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v8, v1

    :cond_ab
    :goto_ab
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_3f

    :cond_af
    const/4 v3, 0x0

    move v10, v3

    goto :goto_6e

    :cond_b2
    const/4 v2, 0x0

    move v9, v2

    goto :goto_75

    :cond_b5
    if-eqz v9, :cond_7b

    const/high16 v3, 0x40000000  # 2.0f

    goto :goto_7d

    :cond_ba
    move v2, v4

    goto :goto_89

    :cond_bc
    move v5, v4

    move v6, v2

    goto :goto_8c

    :cond_bf
    move v3, v7

    move v1, v8

    goto :goto_99

    :cond_c2
    move v1, v8

    goto :goto_99

    :cond_c4
    if-eqz v9, :cond_ab

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v4, v1

    goto :goto_ab

    :cond_cc
    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mChildWidthMeasureSpec:I

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_eb
    if-ge v2, v3, :cond_119

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_115

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v1, :cond_105

    iget-boolean v6, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_115

    :cond_105
    int-to-float v6, v4

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v5, v1, v6}, Landroid/view/View;->measure(II)V

    :cond_115
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_eb

    :cond_119
    return-void

    :cond_11a
    move v9, v2

    goto/16 :goto_75
.end method

.method protected onPageScrolled(IFI)V
    .registers 15

    const/4 v10, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_6f

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v8

    move v5, v4

    :goto_1b
    if-ge v5, v8, :cond_6f

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v3, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_31

    move v3, v1

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v3

    goto :goto_1b

    :cond_31
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v10, :cond_61

    const/4 v3, 0x3

    if-eq v0, v3, :cond_59

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4b

    move v0, v1

    move v3, v1

    :goto_3f
    add-int/2addr v0, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2c

    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2c

    :cond_4b
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_3f

    :cond_59
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v0, v1

    move v0, v1

    goto :goto_3f

    :cond_61
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v1

    goto :goto_3f

    :cond_6f
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageScrolled(IFI)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    move v1, v4

    :goto_7f
    if-ge v1, v3, :cond_a5

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_93

    :goto_8f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7f

    :cond_93
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-interface {v5, v4, v0}, Landroidx/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_8f

    :cond_a5
    iput-boolean v10, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2c

    move v4, v0

    move v5, v1

    :goto_d
    if-eq v5, v2, :cond_35

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

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

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_24

    iget-object v1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_7

    :cond_24
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iput v1, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_17
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_a

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v0}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_7

    :cond_16
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    move v0, v2

    goto :goto_7

    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2c
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_140

    if-eq v0, v1, :cond_f1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6f

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5e

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4e

    :cond_47
    :goto_47
    if-eqz v2, :cond_4c

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4c
    move v0, v1

    goto :goto_7

    :cond_4e
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    goto :goto_47

    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    goto :goto_47

    :cond_6f
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_47

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v2

    goto :goto_47

    :cond_7d
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_d6

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8f

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v2

    goto :goto_47

    :cond_8f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d6

    cmpl-float v0, v4, v0

    if-lez v0, :cond_d6

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ec

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_c3
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d6

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d6
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_47

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    goto/16 :goto_47

    :cond_ec
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_c3

    :cond_f1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    iget v6, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float v2, v3, v2

    iget v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v6, v2, v0, v3}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_47

    :cond_140
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    goto/16 :goto_47
.end method

.method pageLeft()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method pageRight()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_17

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_17

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method populate()V
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .registers 19

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move-object v3, v2

    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v2, :cond_22

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_15

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    if-eqz v2, :cond_2c

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    goto :goto_1e

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v14, v2, :cond_2ac

    const/4 v2, 0x0

    move v4, v2

    :goto_64
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_14e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v5, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt v5, v6, :cond_149

    iget v5, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_14e

    :goto_88
    if-nez v2, :cond_314

    if-lez v14, :cond_314

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    move-object v12, v2

    :goto_97
    if-eqz v12, :cond_10b

    add-int/lit8 v6, v4, -0x1

    if-ltz v6, :cond_151

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_a7
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v16

    if-gtz v16, :cond_154

    const/4 v5, 0x0

    :goto_ae
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v7, -0x1

    const/4 v8, 0x0

    move-object v9, v2

    move v11, v10

    move v7, v4

    :goto_b8
    if-ltz v11, :cond_c2

    cmpl-float v2, v8, v5

    if-ltz v2, :cond_198

    if-ge v11, v13, :cond_198

    if-nez v9, :cond_165

    :cond_c2
    iget v6, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v5, v7, 0x1

    const/high16 v2, 0x40000000  # 2.0f

    cmpg-float v2, v6, v2

    if-gez v2, :cond_f7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_1d5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v8, v2

    :goto_e1
    if-gtz v16, :cond_1d8

    const/4 v2, 0x0

    move v4, v2

    :goto_e5
    move-object/from16 v0, p0

    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move-object v2, v8

    move v10, v9

    :goto_eb
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v14, :cond_f7

    cmpl-float v8, v6, v4

    if-ltz v8, :cond_220

    if-le v10, v15, :cond_220

    if-nez v2, :cond_1e7

    :cond_f7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7, v3}, Landroidx/viewpager/widget/ViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v4, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_11a
    if-ge v3, v4, :cond_264

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iput v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    iget-boolean v6, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_145

    iget v6, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_145

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_145

    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v6, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iput v5, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    :cond_145
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_11a

    :cond_149
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_64

    :cond_14e
    const/4 v2, 0x0

    goto/16 :goto_88

    :cond_151
    const/4 v2, 0x0

    goto/16 :goto_a7

    :cond_154
    const/high16 v5, 0x40000000  # 2.0f

    iget v7, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    move/from16 v0, v16

    int-to-float v8, v0

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    goto/16 :goto_ae

    :cond_165
    iget v2, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v2, :cond_193

    iget-boolean v2, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v2, :cond_193

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v4, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11, v4}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v4, v6, -0x1

    add-int/lit8 v6, v7, -0x1

    if-ltz v4, :cond_310

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v2

    move v10, v4

    move v7, v6

    :goto_192
    move v6, v10

    :cond_193
    add-int/lit8 v2, v11, -0x1

    move v11, v2

    goto/16 :goto_b8

    :cond_198
    if-eqz v9, :cond_1b2

    iget v2, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v2, :cond_1b2

    iget v2, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-int/lit8 v4, v6, -0x1

    if-ltz v4, :cond_30d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v2

    move v10, v4

    goto :goto_192

    :cond_1b2
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-int/lit8 v4, v7, 0x1

    if-ltz v6, :cond_1cf

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v9, v2

    move v10, v6

    move v7, v4

    goto :goto_192

    :cond_1cf
    move v2, v6

    move v7, v4

    :goto_1d1
    const/4 v4, 0x0

    move-object v9, v4

    move v10, v2

    goto :goto_192

    :cond_1d5
    const/4 v8, 0x0

    goto/16 :goto_e1

    :cond_1d8
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    add-float/2addr v2, v4

    move v4, v2

    goto/16 :goto_e5

    :cond_1e7
    iget v8, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v8, :cond_309

    iget-boolean v8, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v8, :cond_309

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10, v2}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_21b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v8, v2

    move v9, v5

    :goto_217
    move-object v2, v8

    move v5, v9

    goto/16 :goto_eb

    :cond_21b
    move v2, v5

    const/4 v5, 0x0

    move-object v8, v5

    move v9, v2

    goto :goto_217

    :cond_220
    if-eqz v2, :cond_242

    iget v8, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v8, :cond_242

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_21b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v8, v2

    move v9, v5

    goto :goto_217

    :cond_242
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_21b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v8, v2

    move v9, v5

    goto :goto_217

    :cond_264
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    :goto_279
    if-eqz v2, :cond_283

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v2, v3, :cond_1e

    :cond_283
    const/4 v2, 0x0

    :goto_284
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2a7

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2a7

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_2a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_284

    :cond_2aa
    const/4 v2, 0x0

    goto :goto_279

    :cond_2ac
    :try_start_2ac
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_2b7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2ac .. :try_end_2b7} :catch_2ff

    move-result-object v2

    :goto_2b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Pager class: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Problematic adapter: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2ff
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b8

    :cond_309
    move-object v8, v2

    move v9, v5

    goto/16 :goto_217

    :cond_30d
    move v2, v4

    goto/16 :goto_1d1

    :cond_310
    move v2, v4

    move v7, v6

    goto/16 :goto_1d1

    :cond_314
    move-object v12, v2

    goto/16 :goto_97
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_3f

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_10
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2d
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->removeNonDecorViews()V

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :cond_3f
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    if-eqz p1, :cond_80

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    if-nez v0, :cond_52

    new-instance v0, Landroidx/viewpager/widget/ViewPager$PagerObserver;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    :cond_52
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_a0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v0, v2, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    iput-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :cond_80
    :goto_80
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_aa

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_90
    if-ge v2, v3, :cond_aa

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p0, v1, p1}, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    :cond_a0
    if-nez v0, :cond_a6

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    goto :goto_80

    :cond_a6
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_80

    :cond_aa
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_c
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_f
    return-void

    :cond_10
    if-nez p3, :cond_22

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_22

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_f

    :cond_22
    if-gez p1, :cond_48

    move p1, v1

    :cond_25
    :goto_25
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int v4, v2, v0

    if-gt p1, v4, :cond_31

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_59

    :cond_31
    move v2, v1

    :goto_32
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_59

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_32

    :cond_48
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_25

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_25

    :cond_59
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_5e

    move v1, v3

    :cond_5e
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_6d

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v1, :cond_69

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    :cond_69
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_f

    :cond_6d
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_f
.end method

.method setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ViewPager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_22
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2b

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    :cond_2b
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->invalidate()V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_21

    move v0, v1

    :goto_5
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_23

    move v3, v1

    :goto_a
    if-eq v0, v3, :cond_25

    move v3, v1

    :goto_d
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v0, :cond_27

    if-eqz p1, :cond_17

    const/4 v1, 0x2

    :cond_17
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    iput p3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    :goto_1b
    if-eqz v3, :cond_20

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    :cond_20
    return-void

    :cond_21
    move v0, v2

    goto :goto_5

    :cond_23
    move v3, v2

    goto :goto_a

    :cond_25
    move v3, v2

    goto :goto_d

    :cond_27
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    goto :goto_1b
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->enableLayers(Z)V

    :cond_11
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnScrollStateChanged(I)V

    goto :goto_4

    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .registers 14

    const/4 v5, 0x1

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v5

    :goto_19
    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_25
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    move v1, v0

    :goto_2e
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_52

    if-nez v4, :cond_52

    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_d

    :cond_44
    move v0, v6

    goto :goto_19

    :cond_46
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_25

    :cond_4d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    goto :goto_2e

    :cond_52
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v0, v0

    mul-float/2addr v7, v9

    div-float/2addr v7, v0

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v5, v5

    invoke-virtual {p0, v7}, Landroidx/viewpager/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lez v8, :cond_9a

    mul-float v0, v7, v5

    add-float/2addr v0, v5

    int-to-float v5, v8

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x447a0000  # 1000.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_88
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_d

    :cond_9a
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v5, v7}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v0, v5

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float v0, v7, v0

    add-float/2addr v0, v9

    const/high16 v5, 0x42c80000  # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_88
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
