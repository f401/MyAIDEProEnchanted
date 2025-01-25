.class public Lio/github/zeroaicy/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 38
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p2

    .line 40
    const v1, -0xffff01

    invoke-static {p2, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 41
    invoke-static {p2, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 42
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 43
    invoke-static {p0, p2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-object p1
.end method

.method public static getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;
    .registers 4

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ForegroundService"

    invoke-static {p0, p1, v0}, Lio/github/zeroaicy/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    .line 26
    :cond_11
    const-string p1, ""

    .line 29
    :goto_13
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static println(Landroid/app/Notification;)V
    .registers 1

    return-void
.end method

.method public static zero()Landroid/app/Notification;
    .registers 2

    .line 11
    const-class v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/NotificationUtil;->getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/NotificationUtil;->println(Landroid/app/Notification;)V

    .line 12
    const-class v0, Landroid/os/Build;

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/NotificationUtil;->getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/NotificationUtil;->println(Landroid/app/Notification;)V

    return-object v1
.end method
