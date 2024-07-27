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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 37
    const-string v0, "BrowserPager"

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BrowserPager is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-object v0
.end method

.method public getSeparatorView()Landroid/view/View;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 28
    const-string v0, "split_separator"

    invoke-static {p0, v0}, Lcom/s1243808733/util/ViewUtil;->findViewByTag(Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "split_separator is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    return-object v0
.end method

.method public setSwipeEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    move p1, v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/CustomSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v0

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    return-void
.end method
