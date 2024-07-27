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
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "SdCardPath"
    .end annotation
.end field

.field private static final NOTIFICATION_ID:I = 0x539

.field public static final PREFIX_PATH:Ljava/lang/String;


# instance fields
.field final mBackgroundTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWantsToStop:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/termux/app/TermuxConstants;->TERMUX_FILES_DIR_PATH:Ljava/lang/String;

    sput-object v0, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/usr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 359
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/termux/app/TermuxService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxService$LocalBinder;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .registers 12

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 210
    :try_start_0
    const-string v1, "com.termux.app.TermuxActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    invoke-static {p0, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 216
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    .line 217
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 218
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 219
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz v2, :cond_3

    const-string v1, " \u4e2a\u4f1a\u8bdd"

    :goto_0
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-ne v3, v8, :cond_0

    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    if-lez v4, :cond_2

    .line 221
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz v2, :cond_4

    const-string v1, " \u4e2a\u4efb\u52a1"

    :goto_1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-ne v4, v8, :cond_1

    :cond_1
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_5

    move v9, v10

    .line 225
    :goto_2
    if-eqz v9, :cond_c

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz v2, :cond_6

    const-string v1, " (\u5524\u9192\u9501\u5b9a\u4fdd\u6301)"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    :goto_4
    if-eqz v9, :cond_7

    move v2, v8

    .line 227
    :goto_5
    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v3, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NAME:Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/termux/app/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 231
    const-string v0, "application_name"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 232
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 233
    const-string v0, "ic_service_notification"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 235
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 239
    if-eqz v9, :cond_8

    :goto_6
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 242
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 245
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 247
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 248
    :try_start_1
    const-string v0, "com.termux.app.TermuxService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.termux.service_stop"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 249
    const v3, 0x108001d

    const-string v4, "notification_action_exit"

    invoke-static {v4}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 251
    if-eqz v9, :cond_9

    const-string v0, "com.termux.service_wake_unlock"

    .line 252
    :goto_7
    :try_start_2
    const-string v3, "com.termux.app.TermuxService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 253
    if-eqz v9, :cond_a

    const-string v0, "notification_action_wake_unlock"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    :goto_8
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    if-eqz v9, :cond_b

    const v0, 0x108001f

    .line 257
    :goto_9
    invoke-static {p0, v10, v3, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_3
    const-string v1, " session"

    goto/16 :goto_0

    .line 221
    :cond_4
    const-string v1, " task"

    goto/16 :goto_1

    :cond_5
    move v9, v8

    .line 224
    goto/16 :goto_2

    .line 225
    :cond_6
    const-string v1, " (wake lock held)"

    goto/16 :goto_3

    .line 226
    :cond_7
    const/4 v2, -0x1

    goto/16 :goto_5

    .line 239
    :cond_8
    const/4 v8, -0x2

    goto/16 :goto_6

    .line 248
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_9
    const-string v0, "com.termux.service_wake_lock"

    goto :goto_7

    .line 252
    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_a
    const-string v0, "notification_action_wake_lock"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 256
    :cond_b
    const v0, 0x108002f

    goto :goto_9

    :cond_c
    move-object v4, v1

    goto/16 :goto_4
.end method

.method private requestStopService()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 206
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    return-void
.end method

.method private runStopForeground()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    return-void
.end method

.method private setupNotificationChannel()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 190
    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/termux/app/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method


# virtual methods
.method createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 280
    if-nez p3, :cond_3

    .line 281
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 286
    :goto_0
    invoke-static {p4, v2}, Lcom/termux/app/BackgroundJob;->buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 288
    const-string v0, "/system/bin/sh"

    invoke-static {v0, p2}, Lcom/termux/app/BackgroundJob;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 291
    aget-object v1, v5, v8

    .line 292
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 293
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    array-length v3, v5

    new-array v3, v3, [Ljava/lang/String;

    .line 297
    aput-object v0, v3, v8

    .line 298
    array-length v0, v5

    if-le v0, v7, :cond_0

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v7, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_0
    new-instance v0, Lcom/termux/terminal/TerminalSession;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSession$SessionChangedCallback;)V

    .line 302
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 304
    return-object v0

    .line 284
    :cond_1
    const-string v2, "/sdcard/"

    goto :goto_0

    .line 293
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v2, p3

    goto :goto_0
.end method

.method public getSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/app/BackgroundJob;",
            ")V"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxService$100000000;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/TermuxService$100000000;-><init>(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onBell(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p1, p2}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 267
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    .line 269
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "Wakelock"
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v2, Lcom/termux/app/TermuxService;->ACTION_STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stop()V

    .line 156
    :cond_0
    :goto_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 158
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 163
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 101
    :cond_2
    sget-object v2, Lcom/termux/app/TermuxService;->ACTION_LOCK_WAKE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    const/4 v1, 0x1

    const-string v2, "termux"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 108
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 109
    const/4 v1, 0x3

    const-string v2, "termux"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 110
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 112
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto :goto_0

    .line 114
    :cond_3
    sget-object v2, Lcom/termux/app/TermuxService;->ACTION_UNLOCK_WAKE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v0, v1

    .line 117
    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 120
    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v1, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 122
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto :goto_0

    .line 124
    :cond_4
    sget-object v2, Lcom/termux/app/TermuxService;->ACTION_EXECUTE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 126
    if-nez v2, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 128
    :goto_1
    if-nez v2, :cond_6

    check-cast v1, [Ljava/lang/String;

    .line 129
    :goto_2
    const-string v2, "com.termux.execute.cwd"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, "com.termux.execute.background"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    new-instance v3, Lcom/termux/app/BackgroundJob;

    invoke-direct {v3, v2, v0, v1, p0}, Lcom/termux/app/BackgroundJob;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;)V

    .line 133
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto/16 :goto_0

    .line 126
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_6
    const-string v1, "com.termux.execute.arguments"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 136
    :cond_7
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/termux/app/TermuxService;->createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    .line 139
    if-eqz v0, :cond_8

    .line 140
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 141
    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 142
    :goto_3
    const/16 v2, 0x2d

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 143
    iput-object v0, v1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 147
    :cond_8
    invoke-static {p0, v1}, Lcom/termux/app/TermuxPreferences;->storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V

    .line 150
    :try_start_0
    const-string v0, "com.termux.app.TermuxActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 141
    :cond_9
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_a
    if-eqz v0, :cond_0

    .line 153
    const-string v1, "termux"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown TermuxService action: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public removeTermSession(Lcom/termux/terminal/TerminalSession;)I
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    .line 317
    :goto_0
    return v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    goto :goto_0
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    .line 168
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method updateNotification()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTerminalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    .line 198
    :goto_0
    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/termux/app/TermuxConstants;->TERMUX_APP_NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
