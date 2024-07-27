.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;
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

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 422
    invoke-static {}, Lcom/ndk/GradleNdk;->getNdkStatus()Z

    move-result v2

    .line 424
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u63d0\u793a"

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u68c0\u6d4b\u5230\u5df2\u5b89\u88c5NDK\uff0c\u7248\u672c\u53f7\u4e3a\uff1a24.0.8215888 (ndkVersion \"24.0.8215888\")\uff0c\u662f\u5426\u5378\u8f7dNDK\uff1f"

    .line 430
    :goto_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\u672a\u68c0\u6d4b\u5230NDK\uff0c\u662f\u5426\u73b0\u5728\u4e0b\u8f7d\u5b89\u88c5\uff1f\u7248\u672c\u53f7\u4e3a\uff1a24.0.8215888 (ndkVersion \"24.0.8215888\""

    .line 432
    :goto_2
    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 434
    const v0, 0x1040013

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;Z)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    const/high16 v1, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 457
    const/4 v0, 0x0

    return v0

    .line 426
    :cond_0
    const-string v0, "Tips"

    goto :goto_0

    .line 428
    :cond_1
    const-string v0, "NDK has been detected with version number: 24.0.8215888 (ndkVersion \"24.0.8215888\"). Do you want to uninstall NDK?"

    goto :goto_1

    .line 430
    :cond_2
    const-string v1, "NDK is not detected. Do you want to download and install now? The version number is 24.0.8215888 (ndkVersion \"24.0.8215888\")"

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 432
    goto :goto_3
.end method
