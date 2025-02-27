.class public final Landroidj/support/v4/app/NotificationManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationManagerCompat$CancelTask;,
        Landroidj/support/v4/app/NotificationManagerCompat$Impl;,
        Landroidj/support/v4/app/NotificationManagerCompat$ImplApi24;,
        Landroidj/support/v4/app/NotificationManagerCompat$ImplBase;,
        Landroidj/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;,
        Landroidj/support/v4/app/NotificationManagerCompat$ImplKitKat;,
        Landroidj/support/v4/app/NotificationManagerCompat$NotifyTask;,
        Landroidj/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;,
        Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;,
        Landroidj/support/v4/app/NotificationManagerCompat$Task;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field private static final IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field static final SIDE_CHANNEL_BIND_FLAGS:I

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$ImplApi24;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplApi24;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    :goto_22
    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    invoke-interface {v0}, Landroidj/support/v4/app/NotificationManagerCompat$Impl;->getSideChannelBindFlags()I

    move-result v0

    sput v0, Landroidj/support/v4/app/NotificationManagerCompat;->SIDE_CHANNEL_BIND_FLAGS:I

    return-void

    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_39

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$ImplKitKat;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplKitKat;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    goto :goto_22

    :cond_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_47

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    goto :goto_22

    :cond_47
    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$ImplBase;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    goto :goto_22
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidj/support/v4/app/NotificationManagerCompat;
    .registers 2

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_3d

    :try_start_f
    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    array-length v5, v3

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v5, :cond_39

    aget-object v6, v3, v0

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_39
    sput-object v4, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    sput-object v1, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    :cond_3d
    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    monitor-exit v2

    return-object v0

    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_41

    throw v0
.end method

.method private pushSideChannelQueue(Landroidj/support/v4/app/NotificationManagerCompat$Task;)V
    .registers 5

    sget-object v1, Landroidj/support/v4/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;

    if-nez v0, :cond_14

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;

    iget-object v2, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;

    :cond_14
    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroidj/support/v4/app/NotificationManagerCompat$Task;)V

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .registers 4

    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, v2}, Landroidj/support/v4/app/NotificationManagerCompat$Impl;->areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z

    move-result v0

    return v0
.end method

.method public cancel(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidj/support/v4/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2}, Landroidj/support/v4/app/NotificationManagerCompat$Impl;->cancelNotification(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1b

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$CancelTask;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Landroidj/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidj/support/v4/app/NotificationManagerCompat$Task;)V

    :cond_1b
    return-void
.end method

.method public cancelAll()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_19

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$CancelTask;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidj/support/v4/app/NotificationManagerCompat$Task;)V

    :cond_19
    return-void
.end method

.method public getImportance()I
    .registers 3

    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1}, Landroidj/support/v4/app/NotificationManagerCompat$Impl;->getImportance(Landroid/app/NotificationManager;)I

    move-result v0

    return v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidj/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6

    invoke-static {p3}, Landroidj/support/v4/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroidj/support/v4/app/NotificationManagerCompat$NotifyTask;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p3}, Landroidj/support/v4/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidj/support/v4/app/NotificationManagerCompat$Task;)V

    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2}, Landroidj/support/v4/app/NotificationManagerCompat$Impl;->cancelNotification(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Landroidj/support/v4/app/NotificationManagerCompat;->IMPL:Landroidj/support/v4/app/NotificationManagerCompat$Impl;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2, p3}, Landroidj/support/v4/app/NotificationManagerCompat$Impl;->postNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1b
.end method
