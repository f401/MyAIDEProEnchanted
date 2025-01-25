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
    .registers 1

    iget-boolean p0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisapksignv1(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisapksignv2(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisapksignv3(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    .line 672
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    .line 675
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    .line 676
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 11

    .line 680
    const/4 p1, 0x3

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "v1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "v2"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "v3"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 681
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "apksignv1"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    .line 682
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "apksignv2"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    .line 683
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "apksignv3"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    .line 685
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v5}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5

    if-eqz v5, :cond_4a

    const-string v5, "APK签名设置"

    goto :goto_4c

    :cond_4a
    const-string v5, "APK Signature Settings"

    :goto_4c
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv1:Z

    iget-boolean v6, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv2:Z

    iget-boolean v7, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;->isapksignv3:Z

    new-instance v8, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;

    invoke-direct {v8, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;[Ljava/lang/String;)V

    .line 687
    new-array p1, p1, [Z

    aput-boolean v5, p1, v2

    aput-boolean v6, p1, v3

    aput-boolean v7, p1, v4

    invoke-virtual {v1, v0, p1, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;)V

    .line 705
    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 722
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 724
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v2
.end method
