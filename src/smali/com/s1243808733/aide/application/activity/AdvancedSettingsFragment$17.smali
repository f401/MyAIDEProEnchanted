.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;
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

    .line 612
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    .line 617
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 618
    const-string v0, "编译时加密Class中的字符串，防止直接暴露。支持使用@StringFogIgnore()注解来忽视某个类。<br>暂不支持加密项目导入的jar<br><a href=\"https://github.com/MegatronKing/StringFog\">@Github</a>"

    goto :goto_b

    .line 619
    :cond_9
    const-string v0, "Encrypt strings in class at compile time to prevent direct exposure. Support @StringFogIgnore() annotation to ignore a class.<br>The jar imported by encrypted project is not supported temporarily<br><a href=\"https://github.com/MegatronKing/StringFog\">@Github</a>"

    .line 620
    :goto_b
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 621
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 622
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 623
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 624
    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 626
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 627
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V

    const/4 p1, 0x0

    return p1
.end method
