.class public Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "AndroidRActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isApplyTheme()Z
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "themeid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 21
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 22
    const-string v0, "themeid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "themeid"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

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

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 40
    const-string v0, "tag"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "FragmentString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;-><init>()V

    .line 53
    :goto_1
    if-nez v1, :cond_2

    .line 57
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;-><init>()V

    .line 58
    const-string v0, "FragmentMain"

    .line 61
    :cond_2
    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {v3, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    :cond_3
    const v2, 0x1020002

    invoke-virtual {v3, v2, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u7cfb\u7edf\u8d44\u6e90\u67e5\u770b"

    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v0, "View system resources"

    goto :goto_2

    .line 44
    :cond_6
    const-string v1, "FragmentColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;-><init>()V

    goto :goto_1

    .line 46
    :cond_7
    const-string v1, "FragmentDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 47
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;-><init>()V

    goto :goto_1

    .line 48
    :cond_8
    const-string v1, "FragmentTheme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 49
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;-><init>()V

    goto :goto_1

    .line 50
    :cond_9
    const-string v1, "FragmentThemePreview"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;-><init>()V

    goto :goto_1

    .line 52
    :cond_a
    const-string v1, "FragmentTextAppearance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 53
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;-><init>()V

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->finish()V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
