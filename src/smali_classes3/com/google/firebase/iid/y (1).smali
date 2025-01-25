.class final Lcom/google/firebase/iid/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Landroid/os/PowerManager$WakeLock;

.field private final FH:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final Hw:Lcom/google/firebase/iid/zzan;

.field private final j6:J

.field private final v5:Lcom/google/firebase/iid/A;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzan;Lcom/google/firebase/iid/A;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/y;->Hw:Lcom/google/firebase/iid/zzan;

    iput-object p3, p0, Lcom/google/firebase/iid/y;->v5:Lcom/google/firebase/iid/A;

    iput-wide p4, p0, Lcom/google/firebase/iid/y;->j6:J

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->j6()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/y;->DW:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private final FH()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->u7()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->tp()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    :cond_d
    const/4 v0, 0x1

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Build channel failed: "

    if-eqz v1, :cond_25

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a
    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private final Hw()Z
    .registers 8

    const-string v0, "FirebaseInstanceId"

    iget-object v1, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    iget-object v3, p0, Lcom/google/firebase/iid/y;->Hw:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    const/4 v3, 0x0

    :try_start_19
    iget-object v4, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->v5()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    const-string v1, "Token retrieval failed: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_27
    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v5, "Token successfully retrieved"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-eqz v1, :cond_3f

    if-eqz v1, :cond_5c

    iget-object v1, v1, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    :cond_3f
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->j6()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "token"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v5}, Lcom/google/firebase/iid/w;->DW(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.firebase.iid.TOKEN_REFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/google/firebase/iid/w;->j6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5c} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_5c} :catch_5d

    :cond_5c
    return v2

    :catch_5d
    move-exception v1

    goto :goto_60

    :catch_5f
    move-exception v1

    :goto_60
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "Token retrieval failed: "

    if-eqz v2, :cond_75

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    :cond_75
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method final DW()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->j6()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method final j6()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->FH()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/y;->DW:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Z)V

    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->gn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    :goto_16
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_4f

    :goto_19
    iget-object v0, p0, Lcom/google/firebase/iid/y;->DW:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->DW()Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/google/firebase/iid/z;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/z;-><init>(Lcom/google/firebase/iid/y;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/z;->j6()V

    goto :goto_19

    :cond_2e
    invoke-direct {p0}, Lcom/google/firebase/iid/y;->FH()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lcom/google/firebase/iid/y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/firebase/iid/y;->v5:Lcom/google/firebase/iid/A;

    iget-object v2, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/A;->j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    goto :goto_16

    :cond_47
    iget-object v0, p0, Lcom/google/firebase/iid/y;->FH:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v1, p0, Lcom/google/firebase/iid/y;->j6:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(J)V
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_4f

    goto :goto_19

    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/iid/y;->DW:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method
