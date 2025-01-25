.class public final Lcom/termux/app/TermuxService;
.super Landroid/app/Service;
.source "TermuxService.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSession$SessionChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_EXECUTE:Ljava/lang/String; = "com.termux.service_execute"

.field private static final ACTION_LOCK_WAKE:Ljava/lang/String; = "com.termux.service_wake_lock"

.field private static final ACTION_STOP_SERVICE:Ljava/lang/String; = "com.termux.service_stop"

.field private static final ACTION_UNLOCK_WAKE:Ljava/lang/String; = "com.termux.service_wake_unlock"

.field public static final EXTRA_ARGUMENTS:Ljava/lang/String; = "com.termux.execute.arguments"

.field public static final EXTRA_CURRENT_WORKING_DIRECTORY:Ljava/lang/String; = "com.termux.execute.cwd"

.field private static final EXTRA_EXECUTE_IN_BACKGROUND:Ljava/lang/String; = "com.termux.execute.background"

.field public static final FILES_PATH:Ljava/lang/String;

.field private static final NOTIFICATION_ID:I = 0x539

.field public static final PREFIX_PATH:Ljava/lang/String;


# instance fields
.field final mBackgroundTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/BackgroundJob;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

.field final mTerminalSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWantsToStop:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-object v0, Lcom/termux/app/TermuxConstants;->TERMUX_FILES_DIR_PATH:Ljava/lang/String;

    sput-object v0, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/usr"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Lcom/termux/app/TermuxService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxService$LocalBinder;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .registers 15

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    .line 217
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 218
    iget-object v4, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2e

    const-string v3, " 个会话"

    goto :goto_30

    :cond_2e
    const-string v3, " session"

    :goto_30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_5f

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_53

    const-string v4, " 个任务"

    goto :goto_55

    :cond_53
    const-string v4, " task"

    :goto_55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    :cond_5f
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v11, 0x1

    if-eqz v3, :cond_66

    const/4 v12, 0x1

    goto :goto_67

    :cond_66
    const/4 v12, 0x0

    :goto_67
    if-eqz v12, :cond_81

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_76

    const-string v2, " (唤醒锁定保持)"

    goto :goto_78

    :cond_76
    const-string v2, " (wake lock held)"

    :goto_78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    goto :goto_82

    .line 224
    :cond_81
    move-object v13, v5

    .line 225
    :goto_82
    if-eqz v12, :cond_86

    const/4 v4, 0x1

    goto :goto_88

    :cond_86
    const/4 v2, -0x1

    const/4 v4, -0x1

    .line 227
    :goto_88
    sget-object v3, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v5, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NAME:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move-object v6, v13

    move-object v8, v0

    invoke-static/range {v2 .. v10}, Lcom/termux/app/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 231
    const-string v3, "application_name"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 232
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 233
    const-string v3, "ic_service_notification"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz v12, :cond_b8

    goto :goto_b9

    :cond_b8
    const/4 v11, -0x2

    .line 239
    :goto_b9
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 242
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 245
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 247
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/termux/app/TermuxService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.termux.service_stop"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 249
    const-string v5, "notification_action_exit"

    invoke-static {v5}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v3, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v6, 0x108001d

    invoke-virtual {v2, v6, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz v12, :cond_ee

    .line 251
    const-string v3, "com.termux.service_wake_unlock"

    goto :goto_f0

    :cond_ee
    const-string v3, "com.termux.service_wake_lock"

    .line 252
    :goto_f0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v12, :cond_102

    .line 254
    const-string v4, "notification_action_wake_unlock"

    invoke-static {v4}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v4

    goto :goto_108

    .line 255
    :cond_102
    const-string v4, "notification_action_wake_lock"

    invoke-static {v4}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v4

    .line 253
    :goto_108
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_112

    const v4, 0x108001f

    goto :goto_115

    :cond_112
    const v4, 0x108002f

    .line 257
    :goto_115
    invoke-static {p0, v1, v3, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private requestStopService()V
    .registers 1

    .line 205
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 206
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    return-void
.end method

.method private runStopForeground()V
    .registers 2

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    return-void
.end method

.method private setupNotificationChannel()V
    .registers 4

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    .line 190
    :cond_7
    sget-object v0, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/termux/app/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;
    .registers 11

    if-nez p3, :cond_16

    .line 281
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 282
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    move-object v2, p3

    goto :goto_17

    .line 284
    :cond_12
    const-string p3, "/sdcard/"

    move-object v2, p3

    goto :goto_17

    .line 0
    :cond_16
    move-object v2, p3

    .line 286
    :goto_17
    invoke-static {p4, v2}, Lcom/termux/app/BackgroundJob;->buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 288
    nop

    .line 290
    const-string p1, "/system/bin/sh"

    invoke-static {p1, p2}, Lcom/termux/app/BackgroundJob;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 291
    const/4 p2, 0x0

    aget-object v1, p1, p2

    .line 292
    const/16 p3, 0x2f

    invoke-virtual {v1, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    .line 293
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    const/4 v3, 0x1

    if-ne p3, v0, :cond_3b

    move-object p3, v1

    goto :goto_40

    .line 294
    :cond_3b
    add-int/2addr p3, v3

    invoke-virtual {v1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_40
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 296
    array-length p4, p1

    new-array p4, p4, [Ljava/lang/String;

    .line 297
    aput-object p3, p4, p2

    .line 298
    array-length p2, p1

    if-le p2, v3, :cond_54

    array-length p2, p1

    sub-int/2addr p2, v3

    invoke-static {p1, v3, p4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_54
    new-instance p1, Lcom/termux/terminal/TerminalSession;

    move-object v0, p1

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSession$SessionChangedCallback;)V

    .line 302
    iget-object p2, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    return-object p1
.end method

.method public getSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    return-object v0
.end method

.method public onBackgroundJobExited(Lcom/termux/app/BackgroundJob;)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxService$1;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/TermuxService$1;-><init>(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onBell(Lcom/termux/terminal/TerminalSession;)V

    :cond_7
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 176
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_7
    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 182
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->setupNotificationChannel()V

    .line 183
    sget v0, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 267
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 269
    :goto_13
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 270
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 271
    :cond_29
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_7

    .line 328
    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    :cond_7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 99
    const-string v0, "com.termux.service_stop"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 100
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stop()V

    goto/16 :goto_ef

    .line 101
    :cond_12
    const-string v0, "com.termux.service_wake_lock"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "termux"

    if-eqz v0, :cond_4c

    .line 102
    iget-object p3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p3, :cond_ef

    .line 103
    const-string p3, "power"

    invoke-virtual {p0, p3}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 104
    invoke-virtual {p3, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 108
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p3, v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p3

    iput-object p3, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 110
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 112
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto/16 :goto_ef

    .line 114
    :cond_4c
    const-string v0, "com.termux.service_wake_unlock"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6a

    .line 115
    iget-object p3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p3, :cond_ef

    .line 116
    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 117
    iput-object v3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object p3, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 120
    iput-object v3, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 122
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto/16 :goto_ef

    .line 124
    :cond_6a
    const-string v0, "com.termux.service_execute"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_7a

    move-object v0, v3

    goto :goto_7e

    .line 126
    :cond_7a
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    if-nez p3, :cond_81

    goto :goto_87

    .line 128
    :cond_81
    const-string p3, "com.termux.execute.arguments"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 129
    :goto_87
    const-string p3, "com.termux.execute.cwd"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 131
    const-string v2, "com.termux.execute.background"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 132
    new-instance v2, Lcom/termux/app/BackgroundJob;

    invoke-direct {v2, p3, v0, v3, p0}, Lcom/termux/app/BackgroundJob;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;)V

    .line 133
    iget-object p3, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto :goto_ef

    .line 136
    :cond_a4
    invoke-virtual {p0, v0, v3, p3, v4}, Lcom/termux/app/TermuxService;->createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;

    move-result-object p3

    if-eqz v0, :cond_c3

    .line 140
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b4

    goto :goto_b9

    .line 141
    :cond_b4
    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_b9
    const/16 v2, 0x2d

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 143
    iput-object v0, p3, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 147
    :cond_c3
    invoke-static {p0, p3}, Lcom/termux/app/TermuxPreferences;->storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V

    .line 150
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/termux/app/TermuxService;->startActivity(Landroid/content/Intent;)V

    goto :goto_ef

    :cond_d7
    if-eqz p3, :cond_ef

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unknown TermuxService action: \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    :goto_ef
    and-int/2addr p2, v1

    if-nez p2, :cond_f5

    .line 158
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_f5
    const/4 p1, 0x2

    return p1
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_7
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_7
    return-void
.end method

.method public removeTermSession(Lcom/termux/terminal/TerminalSession;)I
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 309
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1b

    .line 313
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    goto :goto_1e

    .line 315
    :cond_1b
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    :goto_1e
    return p1
.end method

.method public stop()V
    .registers 3

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    const/4 v0, 0x0

    .line 168
    :goto_4
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 169
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 170
    :cond_1a
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    return-void
.end method

.method updateNotification()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 196
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    goto :goto_29

    .line 198
    :cond_18
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_29
    return-void
.end method
