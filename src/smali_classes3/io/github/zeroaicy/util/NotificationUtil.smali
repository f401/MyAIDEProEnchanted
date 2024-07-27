.class public Lio/github/zeroaicy/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    .line 38
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p1, p2, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 40
    const v0, -0xffff01

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 42
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 44
    return-object p1
.end method

.method public static getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;
    .registers 4

    .line 21
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForegroundService"

    invoke-static {p0, v0, v1}, Lio/github/zeroaicy/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static println(Landroid/app/Notification;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static zero()Landroid/app/Notification;
    .registers 3

    const/4 v1, 0x0

    move-object v0, v1

    .line 11
    check-cast v0, Landroid/content/Context;

    :try_start_0
    const-string v2, "android.app.Service"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/NotificationUtil;->getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/NotificationUtil;->println(Landroid/app/Notification;)V

    move-object v0, v1

    .line 12
    check-cast v0, Landroid/content/Context;

    :try_start_1
    const-string v2, "android.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/NotificationUtil;->getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/NotificationUtil;->println(Landroid/app/Notification;)V

    .line 14
    check-cast v1, Landroid/app/Notification;

    return-object v1

    .line 11
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
