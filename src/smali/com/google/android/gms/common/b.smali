.class public Lcom/google/android/gms/common/b;
.super Lcom/google/android/gms/common/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/b$a;
    }
.end annotation


# static fields
.field private static final FH:Ljava/lang/Object;

.field private static final Hw:Lcom/google/android/gms/common/b;

.field public static final v5:I


# instance fields
.field private Zo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/b;->FH:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/b;->Hw:Lcom/google/android/gms/common/b;

    sget v0, Lcom/google/android/gms/common/c;->j6:I

    sput v0, Lcom/google/android/gms/common/b;->v5:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/c;-><init>()V

    return-void
.end method

.method private final DW()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/google/android/gms/common/b;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/b;->Zo:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static j6(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->DW(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->j6(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->v5(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static j6()Lcom/google/android/gms/common/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/b;->Hw:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method static j6(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/i;->j6(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/i;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/common/i;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/ErrorDialogFragment;->j6(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static synthetic j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method

.method private final j6(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/b;->FH(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    const-string v0, "GoogleApiAvailability"

    const-string v1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/e;->Hw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/e;->FH(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->FH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/common/util/o;->VH()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->Hw(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Labcd/jx;->common_full_open_on_phone:I

    sget v2, Labcd/kx;->common_open_on_phone:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2, p4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/common/b;->DW()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "com.google.android.gms.availability"

    const-string v1, "com.google.android.gms.availability"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/e;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v5, "com.google.android.gms.availability"

    const/4 v6, 0x4

    invoke-direct {v1, v5, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object v1, v2

    :cond_3
    :goto_3
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    if-eq p2, v8, :cond_8

    if-eq p2, v9, :cond_8

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const v1, 0x9b6d

    :goto_4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/b;->j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_6
    const v1, 0x108008a

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v5, Labcd/kx;->common_google_play_services_notification_ticker:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/google/android/gms/common/f;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0x28c4

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public DW(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->DW(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public DW(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "n"

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final DW(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->DW(I)Z

    move-result v0

    return v0
.end method

.method public DW(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->j6(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "GooglePlayServicesErrorDialog"

    invoke-static {p1, v0, v1, p4}, Lcom/google/android/gms/common/b;->j6(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final FH(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/b$a;-><init>(Lcom/google/android/gms/common/b;Landroid/content/Context;)V

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public j6(Landroid/content/Context;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public j6(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/f;->j6(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public j6(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->v5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->Hw()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final j6(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->j6(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
