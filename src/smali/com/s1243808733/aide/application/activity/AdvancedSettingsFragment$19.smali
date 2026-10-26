.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;
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
.field private isapksignv1:Z

.field private isapksignv2:Z

.field private isapksignv3:Z

.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$fputisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .locals 1

    const/4 v0, 0x1

    .line 672
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    .line 675
    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    .line 676
    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 680
    new-array v1, v6, [Ljava/lang/String;

    const-string v0, "v1"

    aput-object v0, v1, v8

    const-string v0, "v2"

    aput-object v0, v1, v7

    const-string v0, "v3"

    aput-object v0, v1, v9

    .line 681
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apksignv1"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    .line 682
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apksignv2"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    .line 683
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apksignv3"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    .line 685
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "APK\u7b7e\u540d\u8bbe\u7f6e"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    iget-boolean v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    iget-boolean v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    new-instance v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;

    invoke-direct {v5, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;[Ljava/lang/String;)V

    .line 687
    new-array v6, v6, [Z

    aput-boolean v2, v6, v8

    aput-boolean v3, v6, v7

    aput-boolean v4, v6, v9

    invoke-virtual {v0, v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)V

    .line 705
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 722
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v8

    .line 686
    :cond_0
    const-string v0, "APK Signature Settings"

    goto :goto_0
.end method
