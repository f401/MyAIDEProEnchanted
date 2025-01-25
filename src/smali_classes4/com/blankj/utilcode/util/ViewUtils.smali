.class public Lcom/blankj/utilcode/util/ViewUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixScrollViewTopping(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    check-cast p0, Landroid/view/ViewGroup;

    :goto_a
    if-nez p0, :cond_f

    :cond_c
    return-void

    :cond_d
    const/4 p0, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_14
    if-ge v0, v2, :cond_c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_24

    invoke-static {v3}, Lcom/blankj/utilcode/util/ViewUtils;->fixScrollViewTopping(Landroid/view/View;)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public static isLayoutRtl()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_39

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2a

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    :goto_22
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_39

    move v0, v1

    :goto_29
    return v0

    :cond_2a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_22

    :cond_39
    move v0, v2

    goto :goto_29
.end method

.method public static layoutId2View(I)Landroid/view/View;
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static setViewEnabled(Landroid/view/View;Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    aput-object v0, v1, v2

    invoke-static {p0, p1, v1}, Lcom/blankj/utilcode/util/ViewUtils;->setViewEnabled(Landroid/view/View;Z[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setViewEnabled(Landroid/view/View;Z[Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    if-eqz p2, :cond_11

    array-length v2, p2

    move v0, v1

    :goto_8
    if-ge v0, v2, :cond_11

    aget-object v3, p2, v0

    if-eq p0, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1c
    if-ge v1, v2, :cond_28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/blankj/utilcode/util/ViewUtils;->setViewEnabled(Landroid/view/View;Z[Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_28
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3
.end method
