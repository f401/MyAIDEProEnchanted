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
    .registers 2

    .line 707
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 711
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 712
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "至少设置一个"

    goto :goto_23

    :cond_21
    const-string p1, "Set at least one"

    :goto_23
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 715
    :cond_2b
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p2

    const-string v0, "apksignv1"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p2

    const-string v0, "apksignv2"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 717
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p2

    const-string v0, "apksignv3"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 718
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_7e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "设置成功， v1:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_85

    :cond_7e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Setup succeeded.  v1:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_85
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  v2:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  v3:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->-$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 719
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->killPackagingServiceProcess()V

    return-void
.end method
