.class public Lcom/aide/ui/marketing/WhatsNewDialog;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;,
        Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/marketing/WhatsNewDialog;

    const-wide v1, -0x38b069d8ce3c28bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x74b7ea75cd55449L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Landroid/content/Context;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x28e62e32dadc22b4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x285725cc4a7f6f88L  # 2.349895420858194E-114

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1f

    :cond_d
    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget p0, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1c} :catch_1d
    .catchall {:try_start_e .. :try_end_1c} :catchall_1f

    return p0

    :catch_1d
    move-exception p0

    return v3

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x402c03720fd6f4cL  # 2.405109929990435E-289

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v0, "WhatsNew"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ShownVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_25

    invoke-static {p0, p1}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_26

    const/4 p0, 0x1

    return p0

    :cond_25
    return v1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x402c03720fd6f4cL  # 2.405109929990435E-289

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private static FH(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1ed31a09184d9980L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x13af91e8d5b52728L  # -5.531151896693206E213

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object p0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1c} :catch_1d
    .catchall {:try_start_d .. :try_end_1c} :catchall_21

    return-object p0

    :catch_1d
    move-exception p0

    const-string p0, ""

    return-object p0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method static synthetic j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/marketing/WhatsNewDialog;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x547d4ea81d9da703L  # 1.0015985906391974E99

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v0, "WhatsNew"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShownVersion"

    invoke-static {p0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;

    invoke-direct {v0}, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "whatsnew"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x547d4ea81d9da703L  # 1.0015985906391974E99

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method
