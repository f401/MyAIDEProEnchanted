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
    .registers 1

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
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/c;-><init>()V

    return-void
.end method

.method private final DW()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/gms/common/b;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/b;->Zo:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static j6(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_2c
    if-nez v0, :cond_33

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_33
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->DW(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3f

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3f
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->j6(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_48

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_48
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->v5(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static j6()Lcom/google/android/gms/common/b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/b;->Hw:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method static j6(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_12

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/i;->j6(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/i;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/i;->j6(Landroid/support/v4/app/r;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/ErrorDialogFragment;->j6(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method

.method private final j6(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    const/16 p3, 0x12

    if-ne p2, p3, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/b;->FH(Landroid/content/Context;)V

    return-void

    :cond_8
    if-nez p4, :cond_15

    const/4 p1, 0x6

    if-ne p2, p1, :cond_14

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :cond_15
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/e;->Hw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/e;->FH(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    new-instance v3, Landroid/support/v4/app/NotificationCompat$b;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$b;-><init>()V

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$b;->j6(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$b;

    invoke-virtual {p3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/support/v4/app/NotificationCompat$l;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->FH(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_78

    invoke-static {}, Lcom/google/android/gms/common/util/o;->VH()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->Hw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_74

    sget v0, Labcd/jx;->common_full_open_on_phone:I

    sget v3, Labcd/kx;->common_open_on_phone:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_98

    :cond_74
    invoke-virtual {p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_98

    :cond_78
    const v3, 0x108008a

    invoke-virtual {p3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget v6, Labcd/kx;->common_google_play_services_notification_ticker:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_98
    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result p4

    if-eqz p4, :cond_d2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result p4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/common/b;->DW()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_cf

    const-string p4, "com.google.android.gms.availability"

    invoke-virtual {v2, p4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/e;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_c1

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-direct {v0, p4, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    :goto_bd
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_cf

    :cond_c1
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    goto :goto_bd

    :cond_cf
    :goto_cf
    invoke-virtual {p3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_d2
    invoke-virtual {p3}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v4, :cond_e1

    if-eq p2, v5, :cond_e1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_e1

    const p2, 0x9b6d

    goto :goto_e9

    :cond_e1
    sget-object p2, Lcom/google/android/gms/common/f;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    :goto_e9
    invoke-static {v2, p2, p1}, Lcom/google/android/gms/common/b;->j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public DW(Landroid/content/Context;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->DW(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public DW(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "n"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final DW(I)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->DW(I)Z

    move-result p1

    return p1
.end method

.method public DW(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->j6(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->j6(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method final FH(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/b$a;-><init>(Lcom/google/android/gms/common/b;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public j6(Landroid/content/Context;I)I
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public j6(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 6

    const-string v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/f;->j6(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .registers 4

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->v5()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->Hw()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final j6(I)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->j6(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
