.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;
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

    .line 1122
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x0

    .line 1126
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getAutoCustomTemplateDir()Ljava/io/File;

    move-result-object v0

    .line 1127
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1128
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1129
    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "\u5c06\u8981\u89e3\u538b\u5230\uff1a"

    const-string v5, "Will be unzipped to: "

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29$1;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;Ljava/io/File;)V

    .line 1130
    const v0, 0x104000a

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1138
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1140
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v6
.end method
