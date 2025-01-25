.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;


# instance fields
.field private BT:I

.field private Mr:I

.field private P8:F

.field private U2:I

.field private XL:I

.field private a8:I

.field private aM:I

.field private ei:F

.field private er:I

.field private gW:Z

.field private j3:I

.field private final lg:Landroid/graphics/Paint;

.field private nw:I

.field private final rN:Landroid/graphics/Rect;

.field private vy:Z

.field private yS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/support/v4/view/PagerTabStrip;->lg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->rN:Landroid/graphics/Rect;

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->er:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->gW:Z

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->QX:I

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->XL:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000  # 3.0f

    mul-float v1, v1, p2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->aM:I

    const/high16 v1, 0x40c00000  # 6.0f

    mul-float v1, v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->j3:I

    const/high16 v1, 0x42800000  # 64.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->Mr:I

    const/high16 v1, 0x41800000  # 16.0f

    mul-float v1, v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float v1, v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->BT:I

    const/high16 v1, 0x42000000  # 32.0f

    mul-float p2, p2, v1

    add-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, p0, Landroid/support/v4/view/PagerTabStrip;->U2:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->nw:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getTextSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0, p0}, Landroid/support/v4/view/p;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0, p0}, Landroid/support/v4/view/q;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_aa

    iput-boolean p2, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    :cond_aa
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    return v0
.end method

.method getMinHeight()I
    .registers 3

    invoke-super {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->U2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->XL:I

    return v0
.end method

.method j6(IFZ)V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->rN:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    iget v6, p0, Landroid/support/v4/view/PagerTabStrip;->aM:I

    sub-int v6, v1, v6

    sub-int/2addr v2, v3

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v6, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    const/high16 p1, 0x3f000000  # 0.5f

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40000000  # 2.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x437f0000  # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->er:I

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    iget p2, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    move-result p2

    iget p3, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    add-int/2addr p2, p3

    invoke-virtual {v0, p1, v6, p2, v1}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, v0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    iget v5, v0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    iget v6, v0, Landroid/support/v4/view/PagerTabStrip;->aM:I

    iget-object v7, v0, Landroid/support/v4/view/PagerTabStrip;->lg:Landroid/graphics/Paint;

    iget v8, v0, Landroid/support/v4/view/PagerTabStrip;->er:I

    shl-int/lit8 v8, v8, 0x18

    iget v9, v0, Landroid/support/v4/view/PagerTabStrip;->XL:I

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    sub-int/2addr v2, v3

    int-to-float v12, v2

    sub-int v2, v1, v6

    int-to-float v13, v2

    add-int/2addr v4, v5

    int-to-float v14, v4

    int-to-float v6, v1

    iget-object v2, v0, Landroid/support/v4/view/PagerTabStrip;->lg:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v15, v6

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    if-eqz v2, :cond_66

    iget-object v2, v0, Landroid/support/v4/view/PagerTabStrip;->lg:Landroid/graphics/Paint;

    iget v3, v0, Landroid/support/v4/view/PagerTabStrip;->XL:I

    and-int/2addr v3, v10

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    int-to-float v3, v2

    iget v2, v0, Landroid/support/v4/view/PagerTabStrip;->BT:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v7, v0, Landroid/support/v4/view/PagerTabStrip;->lg:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v2, p0, Landroid/support/v4/view/PagerTabStrip;->vy:Z

    if-eqz v2, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x1

    if-eqz v0, :cond_6b

    if-eq v0, v3, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    goto :goto_71

    :cond_1d
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->P8:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->nw:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_39

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->ei:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->nw:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_71

    :cond_39
    iput-boolean v3, p0, Landroid/support/v4/view/PagerTabStrip;->vy:Z

    goto :goto_71

    :cond_3c
    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_55

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_51
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_71

    :cond_55
    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->a8:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_71

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_51

    :cond_6b
    iput v2, p0, Landroid/support/v4/view/PagerTabStrip;->P8:F

    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->ei:F

    iput-boolean v1, p0, Landroid/support/v4/view/PagerTabStrip;->vy:Z

    :cond_71
    :goto_71
    return v3
.end method

.method public setBackgroundColor(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->gW:Z

    if-nez v0, :cond_11

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    :cond_11
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->gW:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    :cond_e
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->gW:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    :cond_e
    return-void
.end method

.method public setDrawFullUnderline(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->yS:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->gW:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->j3:I

    if-ge p4, v0, :cond_5

    move p4, v0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public setTabIndicatorColor(I)V
    .registers 3

    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->XL:I

    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->lg:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/b;->j6(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    return-void
.end method

.method public setTextSpacing(I)V
    .registers 3

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->Mr:I

    if-ge p1, v0, :cond_5

    move p1, v0

    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    return-void
.end method
