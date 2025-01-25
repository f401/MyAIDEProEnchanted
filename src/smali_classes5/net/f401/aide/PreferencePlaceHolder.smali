.class public Lnet/f401/aide/PreferencePlaceHolder;
.super Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
.source "PreferencePlaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/f401/aide/PreferencePlaceHolder$100000000;
    }
.end annotation


# static fields
.field public static final ADVANCED_SETTINGS_ID:I = 0x1020002

.field public static final EDIT_VAR_ID:I = 0x1022434


# instance fields
.field private mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

.field protected placeHolder:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000(Lnet/f401/aide/PreferencePlaceHolder;)Lnet/f401/aide/preference/EnvironmentPreference;
    .registers 2

    iget-object v0, p0, Lnet/f401/aide/PreferencePlaceHolder;->mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object v0
.end method

.method static synthetic access$S1000000(Lnet/f401/aide/PreferencePlaceHolder;Lnet/f401/aide/preference/EnvironmentPreference;)V
    .registers 2

    iput-object p1, p0, Lnet/f401/aide/PreferencePlaceHolder;->mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

    return-void
.end method

.method private setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceClickListener;",
            ")V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
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

    .line 35
    invoke-super {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "ter_edit_env_val"

    new-instance v1, Lnet/f401/aide/PreferencePlaceHolder$100000000;

    invoke-direct {v1, p0}, Lnet/f401/aide/PreferencePlaceHolder$100000000;-><init>(Lnet/f401/aide/PreferencePlaceHolder;)V

    invoke-direct {p0, v0, v1}, Lnet/f401/aide/PreferencePlaceHolder;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v3, 0x1022434

    .line 24
    invoke-super {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lnet/f401/aide/PreferencePlaceHolder;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/preference/EnvironmentPreference;

    iput-object v0, p0, Lnet/f401/aide/PreferencePlaceHolder;->mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

    if-nez v0, :cond_34

    .line 27
    new-instance v0, Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-virtual {p0}, Lnet/f401/aide/PreferencePlaceHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/f401/aide/preference/EnvironmentPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/f401/aide/PreferencePlaceHolder;->mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

    .line 28
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lnet/f401/aide/PreferencePlaceHolder;->mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

    const-string v2, "edit_env_var"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lnet/f401/aide/PreferencePlaceHolder;->mEnvPref:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_34
    return-void
.end method
