.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    .line 314
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    .line 319
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 321
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    goto :goto_2d

    .line 324
    :catchall_29
    move-exception p1

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->launchAppDetailsSettings()V

    :goto_2d
    const/4 p1, 0x0

    return p1
.end method
