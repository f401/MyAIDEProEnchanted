.class public Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;
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

    const-class v0, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;

    const-wide v1, -0x41b960c8e5886a3L  # -6.216861943959999E288

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2a1ed7c442867f7dL  # -4.91874078713059E105

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static synthetic j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x1e647e505f21dd55L  # -1.5468719970690245E162

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->DW:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private j6(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x653eb5e1f3f84928L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6:Z

    if-eqz v0, :cond_16

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4a821867415cd581L  # 8.462831334751946E50

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/aide/ui/MainActivity;->Hw(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v5, "other"

    invoke-direct {v4, p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x27078a2c

    invoke-static {v0, v2, v1}, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    return-void

    :catchall_59
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->DW:Z

    if-eqz v1, :cond_71

    const-wide v2, 0x4a821867415cd581L  # 8.462831334751946E50

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    throw v0
.end method

.method public static j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    sget-boolean v0, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v0, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aput-object p5, v0, v3

    const/4 v3, 0x5

    aput-object p6, v0, v3

    const/4 v3, 0x6

    aput-object p7, v0, v3

    const-wide v3, -0x1cbbf853e38ea6fL  # -8.476584516486221E299

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_34
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "EXTRA_AFTER"

    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "EXTRA_REPEAT"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "EXTRA_MSG"

    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "EXTRA_TEXT"

    invoke-virtual {v0, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "EXTRA_TITLE"

    invoke-virtual {v0, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "EXTRA_ICON"

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p3, 0x8000000

    invoke-static {p0, v2, v0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const-string p4, "alarm"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    add-long/2addr p4, p1

    invoke-virtual {p0, v1, p4, p5, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x1617e12e53361f8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "EXTRA_AFTER"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "EXTRA_REPEAT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "EXTRA_MSG"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_TITLE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "EXTRA_TEXT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "EXTRA_ICON"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_3f

    move-object v3, p1

    move v7, v1

    move-object v8, v2

    move-object v9, v11

    move-object v10, v12

    invoke-static/range {v3 .. v10}, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    move-object v6, p0

    move-object v7, p1

    move v8, v1

    move-object v9, v2

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0x1617e12e53361f8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method
