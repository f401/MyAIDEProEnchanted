.class public Lnet/f401/aide/PreferenceOnClickListener;
.super Ljava/lang/Object;
.source "PreferenceOnClickListener.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnet/f401/aide/PreferenceOnClickListener;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 18
    iget-object v0, p0, Lnet/f401/aide/PreferenceOnClickListener;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 19
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 22
    const-string v0, "edit_env_var"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 23
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 24
    const/4 v0, 0x1

    return v0
.end method
