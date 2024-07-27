.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;
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

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 867
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "\u7a0b\u5e8f\u8bbe\u7f6e"

    aput-object v1, v0, v8

    const-string v1, "\u4ee3\u7801\u9ad8\u4eae\u914d\u7f6e"

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Program setting"

    aput-object v2, v1, v8

    const-string v2, "Color Scheme"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 869
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 870
    const-string v1, "application"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string v1, "colorscheme"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u9009\u62e9\u5907\u4efd\u7684\u5185\u5bb9"

    :goto_0
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

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

    new-instance v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000030;

    invoke-direct {v5, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000030;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;Ljava/util/HashMap;)V

    new-array v6, v6, [Z

    aput-boolean v4, v6, v8

    aput-boolean v1, v6, v7

    invoke-virtual {v3, v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;

    invoke-direct {v3, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 935
    return v8

    .line 873
    :cond_0
    const-string v1, "Select the content of backup"

    goto :goto_0
.end method
