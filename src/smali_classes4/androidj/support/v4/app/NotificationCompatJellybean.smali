.class Landroidj/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompatJellybean$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_ACTION_EXTRAS:Ljava/lang/String; = "android.support.actionExtras"

.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_GROUP_KEY:Ljava/lang/String; = "android.support.groupKey"

.field static final EXTRA_GROUP_SUMMARY:Ljava/lang/String; = "android.support.isGroupSummary"

.field static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.support.localOnly"

.field static final EXTRA_REMOTE_INPUTS:Ljava/lang/String; = "android.support.remoteInputs"

.field static final EXTRA_SORT_KEY:Ljava/lang/String; = "android.support.sortKey"

.field static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "allowGeneratedReplies"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBigPictureStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .registers 9

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p0}, Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    if-eqz p6, :cond_16

    invoke-virtual {v0, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :cond_16
    if-eqz p2, :cond_1b

    invoke-virtual {v0, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1b
    return-void
.end method

.method public static addBigTextStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p0}, Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    if-eqz p2, :cond_16

    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_16
    return-void
.end method

.method public static addInboxStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-interface {p0}, Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v1

    if-eqz p2, :cond_12

    invoke-virtual {v1, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    :cond_12
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_16

    :cond_26
    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_1f

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    if-nez v1, :cond_18

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_18
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1f
    return-object v1
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v2, :cond_8

    :cond_6
    move v0, v1

    :goto_7
    return v0

    :cond_8
    :try_start_8
    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_42

    const-string v2, "android.app.Notification$Action"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v3, "actionIntent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    const-class v2, Landroid/app/Notification;

    const-string v3, "actions"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_42} :catch_47
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_42} :catch_52

    :cond_42
    :goto_42
    sget-boolean v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-nez v2, :cond_6

    goto :goto_7

    :catch_47
    move-exception v2

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification actions"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_42

    :catch_52
    move-exception v2

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification actions"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_42
.end method

.method public static getAction(Landroid/app/Notification;ILandroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroidj/support/v4/app/NotificationCompatBase$Action;
    .registers 12

    const/4 v6, 0x0

    sget-object v7, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_3f
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    move-result-object v0

    if-eqz v0, :cond_4a

    aget-object v1, v0, p1

    :try_start_c
    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_50

    const-string v2, "android.support.actionExtras"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v5, v0

    :goto_21
    sget-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Landroidj/support/v4/app/NotificationCompatJellybean;->readAction(Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidj/support/v4/app/NotificationCompatBase$Action;
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_3c} :catch_3f
    .catchall {:try_start_c .. :try_end_3c} :catchall_4d

    move-result-object v0

    :try_start_3d
    monitor-exit v7

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    const-string v1, "NotificationCompat"

    const-string v2, "Unable to access notification actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    :cond_4a
    monitor-exit v7

    move-object v0, v6

    goto :goto_3e

    :catchall_4d
    move-exception v0

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    move-object v5, v6

    goto :goto_21
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 3

    sget-object v1, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v0, v0

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private static getActionFromBundle(Landroid/os/Bundle;Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroidj/support/v4/app/NotificationCompatBase$Action;
    .registers 10

    const/4 v6, 0x0

    const-string v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "android.support.allowGeneratedReplies"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    :cond_f
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v0, "actionIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const-string v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "remoteInputs"

    invoke-static {p0, v0}, Landroidj/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p2}, Landroidj/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroidj/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Landroidj/support/v4/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

    move-result v0

    if-nez v0, :cond_d

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    sget-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_15} :catch_1a
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    :try_start_15
    monitor-exit v2

    goto :goto_c

    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_17

    throw v0

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_17

    move-object v0, v1

    goto :goto_c
.end method

.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroidj/support/v4/app/NotificationCompatBase$Action;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;",
            "Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;",
            ")[",
            "Landroidj/support/v4/app/NotificationCompatBase$Action;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroidj/support/v4/app/NotificationCompatBase$Action;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    array-length v0, v2

    if-ge v1, v0, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Landroidj/support/v4/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroidj/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_21
    move-object v0, v2

    goto :goto_3
.end method

.method private static getBundleForAction(Landroidj/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .registers 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "icon"

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title"

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "actionIntent"

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4b

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_2f
    const-string v2, "android.support.allowGeneratedReplies"

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "remoteInputs"

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidj/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1

    :cond_4b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_2f
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 6

    const/4 v1, 0x0

    sget-object v2, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    if-eqz v0, :cond_b

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4c

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    sget-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_36

    const-class v0, Landroid/app/Notification;

    const-string v3, "extras"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2d} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_2d} :catch_5d
    .catchall {:try_start_b .. :try_end_2d} :catchall_4c

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_4c

    move-object v0, v1

    goto :goto_a

    :cond_30
    const/4 v3, 0x1

    :try_start_31
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sput-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    :cond_36
    sget-object v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4a} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_4a} :catch_5d
    .catchall {:try_start_31 .. :try_end_4a} :catchall_4c

    :cond_4a
    :try_start_4a
    monitor-exit v2

    goto :goto_a

    :catchall_4c
    move-exception v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v0

    :catch_4f
    move-exception v0

    :try_start_50
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    const/4 v0, 0x1

    sput-boolean v0, Landroidj/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    monitor-exit v2

    move-object v0, v1

    goto :goto_a

    :catch_5d
    move-exception v0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_4c

    goto :goto_57
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.groupKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.localOnly"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getParcelableArrayListForActions([Landroidj/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidj/support/v4/app/NotificationCompatBase$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    invoke-static {v3}, Landroidj/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroidj/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.sortKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .registers 3

    invoke-static {p0}, Landroidj/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.isGroupSummary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readAction(Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidj/support/v4/app/NotificationCompatBase$Action;
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p5, :cond_14

    const-string v0, "android.support.remoteInputs"

    invoke-static {p5, v0}, Landroidj/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    const-string v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_14
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroidj/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    return-object v0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidj/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v1, "android.support.remoteInputs"

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidj/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2b
    const-string v1, "android.support.allowGeneratedReplies"

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
