.class public Lcom/s1243808733/aide/widget/MainBrowserContainer;
.super Landroid/widget/FrameLayout;
.source "MainBrowserContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    div-double/2addr v0, v4

    double-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 19
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    invoke-virtual {p0, v2}, Lcom/s1243808733/aide/widget/MainBrowserContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MainBrowserContainer;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method
