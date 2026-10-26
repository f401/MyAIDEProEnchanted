.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;
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

    .line 465
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v4, 0x41c00000    # 24.0f

    .line 470
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getGradleCompleFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getDefGradleCompleFile()Ljava/io/File;

    move-result-object v0

    .line 476
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 478
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v5

    .line 479
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 482
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v1, v2, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 485
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 488
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 489
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 491
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;Ljava/io/File;Landroid/widget/EditText;)V

    .line 492
    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 504
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 506
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 516
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 518
    const-string v0, ""

    .line 520
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method
