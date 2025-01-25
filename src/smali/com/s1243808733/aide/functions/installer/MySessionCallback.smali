.class public Lcom/s1243808733/aide/functions/installer/MySessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "MySessionCallback.java"


# instance fields
.field private AppNAME:Ljava/lang/String;

.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private mConetxt:Lcom/s1243808733/aide/application/App;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    .line 21
    const-string v0, "AIDE Pro"

    iput-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->AppNAME:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->mConetxt:Lcom/s1243808733/aide/application/App;

    return-void
.end method

.method public static getInstance()Lcom/s1243808733/aide/functions/installer/MySessionCallback;
    .registers 1

    .line 28
    new-instance v0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;

    invoke-direct {v0}, Lcom/s1243808733/aide/functions/installer/MySessionCallback;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onBadgingChanged(I)V
    .registers 2

    return-void
.end method

.method public onCreated(I)V
    .registers 4

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1f

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()V

    iget-object p1, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->AppNAME:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p1, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->mConetxt:Lcom/s1243808733/aide/application/App;

    const-class v1, Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Lcom/s1243808733/aide/application/App;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->notificationManager:Landroid/app/NotificationManager;

    .line 47
    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1f
    return-void
.end method

.method public onFinished(IZ)V
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p2, :cond_1e

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p2

    if-eqz p2, :cond_1b

    const-string p2, "安装成功"

    goto :goto_29

    :cond_1b
    const-string p2, "Installed success!"

    goto :goto_29

    :cond_1e
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p2

    if-eqz p2, :cond_27

    const-string p2, "安装失败！"

    goto :goto_29

    :cond_27
    const-string p2, "Installed fail!"

    :goto_29
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    iget-object p2, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->notificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onProgressChanged(IF)V
    .registers 7

    .line 53
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->mConetxt:Lcom/s1243808733/aide/application/App;

    iget-object v2, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->AppNAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 55
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 56
    const-string v1, "正在安装Apk"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 61
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "已安装"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 62
    iget-object p2, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->notificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
