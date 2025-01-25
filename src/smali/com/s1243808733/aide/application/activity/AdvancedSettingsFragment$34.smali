.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

.field final val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/Preference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1538
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1542
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1545
    :try_start_8
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

    if-eqz v0, :cond_2e

    .line 1546
    const-string v0, "niubi"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :cond_2e
    :goto_2e
    return-void
.end method
