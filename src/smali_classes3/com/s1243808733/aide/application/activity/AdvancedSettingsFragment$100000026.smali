.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private isapksignv1:Z

.field private isapksignv2:Z

.field private isapksignv3:Z

.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv1:Z

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv2:Z

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv3:Z

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method

.method static synthetic access$L1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv1:Z

    return v0
.end method

.method static synthetic access$L1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv2:Z

    return v0
.end method

.method static synthetic access$L1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv3:Z

    return v0
.end method

.method static synthetic access$S1000027(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv1:Z

    return-void
.end method

.method static synthetic access$S1000028(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv2:Z

    return-void
.end method

.method static synthetic access$S1000029(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv3:Z

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 739
    new-array v1, v6, [Ljava/lang/String;

    const-string v0, "v1"

    aput-object v0, v1, v8

    const-string v0, "v2"

    aput-object v0, v1, v7

    const-string v0, "v3"

    aput-object v0, v1, v9

    .line 740
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apksignv1"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv1:Z

    .line 741
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apksignv2"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv2:Z

    .line 742
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apksignv3"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv3:Z

    .line 744
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "APK\u7b7e\u540d\u8bbe\u7f6e"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv1:Z

    iget-boolean v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv2:Z

    iget-boolean v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;->isapksignv3:Z

    new-instance v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;

    invoke-direct {v5, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000024;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;[Ljava/lang/String;)V

    new-array v6, v6, [Z

    aput-boolean v2, v6, v8

    aput-boolean v3, v6, v7

    aput-boolean v4, v6, v9

    invoke-virtual {v0, v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026$100000025;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 784
    return v8

    .line 744
    :cond_0
    const-string v0, "APK Signature Settings"

    goto :goto_0
.end method
