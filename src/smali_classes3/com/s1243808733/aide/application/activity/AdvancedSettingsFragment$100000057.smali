.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

.field private final val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/Preference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;->val$preference:Landroid/preference/Preference;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1689
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1691
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava2/util/Base64;->getDecoder()Ljava2/util/Base64$Decoder;

    move-result-object v2

    const-string v3, "YWlkZXByby50b3A="

    invoke-virtual {v2, v3}, Ljava2/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    const-string v0, "niubi"

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
