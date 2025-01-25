.class public Lcom/s1243808733/aide/widget/MainBrowserContainer;
.super Landroid/widget/FrameLayout;
.source "MainBrowserContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4004000000000000L  # 2.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p2, v0

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 19
    const/high16 p2, 0x40a00000  # 5.0f

    invoke-static {p2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/widget/MainBrowserContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/MainBrowserContainer;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method
