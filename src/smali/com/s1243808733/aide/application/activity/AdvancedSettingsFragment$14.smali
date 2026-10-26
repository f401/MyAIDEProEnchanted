.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$14;
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

    .line 568
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$14;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 572
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 574
    const-string v1, "advanced_setting_editor_bg"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    const/4 v0, 0x0

    return v0
.end method
