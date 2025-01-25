.class public Labcd/Dl;
.super Ljava/lang/Object;


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

    const-class v0, Labcd/Dl;

    const-wide v1, 0x3dc77fe90a1892d9L  # 4.2745613699697975E-11

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xf5336324fe8fea0L  # 7.55282295695446E-235

    :try_start_6
    sget-boolean v3, Labcd/Dl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Dl;->DW:Z

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

.method private j6(ZLjava/lang/String;JJ)Z
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x4b437ca39b861058L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Dl;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p3, p4}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p5, p6}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x1c3f70a648101ac0L  # -3.19982987053238E172

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UpdateNotifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateTime"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_5d

    cmp-long p2, p3, p5

    if-nez p2, :cond_4e

    return v2

    :cond_4e
    const/4 p2, 0x1

    cmp-long p3, v5, v3

    if-nez p3, :cond_57

    if-eqz p1, :cond_56

    return v2

    :cond_56
    return p2

    :cond_57
    cmp-long p1, v5, p5

    if-ltz p1, :cond_5c

    return v2

    :cond_5c
    return p2

    :catchall_5d
    move-exception v0

    sget-boolean v1, Labcd/Dl;->DW:Z

    if-eqz v1, :cond_7c

    const-wide v2, -0x1c3f70a648101ac0L  # -3.19982987053238E172

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p3, p4}, Ljava/lang/Long;-><init>(J)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p5, p6}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 6

    const-wide v0, -0x2f2ace704195708fL  # -2.5129484051447294E81

    :try_start_5
    sget-boolean v2, Labcd/Dl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UpdateNotifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    if-nez v0, :cond_22

    const/4 v4, 0x1

    :cond_22
    return v4

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Dl;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x1c372c2b27f6ac71L  # -4.797333792613749E172

    :try_start_5
    sget-boolean v2, Labcd/Dl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/Dl;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(ZLjava/lang/String;JJI[Ljava/lang/String;)V
    .registers 14

    sget-boolean v0, Labcd/Dl;->j6:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v0, v1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p5, p6}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/4 v3, 0x5

    aput-object p8, v0, v3

    const-wide v3, -0x16117da5580b3184L  # -1.8682623766993096E202

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    invoke-direct/range {p0 .. p6}, Labcd/Dl;->j6(ZLjava/lang/String;JJ)Z

    move-result p1

    if-eqz p1, :cond_b9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p8, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p8, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/aide/ui/MainActivity;->v5(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p4

    new-instance p5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object p6

    const-string p8, "other"

    invoke-direct {p5, p6, p8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "New "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " lessons!"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const-string p3, "Check out the new lessons"

    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object p2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object p3

    const-string p4, "notification"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p3, p1, p2}, Labcd/Dl;->j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    :cond_b9
    return-void
.end method
