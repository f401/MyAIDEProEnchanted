.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    const/16 v0, 0xff

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    iput-boolean v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    iput-boolean v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTextColor:I

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000  # 3.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    const/high16 v1, 0x40c00000  # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    const/high16 v1, 0x42800000  # 64.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    const/high16 v1, 0x41800000  # 16.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    const/high16 v1, 0x42000000  # 32.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getTextSpacing()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/PagerTabStrip;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v1, Landroidx/viewpager/widget/PagerTabStrip$1;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/PagerTabStrip$1;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v1, Landroidx/viewpager/widget/PagerTabStrip$2;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/PagerTabStrip$2;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_a6

    iput-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_a6
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method getMinHeight()I
    .registers 3

    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const v9, 0xffffff

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v6

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v7, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v7, v7, 0x18

    iget v8, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    sub-int/2addr v0, v1

    int-to-float v1, v0

    sub-int v0, v6, v2

    int-to-float v2, v0

    add-int v0, v3, v4

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v2, v9

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_61
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v3, :cond_d

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    if-eqz v2, :cond_77

    if-eq v2, v1, :cond_3f

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1e

    :cond_1c
    :goto_1c
    move v0, v1

    goto :goto_c

    :cond_1e
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3c

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1c

    :cond_3c
    iput-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1c

    :cond_3f
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5b

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1c

    :cond_5b
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1c

    :cond_77
    iput v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    iput v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_1c
.end method

.method public setBackgroundColor(I)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundColor(I)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_f

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundResource(I)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setDrawFullUnderline(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    if-ge p4, v0, :cond_5

    move p4, v0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/PagerTitleStrip;->setPadding(IIII)V

    return-void
.end method

.method public setTabIndicatorColor(I)V
    .registers 3

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    return-void
.end method

.method public setTextSpacing(I)V
    .registers 3

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v0, :cond_5

    move p1, v0

    :cond_5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    return-void
.end method

.method updateTextPositions(IFZ)V
    .registers 11

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    iget-object v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v6, v1, v6

    sub-int/2addr v2, v3

    add-int v3, v4, v5

    invoke-virtual {v0, v2, v6, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    const/high16 v2, 0x3f000000  # 0.5f

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000  # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v6, v3, v1}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
