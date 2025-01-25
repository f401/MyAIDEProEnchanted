.class public Lcom/s1243808733/aide/widget/CustomSplitView;
.super Lcom/aide/ui/views/SplitView;
.source "CustomSplitView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/aide/ui/views/SplitView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/SplitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/SplitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBottomView()Landroid/view/View;
    .registers 3

    .line 37
    const-string v0, "BrowserPager"

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 39
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BrowserPager is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSeparatorView()Landroid/view/View;
    .registers 3

    .line 28
    const-string v0, "split_separator"

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 30
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "split_separator is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSwipeEnabled(Z)V
    .registers 4

    .line 46
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 49
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/CustomSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    .line 52
    :cond_1d
    move v1, p1

    :goto_1e
    invoke-super {p0, v1}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    return-void
.end method
