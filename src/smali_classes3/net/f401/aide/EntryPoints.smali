.class public Lnet/f401/aide/EntryPoints;
.super Ljava/lang/Object;
.source "EntryPoints.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EntryPoints"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static com_s1243808733_aide_application_activity_AdvancedSettingsFragment_init(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v1, Lnet/f401/aide/PreferenceOnClickListener;

    invoke-direct {v1, p0}, Lnet/f401/aide/PreferenceOnClickListener;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    move-object v0, v1

    check-cast v0, Lnet/f401/aide/PreferenceOnClickListener;

    const-string v0, "edit_env_var"

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Lnet/f401/aide/PreferenceOnClickListener;)V

    return-void
.end method

.method public static com_s1243808733_aide_application_activity_AidePreferencesActivity_onBackPressed(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;)Z
    .locals 3

    .line 18
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 19
    const-string v1, "edit_env_var"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 23
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mAdvancedSettingsFragment:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 24
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static com_s1243808733_aide_application_activity_AidePreferencesActivity_onCreate(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;Landroid/app/FragmentTransaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .line 33
    new-instance v0, Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-direct {v0}, Lnet/f401/aide/preference/EnvironmentPreference;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mEditEnvVar:Lnet/f401/aide/preference/EnvironmentPreference;

    .line 35
    const v1, 0x1020002

    const-string v2, "edit_env_var"

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public static com_s1243808733_aide_application_activity_AidePreferencesActivity_onTabSelected(Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;Landroid/app/FragmentTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity;->mEditEnvVar:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method
