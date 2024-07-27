.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000007;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000007;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000007;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000007;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 397
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->killPackagingServiceProcess()V

    .line 398
    const/4 v0, 0x1

    return v0
.end method
