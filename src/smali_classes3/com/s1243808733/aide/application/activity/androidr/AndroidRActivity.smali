.class public Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "AndroidRActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isApplyTheme()Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "themeid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 22
    const-string v0, "themeid"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "themeid"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->setTheme(I)V

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    move-object v0, v1

    .line 38
    check-cast v0, Landroid/app/Fragment;

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    const-string v1, "tag"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_STRING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;-><init>()V

    .line 56
    :goto_1
    if-nez v2, :cond_a

    .line 57
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;-><init>()V

    .line 58
    const-string v0, "FragmentMain"

    move-object v2, v1

    .line 61
    :goto_2
    invoke-virtual {v3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    :cond_2
    const v1, 0x1020002

    invoke-virtual {v4, v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u7cfb\u7edf\u8d44\u6e90\u67e5\u770b"

    :goto_3
    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v0, "View system resources"

    goto :goto_3

    .line 44
    :cond_5
    sget-object v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_COLOR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;-><init>()V

    goto :goto_1

    .line 46
    :cond_6
    sget-object v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_DRAWABLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;-><init>()V

    goto :goto_1

    .line 48
    :cond_7
    sget-object v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_THENCE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;-><init>()V

    goto :goto_1

    .line 50
    :cond_8
    sget-object v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_THEME_PREVIEW:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;-><init>()V

    goto :goto_1

    .line 52
    :cond_9
    sget-object v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_TEXTAPPEARANCE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 53
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;-><init>()V

    goto :goto_1

    :cond_a
    move-object v0, v1

    goto :goto_2

    :cond_b
    move-object v2, v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->finish()V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
