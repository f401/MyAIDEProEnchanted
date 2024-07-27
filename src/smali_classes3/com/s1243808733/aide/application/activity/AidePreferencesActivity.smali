.class public Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;
.super Lcom/aide/ui/preferences/PreferencesActivity;
.source "AidePreferencesActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private final TAG_FRAGMENT_ADVANCED_SETTING:Ljava/lang/String;

.field private final TAG_TAB_ADVANCED_SETTING:Ljava/lang/String;

.field private final TAG_TAB_SETTING:Ljava/lang/String;

.field private fm:Landroid/app/FragmentManager;

.field from_main:Z

.field private lv:Landroid/widget/ListView;

.field public mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

.field private mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

.field public mEditEnvVar:Lnet/f401/aide/preference/EnvironmentPreference;

.field mOptionMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 252
    invoke-direct {p0}, Lcom/aide/ui/preferences/PreferencesActivity;-><init>()V

    const-string v0, "tag_tab_settings"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->TAG_TAB_SETTING:Ljava/lang/String;

    const-string v0, "tag_tab_advance_settings"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->TAG_TAB_ADVANCED_SETTING:Ljava/lang/String;

    const-string v0, "tag_fragment_advance_settings"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->TAG_FRAGMENT_ADVANCED_SETTING:Ljava/lang/String;

    return-void
.end method

.method private settitle()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showAboutDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 183
    const-string v0, "about.html"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 189
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 197
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    .line 198
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V

    return-void

    .line 185
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getOptionMenu()Landroid/view/Menu;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method protected isDisableDrag()Z
    .registers 2

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "edit_env_var"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 21
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 23
    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->settitle()V

    return-void
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

    const v4, 0x1020002

    const/4 v3, 0x0

    .line 56
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    .line 57
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_main"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->from_main:Z

    .line 62
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->from_main:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->settitle()V

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    .line 72
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    const-string v1, "tag_fragment_advance_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    const-string v2, "tag_fragment_advance_settings"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    new-instance v1, Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-direct {v1, p0}, Lnet/f401/aide/preference/EnvironmentPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mEditEnvVar:Lnet/f401/aide/preference/EnvironmentPreference;

    const-string v2, "edit_env_var"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 84
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 86
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "tag_tab_settings"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 93
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f0d083c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "tag_tab_advance_settings"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 101
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    const-string v1, "tag_fragment_advance_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mOptionMenu:Landroid/view/Menu;

    .line 176
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->from_main:Z

    if-eqz v0, :cond_0

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->finish()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 209
    new-instance v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-direct {v0, p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    .line 210
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->isDisableDrag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDragBack()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->setEnableDragBack(Z)V

    .line 211
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void

    .line 210
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    .line 107
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag_tab_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 112
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mEditEnvVar:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 120
    :cond_1
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    .line 121
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitNow()V

    goto :goto_0

    .line 114
    :cond_2
    const-string v2, "tag_tab_advance_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 116
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot(Landroid/view/Window;)V

    .line 228
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot()V

    goto :goto_0
.end method
