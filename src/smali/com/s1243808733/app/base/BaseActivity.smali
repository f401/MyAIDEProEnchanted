.class public Lcom/s1243808733/app/base/BaseActivity;
.super Lcom/s1243808733/app/base/AbsActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/s1243808733/app/base/AbsActivity;-><init>()V

    return-void
.end method

.method private static setNavBar(Landroid/view/Window;)V
    .registers 3

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1f

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 68
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BarUtils;->setNavBarColor(Landroid/view/Window;I)V

    .line 69
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BarUtils;->setNavBarLightMode(Landroid/view/Window;Z)V

    return-void

    .line 73
    :cond_1f
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getNavBarHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x42480000  # 50.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 75
    const-string v0, "default"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 76
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "app_background"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getColorIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_67

    .line 78
    :cond_55
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color_ff212121"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getColorIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 80
    :goto_67
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BarUtils;->setNavBarColor(Landroid/view/Window;I)V

    :cond_6a
    return-void
.end method

.method public static setStatusBar(Landroid/app/Activity;)V
    .registers 1

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/view/Window;)V

    return-void
.end method

.method public static setStatusBar(Landroid/view/Window;)V
    .registers 4

    .line 90
    invoke-static {p0}, Lcom/s1243808733/app/base/BaseActivity;->setNavBar(Landroid/view/Window;)V

    .line 91
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "immersion_statusbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x1010434

    if-eqz v0, :cond_3a

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_2b

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 95
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_45

    .line 98
    :cond_2b
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010433

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_45

    .line 104
    :cond_3a
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_45
    return-void
.end method


# virtual methods
.method public isApplyTheme()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 39
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 57
    invoke-super {p0}, Lcom/s1243808733/app/base/AbsActivity;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/AbsActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1, p2}, Lcom/s1243808733/app/base/AbsActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 27
    invoke-super {p0}, Lcom/s1243808733/app/base/AbsActivity;->onStart()V

    .line 28
    invoke-static {p0}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 33
    invoke-super {p0}, Lcom/s1243808733/app/base/AbsActivity;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .line 63
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/AbsActivity;->setContentView(I)V

    return-void
.end method
