.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u81f3\u5c11\u8bbe\u7f6e\u4e00\u4e2a"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 719
    :goto_1
    return-void

    .line 712
    :cond_0
    const-string v0, "Set at least one"

    goto :goto_0

    .line 715
    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apksignv1"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apksignv2"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 717
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apksignv3"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 718
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u6210\u529f\uff0c v1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  v2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  v3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 719
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->killPackagingServiceProcess()V

    goto/16 :goto_1

    .line 718
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setup succeeded.  v1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
