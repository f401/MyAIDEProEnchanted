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
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 617
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "\u7f16\u8bd1\u65f6\u52a0\u5bc6Class\u4e2d\u7684\u5b57\u7b26\u4e32\uff0c\u9632\u6b62\u76f4\u63a5\u66b4\u9732\u3002\u652f\u6301\u4f7f\u7528@StringFogIgnore()\u6ce8\u89e3\u6765\u5ffd\u89c6\u67d0\u4e2a\u7c7b\u3002<br>\u6682\u4e0d\u652f\u6301\u52a0\u5bc6\u9879\u76ee\u5bfc\u5165\u7684jar<br><a href=\"https://github.com/MegatronKing/StringFog\">@Github</a>"

    .line 620
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 621
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 622
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 623
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 624
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 627
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V

    const/4 v0, 0x0

    return v0

    .line 619
    :cond_0
    const-string v0, "Encrypt strings in class at compile time to prevent direct exposure. Support @StringFogIgnore() annotation to ignore a class.<br>The jar imported by encrypted project is not supported temporarily<br><a href=\"https://github.com/MegatronKing/StringFog\">@Github</a>"

    goto :goto_0
.end method
