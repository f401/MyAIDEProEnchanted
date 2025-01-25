.class final Labcd/ww;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xw;->j6(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:I

.field final FH:Ljava/lang/String;

.field final j6:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    iput p1, p0, Labcd/ww;->j6:I

    iput p2, p0, Labcd/ww;->DW:I

    iput-object p3, p0, Labcd/ww;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_22
    iget v1, p0, Labcd/ww;->j6:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_d7

    const/16 v3, 0x1a

    const-string v4, "notification"

    const-string v5, "backbone"

    if-lt v2, v3, :cond_80

    :try_start_33
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "backbone developer notifications"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p0, Labcd/ww;->DW:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Labcd/ww;->FH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Labcd/ww;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_7f
    .catchall {:try_start_33 .. :try_end_7f} :catchall_d7

    goto :goto_dd

    :cond_80
    :try_start_80
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget v4, p0, Labcd/ww;->DW:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Labcd/ww;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_80 .. :try_end_b2} :catch_b3
    .catchall {:try_start_80 .. :try_end_b2} :catchall_d7

    goto :goto_dd

    :catch_b3
    move-exception v1

    :try_start_b4
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/ww;->FH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_d6
    .catchall {:try_start_b4 .. :try_end_d6} :catchall_d7

    goto :goto_dd

    :catchall_d7
    move-exception v0

    const-string v1, "Probe notification"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_dd
    return-void
.end method
