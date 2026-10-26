.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;
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

    .line 882
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, -0x1

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    .line 886
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 887
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 889
    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    .line 888
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 890
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 891
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 894
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 895
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 896
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 897
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 898
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5bfc\u5165"

    :goto_0
    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 899
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 902
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 904
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;

    invoke-direct {v3, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;Landroid/widget/EditText;)V

    .line 905
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 980
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    .line 898
    :cond_0
    const-string v0, "Import"

    goto :goto_0
.end method
