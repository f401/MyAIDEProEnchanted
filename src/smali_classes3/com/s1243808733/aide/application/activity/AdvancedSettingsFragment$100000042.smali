.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1173
    new-instance v0, Lcom/s1243808733/aide/AppUpdater;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/AppUpdater;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/AppUpdater;->checkUpdate()V

    .line 1176
    const/4 v0, 0x0

    return v0
.end method
