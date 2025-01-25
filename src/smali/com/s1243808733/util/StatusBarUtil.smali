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
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTranslucentView(Landroid/app/Activity;I)V
    .registers 5

    .line 613
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 614
    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 616
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1e

    .line 617
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :cond_1e
    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2d

    .line 621
    :cond_26
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2d
    return-void
.end method

.method private static calculateStatusColor(II)I
    .registers 9

    if-nez p1, :cond_3

    return p0

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    shr-int/lit8 p1, p0, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int p1, v1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    mul-float p0, p0, v0

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v3

    double-to-int p0, v5

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static clearPreviousSetting(Landroid/app/Activity;)V
    .registers 3

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

    if-eqz v1, :cond_29

    .line 600
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 601
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 602
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_29
    return-void
.end method

.method private static createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .registers 3

    .line 633
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;
    .registers 6

    .line 646
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 647
    nop

    .line 648
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 649
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    invoke-static {p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 651
    const p0, 0x1020014

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .registers 5

    .line 707
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 708
    nop

    .line 709
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    const/4 p0, 0x0

    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 712
    const p0, 0x1020015

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static hideFakeStatusBarView(Landroid/app/Activity;)V
    .registers 3

    .line 524
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 525
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_18

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_18
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 531
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method public static setColor(Landroid/app/Activity;I)V
    .registers 3

    .line 44
    const/16 v0, 0x70

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColor(Landroid/app/Activity;II)V
    .registers 5

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

    move-result-object p0

    invoke-static {p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public static setColorDiff(Landroid/app/Activity;I)V
    .registers 5
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

    if-eqz v1, :cond_25

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_21

    .line 169
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_21
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2c

    .line 173
    :cond_25
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    :goto_2c
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;I)V
    .registers 4

    .line 258
    const/16 v0, 0x70

    invoke-static {p0, p1, p2, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;II)V

    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;II)V
    .registers 10

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 294
    invoke-virtual {p1, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 295
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_34

    .line 298
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_34
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3f

    .line 302
    :cond_38
    invoke-static {p0, p2}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 305
    :goto_3f
    instance-of p2, v0, Landroid/widget/LinearLayout;

    if-nez p2, :cond_66

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 306
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 307
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    .line 307
    add-int/2addr v2, v3

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 311
    :cond_66
    invoke-static {p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setDrawerLayoutProperty(Landroidj/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    .line 312
    invoke-static {p0, p3}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setColorForDrawerLayoutDiff(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 342
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_24

    .line 345
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_24
    const/16 v3, 0x70

    invoke-static {p2, v3}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_35

    .line 350
    :cond_2e
    invoke-static {p0, p2}, Lcom/s1243808733/util/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 353
    :goto_35
    instance-of p2, v1, Landroid/widget/LinearLayout;

    if-nez p2, :cond_4b

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 354
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p2, v0, p0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 357
    :cond_4b
    invoke-static {p1, v1}, Lcom/s1243808733/util/StatusBarUtil;->setDrawerLayoutProperty(Landroidj/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;I)V
    .registers 3

    .line 83
    const/16 v0, 0x70

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColorForSwipeBack(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;II)V
    .registers 6

    .line 99
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 103
    invoke-static {p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 105
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public static setColorNoTranslucent(Landroid/app/Activity;I)V
    .registers 3

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColorNoTranslucentForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;I)V
    .registers 4

    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/s1243808733/util/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;II)V

    return-void
.end method

.method public static setDarkMode(Landroid/app/Activity;)V
    .registers 3

    .line 546
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMIUIStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 547
    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    .line 549
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1a
    return-void
.end method

.method private static setDrawerLayoutProperty(Landroidj/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V
    .registers 5

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 324
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 326
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static setLightMode(Landroid/app/Activity;)V
    .registers 3

    .line 537
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMIUIStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 538
    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    .line 540
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1a
    return-void
.end method

.method private static setMIUIStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .registers 10

    .line 557
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 559
    :try_start_8
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 560
    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 561
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 562
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "setExtraFlags"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p1, :cond_31

    move p1, v1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception p0

    :goto_45
    return-void
.end method

.method private static setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .registers 6

    .line 574
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 575
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 576
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "meizuFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 577
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 579
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 580
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eqz p1, :cond_2d

    or-int p1, v3, v1

    goto :goto_30

    :cond_2d
    xor-int/lit8 p1, v1, -0x1

    and-int/2addr p1, v3

    .line 586
    :goto_30
    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 587
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    move-exception p0

    :goto_3c
    return-void
.end method

.method private static setRootView(Landroid/app/Activity;)V
    .registers 5

    .line 659
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 660
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_24

    .line 661
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 662
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    .line 663
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 664
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;)V
    .registers 2

    .line 186
    const/16 v0, 0x70

    invoke-static {p0, v0}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucent(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;I)V
    .registers 2

    .line 201
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setTransparent(Landroid/app/Activity;)V

    .line 202
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentDiff(Landroid/app/Activity;)V
    .registers 3
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
    .registers 2

    .line 217
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 218
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;)V
    .registers 3

    .line 368
    const/16 v0, 0x70

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;I)V
    .registers 3

    .line 382
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTransparentForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;)V

    .line 383
    invoke-static {p0, p2}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayoutDiff(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 426
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 427
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 428
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 430
    invoke-virtual {p1, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 431
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 433
    invoke-virtual {p1, p0}, Landroidj/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V
    .registers 7

    .line 469
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    .line 470
    invoke-static {p0, p1}, Lcom/s1243808733/util/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    if-eqz p2, :cond_37

    .line 472
    const/16 p1, -0x7b

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 473
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 476
    :cond_19
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 477
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v2, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 479
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 454
    const/16 v0, 0x70

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V
    .registers 3

    .line 512
    invoke-static {p0, p1, p2}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 490
    const/16 v0, 0x70

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTransparent(Landroid/app/Activity;)V
    .registers 1

    .line 230
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 231
    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setTransparentForDrawerLayout(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;)V
    .registers 6

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 404
    invoke-virtual {p1, v1}, Landroidj/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-nez v2, :cond_36

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 407
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Lcom/s1243808733/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v2, v1, p0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 411
    :cond_36
    invoke-static {p1, v0}, Lcom/s1243808733/util/StatusBarUtil;->setDrawerLayoutProperty(Landroidj/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static setTransparentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 444
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTransparentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 500
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method private static setTransparentForWindow(Landroid/app/Activity;)V
    .registers 3

    .line 674
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 675
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 676
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 677
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static transparentStatusBar(Landroid/app/Activity;)V
    .registers 3

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

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
