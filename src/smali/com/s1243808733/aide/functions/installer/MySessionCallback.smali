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
    .locals 1

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
    .locals 1

    .line 28
    new-instance v0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;

    invoke-direct {v0}, Lcom/s1243808733/aide/functions/installer/MySessionCallback;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    return-void
.end method

.method public onCreated(I)V
    .locals 3

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()V

    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->AppNAME:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 46
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->mConetxt:Lcom/s1243808733/aide/application/App;

    const-class v2, Landroid/app/NotificationManager;

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Lcom/s1243808733/aide/application/App;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->notificationManager:Landroid/app/NotificationManager;

    .line 47
    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public onFinished(IZ)V
    .locals 3

    const/16 v2, 0x64

    .line 68
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    iget-object v1, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5b89\u88c5\u6210\u529f"

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 70
    :cond_0
    const-string v0, "Installed success!"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5b89\u88c5\u5931\u8d25\uff01"

    goto :goto_0

    :cond_2
    const-string v0, "Installed fail!"

    goto :goto_0
.end method

.method public onProgressChanged(IF)V
    .locals 4

    const/4 v3, 0x0

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
    const-string v1, "\u6b63\u5728\u5b89\u88c5Apk"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 61
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u5b89\u88c5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 62
    iget-object v0, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
