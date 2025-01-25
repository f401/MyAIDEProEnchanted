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
    .registers 2

    .line 528
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 532
    invoke-virtual {p1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "immersion_statusbar"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/app/Activity;)V

    .line 534
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 535
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->currentPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/view/Window;)V

    :cond_3f
    const/4 p1, 0x1

    return p1
.end method
