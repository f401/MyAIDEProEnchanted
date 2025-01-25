.class final Lcom/google/firebase/iid/u;
.super Ljava/lang/Object;


# static fields
.field private static DW:Landroid/app/PendingIntent;

.field private static j6:I


# instance fields
.field private final FH:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "LZx<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Hw:Landroid/content/Context;

.field private VH:Landroid/os/Messenger;

.field private Zo:Landroid/os/Messenger;

.field private gn:Lcom/google/firebase/iid/zzl;

.field private final v5:Lcom/google/firebase/iid/zzan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/zzan;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    iput-object p1, p0, Lcom/google/firebase/iid/u;->Hw:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/u;->v5:Lcom/google/firebase/iid/zzan;

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/firebase/iid/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/iid/v;-><init>(Lcom/google/firebase/iid/u;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/u;->Zo:Landroid/os/Messenger;

    return-void
.end method

.method private final DW(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->FH(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->FH(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method private final FH(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    invoke-static {}, Lcom/google/firebase/iid/u;->j6()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/Zx;

    invoke-direct {v1}, Labcd/Zx;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    invoke-virtual {v3, v0, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_124

    iget-object v2, p0, Lcom/google/firebase/iid/u;->v5:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzan;->j6()I

    move-result v2

    if-eqz v2, :cond_11c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/u;->v5:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzan;->j6()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    goto :goto_32

    :cond_30
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    :goto_32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/firebase/iid/u;->Hw:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/google/firebase/iid/u;->j6(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "|ID|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kid"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseInstanceId"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    const-string p1, "google.messenger"

    iget-object v5, p0, Lcom/google/firebase/iid/u;->Zo:Landroid/os/Messenger;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/firebase/iid/u;->VH:Landroid/os/Messenger;

    if-nez p1, :cond_a2

    iget-object p1, p0, Lcom/google/firebase/iid/u;->gn:Lcom/google/firebase/iid/zzl;

    if-eqz p1, :cond_c6

    :cond_a2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_a8
    iget-object v5, p0, Lcom/google/firebase/iid/u;->VH:Landroid/os/Messenger;

    if-eqz v5, :cond_b0

    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_d9

    :cond_b0
    iget-object v5, p0, Lcom/google/firebase/iid/u;->gn:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v5, p1}, Lcom/google/firebase/iid/zzl;->j6(Landroid/os/Message;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b5} :catch_b6

    goto :goto_d9

    :catch_b6
    move-exception p1

    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c6

    const-string p1, "FirebaseInstanceId"

    const-string v3, "Messenger failed, fallback to startService"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    iget-object p1, p0, Lcom/google/firebase/iid/u;->v5:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzan;->j6()I

    move-result p1

    if-ne p1, v4, :cond_d4

    iget-object p1, p0, Lcom/google/firebase/iid/u;->Hw:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_d9

    :cond_d4
    iget-object p1, p0, Lcom/google/firebase/iid/u;->Hw:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_d9
    :try_start_d9
    invoke-virtual {v1}, Labcd/Zx;->j6()Labcd/Yx;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-static {p1, v2, v3, v1}, Labcd/ay;->j6(Labcd/Yx;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_e7
    .catch Ljava/lang/InterruptedException; {:try_start_d9 .. :try_end_e7} :catch_ff
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d9 .. :try_end_e7} :catch_fd
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d9 .. :try_end_e7} :catch_f6
    .catchall {:try_start_d9 .. :try_end_e7} :catchall_f4

    iget-object v1, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    monitor-enter v1

    :try_start_ea
    iget-object v2, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    invoke-virtual {v2, v0}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :catchall_f1
    move-exception p1

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_ea .. :try_end_f3} :catchall_f1

    throw p1

    :catchall_f4
    move-exception p1

    goto :goto_10f

    :catch_f6
    move-exception p1

    :try_start_f7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_fd
    move-exception p1

    goto :goto_100

    :catch_ff
    move-exception p1

    :goto_100
    const-string p1, "FirebaseInstanceId"

    const-string v1, "No response"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_10f
    .catchall {:try_start_f7 .. :try_end_10f} :catchall_f4

    :goto_10f
    iget-object v1, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    monitor-enter v1

    :try_start_112
    iget-object v2, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    invoke-virtual {v2, v0}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_118
    .catchall {:try_start_112 .. :try_end_118} :catchall_119

    throw p1

    :catchall_119
    move-exception p1

    :try_start_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw p1

    :cond_11c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_124
    move-exception p1

    :try_start_125
    monitor-exit v2
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw p1
.end method

.method private static j6()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/google/firebase/iid/u;

    monitor-enter v0

    :try_start_3
    sget v0, Lcom/google/firebase/iid/u;->j6:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/firebase/iid/u;->j6:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    const-class v1, Lcom/google/firebase/iid/u;

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    const-class v1, Lcom/google/firebase/iid/u;

    monitor-exit v1

    throw v0
.end method

.method private static j6(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Lcom/google/firebase/iid/u;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/u;->DW:Landroid/app/PendingIntent;

    if-nez v0, :cond_18

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.example.invalidpackage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/iid/u;->DW:Landroid/app/PendingIntent;

    :cond_18
    const-string p0, "app"

    sget-object v0, Lcom/google/firebase/iid/u;->DW:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    const-class p0, Lcom/google/firebase/iid/u;

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p0

    const-class p1, Lcom/google/firebase/iid/u;

    monitor-exit p1

    throw p0
.end method

.method private final j6(Landroid/os/Message;)V
    .registers 9

    if-eqz p1, :cond_196

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_196

    check-cast v0, Landroid/content/Intent;

    new-instance v1, Lcom/google/firebase/iid/zzl$a;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzl$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/iid/zzl;

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/iid/zzl;

    iput-object v1, p0, Lcom/google/firebase/iid/u;->gn:Lcom/google/firebase/iid/zzl;

    :cond_29
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_31

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/firebase/iid/u;->VH:Landroid/os/Messenger;

    :cond_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_68

    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "Unexpected response action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    :cond_5b
    new-instance p1, Ljava/lang/String;

    const-string v0, "Unexpected response action: "

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_62
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void

    :cond_68
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76

    const-string v0, "unregistered"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_76
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_14b

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected response, no error or registration id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseInstanceId"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19a

    :cond_a9
    const-string v4, "FirebaseInstanceId"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c2

    const-string v5, "Received InstanceID error "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c9

    :cond_c2
    new-instance v4, Ljava/lang/String;

    const-string v5, "Received InstanceID error "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c9
    const-string v5, "FirebaseInstanceId"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_128

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-le v5, v1, :cond_109

    const-string v5, "ID"

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ea

    goto :goto_109

    :cond_ea
    aget-object v0, v4, v1

    aget-object v1, v4, v2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_fa
    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/u;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19d

    :cond_109
    :goto_109
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11a

    const-string v0, "Unexpected structured response "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_121

    :cond_11a
    new-instance p1, Ljava/lang/String;

    const-string v0, "Unexpected structured response "

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_121
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19d

    :cond_128
    iget-object v4, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_12c
    :try_start_12c
    iget-object v1, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    invoke-virtual {v1}, Labcd/x;->size()I

    move-result v1

    if-ge v0, v1, :cond_146

    iget-object v1, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    invoke-virtual {v1, v0}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/iid/u;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    :cond_146
    monitor-exit v4

    goto :goto_19d

    :catchall_148
    move-exception p1

    monitor-exit v4
    :try_end_14a
    .catchall {:try_start_12c .. :try_end_14a} :catchall_148

    throw p1

    :cond_14b
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_181

    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_180

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_174

    const-string v0, "Unexpected response string: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_17b

    :cond_174
    new-instance p1, Ljava/lang/String;

    const-string v0, "Unexpected response string: "

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_17b
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    return-void

    :cond_181
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "registration_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/u;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_196
    const-string p1, "FirebaseInstanceId"

    const-string v0, "Dropping invalid message"

    :goto_19a
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19d
    return-void
.end method

.method static synthetic j6(Lcom/google/firebase/iid/u;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->j6(Landroid/os/Message;)V

    return-void
.end method

.method private final j6(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/u;->FH:Labcd/x;

    invoke-virtual {v1, p1}, Labcd/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Zx;

    if-nez v1, :cond_2c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1e

    const-string p2, "Missing callback for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_1e
    new-instance p1, Ljava/lang/String;

    const-string p2, "Missing callback for "

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_25
    const-string p2, "FirebaseInstanceId"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2c
    invoke-virtual {v1, p2}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method


# virtual methods
.method final j6(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/iid/u;->v5:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzan;->Hw()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_67

    iget-object v0, p0, Lcom/google/firebase/iid/u;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/e;->j6(Landroid/content/Context;)Lcom/google/firebase/iid/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/e;->j6(ILandroid/os/Bundle;)Labcd/Yx;

    move-result-object v0

    :try_start_16
    invoke-static {v0}, Labcd/ay;->j6(Labcd/Yx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1c} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    goto :goto_20

    :catch_1f
    move-exception v0

    :goto_20
    const/4 v1, 0x3

    const-string v2, "FirebaseInstanceId"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error making request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/n;

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/n;

    invoke-virtual {v0}, Lcom/google/firebase/iid/n;->j6()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_65

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->DW(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_65
    const/4 p1, 0x0

    return-object p1

    :cond_67
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/u;->DW(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
