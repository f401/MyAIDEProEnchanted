.class public Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "AndroidRActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isApplyTheme()Z
    .registers 3

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
    .registers 5

    .line 21
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    const-string v1, "themeid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 23
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->setTheme(I)V

    .line 25
    :cond_14
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 27
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    const-string p1, "title"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4b

    .line 31
    :cond_39
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "系统资源查看"

    goto :goto_48

    :cond_46
    const-string v1, "View system resources"

    :goto_48
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 40
    const-string v2, "tag"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v2, "FragmentString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 43
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;-><init>()V

    goto :goto_ae

    .line 44
    :cond_67
    const-string v2, "FragmentColor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 45
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;-><init>()V

    goto :goto_ae

    .line 46
    :cond_75
    const-string v2, "FragmentDrawable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 47
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;-><init>()V

    goto :goto_ae

    .line 48
    :cond_83
    const-string v2, "FragmentTheme"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 49
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;-><init>()V

    goto :goto_ae

    .line 50
    :cond_91
    const-string v2, "FragmentThemePreview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 51
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentThemePreview;-><init>()V

    goto :goto_ae

    .line 52
    :cond_9f
    const-string v2, "FragmentTextAppearance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 53
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTextAppearance;-><init>()V

    goto :goto_ae

    :cond_ad
    const/4 v2, 0x0

    :goto_ae
    if-nez v2, :cond_b7

    .line 57
    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-direct {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;-><init>()V

    .line 58
    const-string v0, "FragmentMain"

    .line 61
    :cond_b7
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 63
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    :cond_c0
    const p1, 0x1020002

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;->finish()V

    .line 75
    :cond_c
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
