.class public Labcd/ApplicationUtils;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/String;

.field private static mApplication:Landroid/app/Application;

.field private static mClassLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/ApplicationUtils;->mClassLock:Ljava/lang/Object;

    return-void
.end method

.method public static DW()Ljava/lang/String;
    .registers 1

    sget-object v0, Labcd/ApplicationUtils;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public static DW(Ljava/lang/Object;ILandroid/app/Notification;)V
    .registers 4

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_13

    instance-of p0, p0, Landroid/app/Service;

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    invoke-static {p0, p1, p2}, Labcd/Iv;->j6(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method private static getApplicationByContext(Ljava/lang/Object;)Landroid/app/Application;
    .registers 2

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_7

    :goto_4
    check-cast p0, Landroid/app/Application;

    goto :goto_1b

    :cond_7
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_1a

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_4

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method public static j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Labcd/Iv;->j6(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static j6(JLjava/lang/Object;)V
    .registers 5

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_19

    :catchall_13
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static j6(JLjava/lang/Object;I)V
    .registers 6

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static j6(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_1c

    :catchall_16
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    const/4 p3, 0x2

    aput-object p5, v0, p3

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    const/4 p3, 0x2

    aput-object p5, v0, p3

    const/4 p3, 0x3

    aput-object p6, v0, p3

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    goto :goto_25

    :catchall_1f
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public static j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    const/4 p3, 0x2

    aput-object p5, v0, p3

    const/4 p3, 0x3

    aput-object p6, v0, p3

    const/4 p3, 0x4

    aput-object p7, v0, p3

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_28

    :catchall_22
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public static j6(JLjava/lang/Object;Z)V
    .registers 6

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    sget-object v0, Labcd/Ev;->j6:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1, p2, p3}, Labcd/kv;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_16

    :catchall_10
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_e

    invoke-static/range {p0 .. p5}, Labcd/Jv;->j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_e

    invoke-static/range {p0 .. p6}, Labcd/Jv;->j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public static j6(Lcom/appfour/backbone/api/objects/MarketReferrer;JJ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/MarketReferrer;JJ)V

    return-void
.end method

.method public static j6(Ljava/lang/Class;JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;JJ)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Labcd/Ev;->j6(Ljava/lang/Class;JJ)V

    invoke-static {p1, p2, p3, p4}, Labcd/kv;->j6(JJ)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method

.method public static j6(Ljava/lang/Object;IILandroid/content/Intent;)V
    .registers 5

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_e

    invoke-static {p0, p1, p2, p3}, Labcd/Jv;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public static j6(Ljava/lang/Object;ILandroid/app/Notification;)V
    .registers 4

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_13

    instance-of p0, p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    invoke-static {p0, p1, p2}, Labcd/Iv;->j6(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mClassLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8c

    :try_start_3
    sget-object v1, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-nez v1, :cond_56

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x16ebec1c400L

    cmp-long v5, v1, v3

    if-gez v5, :cond_56

    invoke-static {p0}, Labcd/ApplicationUtils;->getApplicationByContext(Ljava/lang/Object;)Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_56

    invoke-static {p0, p6}, Labcd/uw;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    monitor-exit v0

    return-void

    :cond_2e
    sput-object p0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    sput-object p3, Labcd/ApplicationUtils;->DW:Ljava/lang/String;

    invoke-static {}, Labcd/Mv;->aM()V

    invoke-static {}, Labcd/rw;->j6()Z

    move-result p0

    invoke-static {}, Labcd/rw;->DW()Z

    move-result p3

    invoke-static {}, Labcd/qw;->DW()V

    invoke-static {}, Labcd/xw;->j6()V

    invoke-static {p0}, Labcd/kv;->j6(Z)V

    invoke-static {p0, p1, p2, p4, p5}, Labcd/ow;->j6(ZJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/Lv;->j6()V

    invoke-static {}, Labcd/Hv;->u7()V

    invoke-static {}, Labcd/Ov;->j6()V

    invoke-static {p6}, Labcd/Yv;->j6(Ljava/lang/String;)V

    goto :goto_58

    :cond_56
    const/4 p0, 0x0

    const/4 p3, 0x0

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_89

    :try_start_59
    sget-object p1, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz p1, :cond_92

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_83

    if-eqz p0, :cond_7e

    new-instance p0, Lcom/appfour/backbone/api/objects/Market;

    sget-object p1, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/Market;)V

    goto :goto_83

    :cond_7e
    if-eqz p3, :cond_83

    invoke-static {}, Labcd/kv;->FH()V

    :cond_83
    :goto_83
    sget-object p0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Labcd/kv;->j6(Landroid/app/Application;)V
    :try_end_88
    .catchall {:try_start_59 .. :try_end_88} :catchall_8c

    goto :goto_92

    :catchall_89
    move-exception p0

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public static j6(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_14

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_14

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Labcd/Iv;->j6(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public static j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 8

    :try_start_0
    sget-object v0, Labcd/ApplicationUtils;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_e

    invoke-static/range {p0 .. p6}, Labcd/Jv;->j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public static j6(Ljava/lang/Throwable;JLjava/lang/Object;)V
    .registers 6

    :try_start_0
    sget-object v0, Labcd/Ev;->DW:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3, v0}, Labcd/kv;->j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_19

    :catchall_13
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    sget-object v0, Labcd/Ev;->DW:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-static {p1, p2, p0, p3, v0}, Labcd/kv;->j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_1c

    :catchall_16
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    sget-object v0, Labcd/Ev;->DW:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    invoke-static {p1, p2, p0, p3, v0}, Labcd/kv;->j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    :try_start_0
    sget-object v0, Labcd/Ev;->DW:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    const/4 p4, 0x2

    aput-object p6, v0, p4

    invoke-static {p1, p2, p0, p3, v0}, Labcd/kv;->j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    :try_start_0
    sget-object v0, Labcd/Ev;->DW:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    const/4 p4, 0x2

    aput-object p6, v0, p4

    const/4 p4, 0x3

    aput-object p7, v0, p4

    invoke-static {p1, p2, p0, p3, v0}, Labcd/kv;->j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    goto :goto_25

    :catchall_1f
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public static j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    :try_start_0
    sget-object v0, Labcd/Ev;->DW:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    const/4 p4, 0x2

    aput-object p6, v0, p4

    const/4 p4, 0x3

    aput-object p7, v0, p4

    const/4 p4, 0x4

    aput-object p8, v0, p4

    invoke-static {p1, p2, p0, p3, v0}, Labcd/kv;->j6(JLjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_28

    :catchall_22
    move-exception p0

    const-string p1, "Runtime Error"

    invoke-static {p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    return-void
.end method
