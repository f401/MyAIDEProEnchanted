.class Landroidx/core/app/NotificationCompatJellybean;
.super Ljava/lang/Object;


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "android.support.dataRemoteInputs"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "dataOnlyRemoteInputs"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field private static final KEY_SEMANTIC_ACTION:Ljava/lang/String; = "semanticAction"

.field private static final KEY_SHOWS_USER_INTERFACE:Ljava/lang/String; = "showsUserInterface"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

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

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

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
    .registers 4

    const/4 v3, 0x1

    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    :try_start_7
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_37

    const-string v0, "android.app.Notification$Action"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    const-string v1, "actionIntent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    const-class v0, Landroid/app/Notification;

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_37} :catch_47
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_37} :catch_3c

    :cond_37
    :goto_37
    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_3c
    move-exception v0

    const-string v1, "NotificationCompat"

    const-string v2, "Unable to access notification actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v3, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_37

    :catch_47
    move-exception v0

    const-string v1, "NotificationCompat"

    const-string v2, "Unable to access notification actions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v3, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_37
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;
    .registers 8

    const-string v0, "allowedDataTypes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_21
    new-instance v0, Landroidx/core/app/RemoteInput;

    const-string v1, "resultKey"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "choices"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "allowFreeFormInput"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "extras"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    return-object v0
.end method

.method private static fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroidx/core/app/RemoteInput;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    move-object v0, v1

    goto :goto_3
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .registers 9

    const/4 v2, 0x0

    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_3f
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    move-result-object v0

    if-eqz v0, :cond_4a

    aget-object v1, v0, p1

    :try_start_c
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3d

    const-string v3, "android.support.actionExtras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    :goto_21
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v6, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v5, v0, v1, v3}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_3a} :catch_3f
    .catchall {:try_start_c .. :try_end_3a} :catchall_4d

    move-result-object v0

    :try_start_3b
    monitor-exit v4

    :goto_3c
    return-object v0

    :cond_3d
    move-object v3, v2

    goto :goto_21

    :catch_3f
    move-exception v0

    const-string v1, "NotificationCompat"

    const-string v3, "Unable to access notification actions"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    :cond_4a
    monitor-exit v4

    move-object v0, v2

    goto :goto_3c

    :catchall_4d
    move-exception v0

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 3

    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

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

.method static getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .registers 11

    const/4 v7, 0x0

    const-string v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "android.support.allowGeneratedReplies"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :cond_f
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "actionIntent"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const-string v4, "extras"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "remoteInputs"

    invoke-static {p0, v5}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v5

    const-string v6, "dataOnlyRemoteInputs"

    invoke-static {p0, v6}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v6

    const-string v8, "semanticAction"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "showsUserInterface"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Landroidx/core/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

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
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

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

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_17

    move-object v0, v1

    goto :goto_c
.end method

.method private static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, [Landroid/os/Bundle;

    if-nez v1, :cond_a

    if-nez v0, :cond_d

    :cond_a
    check-cast v0, [Landroid/os/Bundle;

    :goto_c
    return-object v0

    :cond_d
    array-length v1, v0

    const-class v2, [Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_c
.end method

.method static getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .registers 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "icon"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "actionIntent"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_2f
    const-string v2, "android.support.allowGeneratedReplies"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "remoteInputs"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v0, "showsUserInterface"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "semanticAction"

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_5d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_2f
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 6

    const/4 v1, 0x0

    sget-object v2, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    if-eqz v0, :cond_b

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4c

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

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

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2d} :catch_5d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_2d} :catch_4f
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

    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    :cond_36
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4a} :catch_5d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_4a} :catch_4f
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

    sput-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

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

.method public static readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .registers 14

    const/4 v8, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_29

    const-string v0, "android.support.remoteInputs"

    invoke-static {p3, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v5

    const-string v0, "android.support.dataRemoteInputs"

    invoke-static {p3, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v6

    const-string v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_1e
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    const/4 v9, 0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    return-object v0

    :cond_29
    move-object v6, v0

    move-object v5, v0

    move v7, v8

    goto :goto_1e
.end method

.method private static toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;
    .registers 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "resultKey"

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "choices"

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "allowFreeFormInput"

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "extras"

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_5b
    const-string v0, "allowedDataTypes"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_60
    return-object v1
.end method

.method private static toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    move-object v0, v1

    goto :goto_3
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v1, "android.support.remoteInputs"

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2b
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_3e

    const-string v1, "android.support.dataRemoteInputs"

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_3e
    const-string v1, "android.support.allowGeneratedReplies"

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
