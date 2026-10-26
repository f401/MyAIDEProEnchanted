.class public Lio/github/zeroaicy/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    .line 38
    invoke-static {p1, p2, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 40
    const v0, -0xffff01

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 41
    invoke-static {v1, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 42
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 43
    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-object p1
.end method

.method public static getNotification(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/Notification;
    .locals 2

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
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static println(Landroid/app/Notification;)V
    .locals 0

    return-void
.end method

.method public static zero()Landroid/app/Notification;
    .locals 2

    const/4 v1, 0x0

    .line 11
    const-class v0, Landroid/app/Service;

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
