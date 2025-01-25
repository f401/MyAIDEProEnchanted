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

.field private mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

.field public mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

.field public mEditEnvVar:Lnet/f401/aide/preference/EnvironmentPreference;

.field mOptionMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .registers 2

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
    .registers 3

    .line 155
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 158
    :cond_12
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1a
    return-void
.end method

.method private showAboutDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 6

    .line 184
    const-string v0, "about.html"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_16

    .line 188
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1a

    .line 189
    :cond_16
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 190
    :goto_1a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 194
    const p2, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 198
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    .line 199
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods

.method public onBackPressed()V
    .registers 2
    invoke-static {p0}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AidePreferencesActivity_onBackPressed(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;)Z
    
    move-result v0
    
    if-nez v0, :cond
    return-void
    :cond
    invoke-super {p0}, Lcom/aide/ui/preferences/PreferencesActivity;->onBackPressed()V
    return-void
.end method

.method public getOptionMenu()Landroid/view/Menu;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method protected isDisableDrag()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 150
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->settitle()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 56
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    .line 57
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->from_main:Z

    if-eqz p1, :cond_aa

    .line 64
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->settitle()V

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    .line 73
    const-string v0, "tag_fragment_advance_settings"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_5a

    .line 74
    new-instance p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 75
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 76
    invoke-static {p0,p1}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AidePreferencesActivity_onCreate(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;Landroid/app/FragmentTransaction;)V
    
    const v2, 0x1020002

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p1, v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_64

    .line 80
    :cond_5a
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 84
    :goto_64
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 89
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 90
    const v2, 0x7f0d006b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 91
    const-string v2, "tag_tab_settings"

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 97
    const v2, 0x7f0d083c

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 98
    const-string v2, "tag_tab_advance_settings"

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 100
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->select()V

    .line 102
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    :cond_aa
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mOptionMenu:Landroid/view/Menu;

    .line 180
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 245
    invoke-super {p0}, Lcom/aide/ui/preferences/PreferencesActivity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onDestroy()V

    :cond_a
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 3

    .line 45
    invoke-super {p0, p1, p2}, Lcom/aide/ui/preferences/PreferencesActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    .line 170
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 166
    :cond_e
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 1

    .line 239
    invoke-super {p0}, Lcom/aide/ui/preferences/PreferencesActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 208
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 210
    new-instance v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-direct {v0, p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    .line 211
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->isDisableDrag()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDragBack()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->setEnableDragBack(Z)V

    .line 212
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4

    .line 108
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    if-nez p2, :cond_5

    return-void

    .line 110
    :cond_5
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->fm:Landroid/app/FragmentManager;

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 111
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "tag_tab_advance_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "tag_tab_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3f

    .line 113
    :cond_27
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    
    invoke-static {p0,p2}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AidePreferencesActivity_onTabSelected(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;Landroid/app/FragmentTransaction;)V

    goto :goto_3f

    .line 117
    :cond_33
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->lv:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 121
    :goto_3f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_49

    .line 122
    invoke-static {p2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/FragmentTransaction;)V

    goto :goto_4c

    .line 124
    :cond_49
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commit()I

    :goto_4c
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 220
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 221
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 224
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot(Landroid/view/Window;)V

    goto :goto_37

    .line 226
    :cond_32
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot()V

    .line 229
    :goto_37
    invoke-super {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
