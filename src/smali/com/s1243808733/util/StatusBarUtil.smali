.class public Lcom/s1243808733/util/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field public static final DEFAULT_STATUS_BAR_ALPHA:I = 0x70

.field private static final FAKE_STATUS_BAR_VIEW_ID:I = 0x1020014

.field private static final FAKE_TRANSLUCENT_VIEW_ID:I = 0x1020015

.field private static final TAG_KEY_HAVE_SET_OFFSET:I = -0x7b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTranslucentView(Landroid/app/Activity;I)V
    .locals 4

    const/4 v3, 0x0

    .line 613
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 614
    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 617
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :cond_0
    invoke-static {p1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 621
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static calculateStatusColor(II)I
    .locals 8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-nez p1, :cond_0

    :goto_0
    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    double-to-int v1, v2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    double-to-int v2, v2

    and-int/lit16 v3, p0, 0xff

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v0, v4

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int p0, v0, v1

    goto :goto_0
.end method

.method private static clearPreviousSetting(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 598
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 601
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 602
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private static createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1

    .line 633
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 4

    .line 646
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 647
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 649
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    invoke-static {p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 651
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    .line 707
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 708
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    invoke-static {p1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 712
    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static hideFakeStatusBarView(Landroid/app/Activity;)V
    .locals 3

    const/16 v2, 0x8

    .line 524
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 525
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_0
    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static setColor(Landroid/app/Activity;I)V
    .locals 1

    .line 44
    const/16 v0, 0x70

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColor(Landroid/app/Activity;II)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public static setColorDiff(Landroid/app/Activity;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 164
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    :goto_0
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void

    .line 173
    :cond_1
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    .line 258
    const/16 v0, 0x70

    invoke-static {p0, p1, p2, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 294
    invoke-virtual {p1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 295
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 298
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    :goto_0
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    .line 307
    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 311
    :cond_1
    invoke-static {p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setDrawerLayoutProperty(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    .line 312
    invoke-static {p0, p3}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void

    .line 302
    :cond_2
    invoke-static {p0, p2}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setColorForDrawerLayoutDiff(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 341
    invoke-virtual {p1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 342
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 345
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_0
    const/16 v2, 0x70

    invoke-static {p2, v2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    :goto_0
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 357
    :cond_1
    invoke-static {p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setDrawerLayoutProperty(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    return-void

    .line 350
    :cond_2
    invoke-static {p0, p2}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;I)V
    .locals 1

    .line 83
    const/16 v0, 0x70

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColorForSwipeBack(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;II)V
    .locals 3

    const/4 v2, 0x0

    .line 99
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 102
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 103
    invoke-static {p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 105
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public static setColorNoTranslucent(Landroid/app/Activity;I)V
    .locals 1

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColorNoTranslucentForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method

.method public static setDarkMode(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 546
    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMIUIStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 547
    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 549
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private static setDrawerLayoutProperty(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 324
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 325
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static setLightMode(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    .line 537
    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMIUIStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 538
    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private static setMIUIStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 559
    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 560
    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 561
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 562
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 563
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .locals 4

    .line 574
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 575
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 576
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "meizuFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 577
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 578
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 579
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 580
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eqz p1, :cond_0

    or-int/2addr v0, v3

    .line 586
    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 587
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .line 580
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static setRootView(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x1

    .line 659
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 660
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 661
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 662
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 663
    invoke-virtual {v1, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 664
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;)V
    .locals 1

    .line 186
    const/16 v0, 0x70

    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucent(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;I)V
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setTransparent(Landroid/app/Activity;)V

    .line 202
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentDiff(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 246
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setTranslucentForCoordinatorLayout(Landroid/app/Activity;I)V
    .locals 0

    .line 217
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 218
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1

    .line 368
    const/16 v0, 0x70

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 0

    .line 382
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTransparentForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 383
    invoke-static {p0, p2}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayoutDiff(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 426
    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 427
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 428
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 430
    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 431
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 433
    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 6

    const/16 v5, -0x7b

    .line 469
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    .line 470
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    if-eqz p2, :cond_0

    .line 472
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 477
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 479
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 454
    const/16 v0, 0x70

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    .line 512
    invoke-static {p0, p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 490
    const/16 v0, 0x70

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTransparent(Landroid/app/Activity;)V
    .locals 0

    .line 230
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 231
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setTransparentForDrawerLayout(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 404
    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 411
    :cond_0
    invoke-static {p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setDrawerLayoutProperty(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static setTransparentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 444
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTransparentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 500
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method private static setTransparentForWindow(Landroid/app/Activity;)V
    .locals 2

    .line 674
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 675
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 677
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static transparentStatusBar(Landroid/app/Activity;)V
    .locals 2

    .line 690
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 691
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 692
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 693
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
