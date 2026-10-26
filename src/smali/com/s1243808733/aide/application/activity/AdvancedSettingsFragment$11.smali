.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 532
    invoke-virtual {p1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "immersion_statusbar"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/app/Activity;)V

    .line 534
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/view/Window;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
