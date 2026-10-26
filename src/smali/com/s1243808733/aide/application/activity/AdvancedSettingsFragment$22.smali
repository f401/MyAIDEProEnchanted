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
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 808
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u7a0b\u5e8f\u8bbe\u7f6e"

    aput-object v1, v0, v7

    const-string v1, "\u4ee3\u7801\u9ad8\u4eae\u914d\u7f6e"

    aput-object v1, v0, v8

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Program setting"

    aput-object v2, v1, v7

    const-string v2, "Color Scheme"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 810
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 811
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "application"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v3, "colorscheme"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 815
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u9009\u62e9\u5907\u4efd\u7684\u5185\u5bb9"

    :goto_0
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 817
    const-string v1, "application"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v1, "colorscheme"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;

    invoke-direct {v5, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;Ljava/util/HashMap;)V

    .line 816
    new-array v6, v6, [Z

    aput-boolean v4, v6, v7

    aput-boolean v1, v6, v8

    invoke-virtual {v3, v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;Ljava/util/HashMap;)V

    .line 825
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 873
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v7

    .line 815
    :cond_0
    const-string v1, "Select the content of backup"

    goto :goto_0
.end method
