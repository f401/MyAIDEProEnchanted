.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;
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

    .line 1049
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    .line 1053
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 1054
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1055
    const-string v1, "title"

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 1053
    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
