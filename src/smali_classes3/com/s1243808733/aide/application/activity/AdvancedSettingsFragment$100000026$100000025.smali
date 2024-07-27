.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u81f3\u5c11\u8bbe\u7f6e\u4e00\u4e2a"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 778
    :goto_1
    return-void

    .line 771
    :cond_0
    const-string v0, "Set at least one"

    goto :goto_0

    .line 774
    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apksignv1"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 775
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apksignv2"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 776
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apksignv3"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 777
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "\u8bbe\u7f6e\u6210\u529f\uff0c v1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "  v2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  v3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 778
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->killPackagingServiceProcess()V

    goto/16 :goto_1

    .line 777
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Setup succeeded.  v1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "  v2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  v3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->access$L1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
