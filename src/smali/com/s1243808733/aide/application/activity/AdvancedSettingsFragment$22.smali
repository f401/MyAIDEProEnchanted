.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;
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

    .line 804
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 10

    .line 808
    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "程序设置"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "代码高亮配置"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-array v1, p1, [Ljava/lang/String;

    const-string v4, "Program setting"

    aput-object v4, v1, v2

    const-string v4, "Color Scheme"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 810
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 811
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "application"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v6, "colorscheme"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v7}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 815
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v7

    if-eqz v7, :cond_44

    const-string v7, "选择备份的内容"

    goto :goto_46

    :cond_44
    const-string v7, "Select the content of backup"

    :goto_46
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 817
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;

    invoke-direct {v7, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;Ljava/util/HashMap;)V

    .line 816
    new-array p1, p1, [Z

    aput-boolean v5, p1, v2

    aput-boolean v6, p1, v3

    invoke-virtual {v4, v0, p1, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;Ljava/util/HashMap;)V

    .line 825
    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 873
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 874
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 875
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v2
.end method
