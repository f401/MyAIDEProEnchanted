.class public Lcom/aide/licensing/LicenseUpdateAlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Labcd/xu;
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

    const-class v0, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;

    const-wide v1, -0x10db91850a8a3368L  # -2.420072349749708E227

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x35e53a1bdd48be5L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x66a95ebb7d880040L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const v3, 0x1d4c0

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6(Landroid/content/Context;IZ)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->DW:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3486740f12ad46cL

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const v3, 0x36ee80

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6(Landroid/content/Context;IZ)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->DW:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static j6(Landroid/content/Context;IZ)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x4be26cdf51eec5cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1021d26bc0b6e374L  # 5.73969371612694E-231

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Lcom/aide/licensing/d;

    invoke-direct {v0}, Lcom/aide/licensing/d;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/aide/licensing/d;->j6(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/aide/licensing/d;->j6()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "Restarting timer."

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x0

    if-eqz p2, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_5d

    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5e

    :cond_5d
    :goto_5d
    return-void

    :catchall_5e
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->DW:Z

    if-eqz v1, :cond_78

    const-wide v2, 0x1021d26bc0b6e374L  # 5.73969371612694E-231

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_78
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xcf73352aac4bca4L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "Timer broadcast received."

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/licensing/LicenseUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0xcf73352aac4bca4L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method
