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
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/aide/ui/preferences/PreferencesActivity;-><init>()V

    .line 30
    const-string v0, "tag_tab_settings"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->TAG_TAB_SETTING:Ljava/lang/String;

    .line 32
    const-string v0, "tag_tab_advance_settings"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->TAG_TAB_ADVANCED_SETTING:Ljava/lang/String;

    .line 34
    const-string v0, "tag_fragment_advance_settings"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->TAG_FRAGMENT_ADVANCED_SETTING:Ljava/lang/String;

    return-void
.end method

.method private settitle()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showAboutDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 3

    .line 184
    const-string v0, "about.html"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 188
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 198
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    .line 199
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V

    return-void

    .line 189
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getOptionMenu()Landroid/view/Menu;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method protected isDisableDrag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {p0}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AidePreferencesActivity_onBackPressed(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/aide/ui/preferences/PreferencesActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->settitle()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

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

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->from_main:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->settitle()V

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    .line 73
    const-string v1, "tag_fragment_advance_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 75
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AidePreferencesActivity_onCreate(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;Landroid/app/FragmentTransaction;)V

    const v1, 0x1020002

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    const-string v3, "tag_fragment_advance_settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 85
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 89
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 90
    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 91
    const-string v2, "tag_tab_settings"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 96
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 97
    const v2, 0x7f0d083c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 98
    const-string v2, "tag_tab_advance_settings"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 100
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 102
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    .line 81
    const-string v1, "tag_fragment_advance_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 176
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mOptionMenu:Landroid/view/Menu;

    .line 180
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/aide/ui/preferences/PreferencesActivity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/aide/ui/preferences/PreferencesActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 170
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .line 239
    invoke-super {p0}, Lcom/aide/ui/preferences/PreferencesActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 210
    new-instance v1, Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-direct {v1, p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    .line 211
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->isDisableDrag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDragBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->setEnableDragBack(Z)V

    .line 212
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "tag_tab_advance_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tag_tab_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    .line 122
    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-static {p0, v0}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AidePreferencesActivity_onTabSelected(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;Landroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 220
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 221
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot(Landroid/view/Window;)V

    .line 229
    :goto_0
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot()V

    goto :goto_0
.end method
