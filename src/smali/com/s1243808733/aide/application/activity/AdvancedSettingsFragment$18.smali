.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;
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

    .line 634
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    .line 638
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 640
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u83b7\u53d6\u5f53\u524d\u5de5\u7a0b\u8def\u5f84\u5931\u8d25"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 666
    :goto_1
    return v3

    .line 640
    :cond_0
    const-string v0, "Failed to get the current project path"

    goto :goto_0

    .line 644
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5c06\u6dfb\u52a0\u5230"

    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 646
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18$1;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;Ljava/io/File;)V

    .line 647
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 664
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 645
    :cond_2
    const-string v0, "Add to"

    goto :goto_2
.end method
