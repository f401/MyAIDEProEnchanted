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
    .registers 4

    const-wide v2, -0x38b069d8ce3c28bL

    const-class v0, Lcom/aide/ui/marketing/WhatsNewDialog;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x74b7ea75cd55449L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x74b7ea75cd55449L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static DW(Landroid/content/Context;)I
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x28e62e32dadc22b4L
    .end annotation

    const-wide v6, 0x285725cc4a7f6f88L    # 2.349895420858194E-114

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x285725cc4a7f6f88L    # 2.349895420858194E-114

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .registers 10

    const-wide v2, 0x402c03720fd6f4cL    # 2.405109929990435E-289

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v1, :cond_0

    const-wide v6, 0x402c03720fd6f4cL    # 2.405109929990435E-289

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "WhatsNew"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "ShownVersion"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/content/Context;)I

    move-result v5

    if-eq v1, v5, :cond_1

    invoke-static {p0, p1}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v0, :cond_2

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static FH(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1ed31a09184d9980L
    .end annotation

    const-wide v4, -0x13af91e8d5b52728L    # -5.531151896693206E213

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13af91e8d5b52728L    # -5.531151896693206E213

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/aide/ui/marketing/WhatsNewDialog;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 9

    const-wide v2, 0x547d4ea81d9da703L    # 1.0015985906391974E99

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x547d4ea81d9da703L    # 1.0015985906391974E99

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "WhatsNew"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShownVersion"

    invoke-static {p0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/content/Context;)I

    move-result v5

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;

    invoke-direct {v0}, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/aide/ui/marketing/WhatsNewDialog$WhatsNewDialogFragment;->j6(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v5, "whatsnew"

    invoke-virtual {v0, v1, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/marketing/WhatsNewDialog;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
