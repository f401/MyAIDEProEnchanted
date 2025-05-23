.class public Landroidj/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Landroidj/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/PagerTitleStrip$PageListener;,
        Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;,
        Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;,
        Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final IMPL:Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroidj/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidj/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroidj/support/v4/view/PagerTitleStrip;->ATTRS:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroidj/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    new-instance v0, Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;

    invoke-direct {v0}, Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V

    sput-object v0, Landroidj/support/v4/view/PagerTitleStrip;->IMPL:Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    :goto_20
    return-void

    :cond_21
    new-instance v0, Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;

    invoke-direct {v0}, Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/view/PagerTitleStrip;->IMPL:Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    goto :goto_20

    nop

    :array_2a
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    new-instance v1, Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    invoke-direct {v1, p0}, Landroidj/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroidj/support/v4/view/PagerTitleStrip;)V

    iput-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    sget-object v1, Landroidj/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidj/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidj/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidj/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_4c
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-eqz v3, :cond_57

    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Landroidj/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    :cond_57
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_70
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mGravity:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v1, 0x3f19999a  # 0.6f

    invoke-virtual {p0, v1}, Landroidj/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v2, :cond_b2

    sget-object v1, Landroidj/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b2
    if-eqz v0, :cond_d4

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v0}, Landroidj/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v0}, Landroidj/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v0}, Landroidj/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    :goto_c3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000  # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return-void

    :cond_d4
    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_c3
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/PagerTitleStrip;->IMPL:Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method getMinHeight()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_b
    return v0
.end method

.method public getTextSpacing()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    check-cast v0, Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getAdapter()Landroidj/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroidj/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroidj/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    iput-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/PagerAdapter;

    :goto_31
    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/view/PagerTitleStrip;->updateAdapter(Landroidj/support/v4/view/PagerAdapter;Landroidj/support/v4/view/PagerAdapter;)V

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getAdapter()Landroidj/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidj/support/v4/view/PagerTitleStrip;->updateAdapter(Landroidj/support/v4/view/PagerAdapter;Landroidj/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroidj/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)Landroidj/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    iput-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    :cond_1f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    if-eqz v1, :cond_13

    iget v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_d

    iget v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_d
    iget v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroidj/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v6, 0x40000000  # 2.0f

    const/4 v5, -0x2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v6, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0, v5}, Landroidj/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3e4ccccd  # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p1, v3, v5}, Landroidj/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v6, :cond_55

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_45
    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v1}, Landroidj/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-static {v0, p2, v1}, Landroidj/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidj/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    return-void

    :cond_55
    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v3

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_45
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mGravity:I

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 5
    .param p1  # F
        .annotation build Landroidj/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    iget v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 5
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mTextColor:I

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method updateAdapter(Landroidj/support/v4/view/PagerAdapter;Landroidj/support/v4/view/PagerAdapter;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    :cond_a
    if-eqz p2, :cond_18

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPageListener:Landroidj/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    if-eqz v0, :cond_2f

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidj/support/v4/view/PagerTitleStrip;->updateText(ILandroidj/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->requestLayout()V

    :cond_2f
    return-void
.end method

.method updateText(ILandroidj/support/v4/view/PagerAdapter;)V
    .registers 9

    const/4 v2, 0x1

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_89

    invoke-virtual {p2}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    :goto_b
    iput-boolean v2, p0, Landroidj/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-lt p1, v2, :cond_8d

    if-eqz p2, :cond_8d

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroidj/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_17
    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_8b

    if-ge p1, v0, :cond_8b

    invoke-virtual {p2, p1}, Landroidj/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_26
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_35

    if-eqz p2, :cond_35

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_35
    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const v2, 0x3f4ccccd  # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iput p1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    iget-boolean v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v0, :cond_86

    iget v0, p0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v0, v1}, Landroidj/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_86
    iput-boolean v1, p0, Landroidj/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    return-void

    :cond_89
    move v0, v1

    goto :goto_b

    :cond_8b
    move-object v2, v3

    goto :goto_26

    :cond_8d
    move-object v2, v3

    goto :goto_17
.end method

.method updateTextPositions(IFZ)V
    .registers 22

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_127

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroidj/support/v4/view/ViewPager;->getAdapter()Landroidj/support/v4/view/PagerAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/view/PagerTitleStrip;->updateText(ILandroidj/support/v4/view/PagerAdapter;)V

    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    add-int v13, v10, v4

    const/high16 v2, 0x3f000000  # 0.5f

    add-float v2, v2, p2

    const/high16 v14, 0x3f800000  # 1.0f

    cmpl-float v14, v2, v14

    if-lez v14, :cond_5d

    const/high16 v14, 0x3f800000  # 1.0f

    sub-float/2addr v2, v14

    :cond_5d
    sub-int v14, v7, v13

    add-int/2addr v4, v9

    sub-int v4, v7, v4

    sub-int/2addr v4, v13

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v2, v14, v2

    div-int/lit8 v4, v3, 0x2

    sub-int v13, v2, v4

    add-int v14, v13, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v2, v15, v2

    sub-int v3, v15, v3

    sub-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int/2addr v4, v2

    add-int v16, v16, v3

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v16, v17, v15

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroidj/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x70

    sparse-switch v16, :sswitch_data_148

    add-int v4, v2, v11

    add-int v2, v3, v11

    add-int v3, v15, v11

    :goto_d1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidj/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v8, v13, v2, v14, v11}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    sub-int v2, v13, v2

    sub-int/2addr v2, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    add-int/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidj/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v2, v4, v5, v9}, Landroid/widget/TextView;->layout(IIII)V

    sub-int v2, v7, v10

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    add-int/2addr v4, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    add-int v5, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidj/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    :goto_126
    return-void

    :cond_127
    if-nez p3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_17

    goto :goto_126

    :sswitch_132
    sub-int/2addr v8, v11

    sub-int/2addr v8, v12

    sub-int v4, v8, v4

    div-int/lit8 v8, v4, 0x2

    add-int v4, v2, v8

    add-int v2, v3, v8

    add-int v3, v15, v8

    goto :goto_d1

    :sswitch_13f
    sub-int/2addr v8, v12

    sub-int/2addr v8, v4

    add-int v4, v2, v8

    add-int v2, v3, v8

    add-int v3, v15, v8

    goto :goto_d1

    :sswitch_data_148
    .sparse-switch
        0x10 -> :sswitch_132
        0x50 -> :sswitch_13f
    .end sparse-switch
.end method
