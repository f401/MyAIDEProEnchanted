.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;


# static fields
.field private static DW:Lcom/google/firebase/iid/G;

.field private static j6:Lcom/google/firebase/iid/G;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static DW(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 8

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Binding to service: "

    if-eqz v2, :cond_1a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_2c
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/G;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/google/firebase/iid/G;->j6(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return v1
.end method

.method public static j6(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 9

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    if-eqz v0, :cond_28

    if-nez v1, :cond_28

    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->DW(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result p0

    return p0

    :cond_28
    invoke-static {}, Lcom/google/firebase/iid/w;->j6()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/w;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v1, 0x192

    if-ne v0, v1, :cond_40

    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->DW(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    const/16 p0, 0x193

    return p0

    :cond_40
    return v0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/G;
    .registers 3

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    monitor-enter v0

    :try_start_3
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->DW:Lcom/google/firebase/iid/G;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/firebase/iid/G;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/iid/G;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->DW:Lcom/google/firebase/iid/G;

    :cond_16
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->DW:Lcom/google/firebase/iid/G;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2a

    :goto_18
    const-class p1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    monitor-exit p1

    return-object p0

    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6:Lcom/google/firebase/iid/G;

    if-nez v0, :cond_27

    new-instance v0, Lcom/google/firebase/iid/G;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/iid/G;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6:Lcom/google/firebase/iid/G;

    :cond_27
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6:Lcom/google/firebase/iid/G;
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2a

    goto :goto_18

    :catchall_2a
    move-exception p0

    const-class p1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    monitor-exit p1

    goto :goto_30

    :goto_2f
    throw p0

    :goto_30
    goto :goto_2f
.end method

.method private final j6(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_18

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_18
    const-string v1, "gcm.rawData64"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "rawData"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_2d
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com/iid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.google.firebase.INSTANCE_ID_EVENT"

    if-nez v1, :cond_5d

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_5d

    :cond_44
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    if-nez v1, :cond_5d

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_55

    goto :goto_5d

    :cond_55
    const-string p3, "FirebaseInstanceId"

    const-string v1, "Unexpected intent"

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_5d
    :goto_5d
    move-object v0, v2

    :goto_5e
    if-eqz v0, :cond_65

    invoke-static {p0, p1, v0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result p1

    goto :goto_66

    :cond_65
    const/4 p1, -0x1

    :goto_66
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "wrapped_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/content/Intent;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->j6(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
