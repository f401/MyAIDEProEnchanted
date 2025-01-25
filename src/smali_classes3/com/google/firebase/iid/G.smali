.class public final Lcom/google/firebase/iid/G;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final DW:Landroid/content/Intent;

.field private final FH:Ljava/util/concurrent/ScheduledExecutorService;

.field private final Hw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/C;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Z

.field private final j6:Landroid/content/Context;

.field private v5:Lcom/google/firebase/iid/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Labcd/mx;

    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v1, v2}, Labcd/mx;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/G;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/G;->Hw:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/G;->Zo:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/G;->j6:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/G;->DW:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/iid/G;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final DW()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/G;->Hw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/firebase/iid/G;->Hw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/C;

    invoke-virtual {v0}, Lcom/google/firebase/iid/C;->j6()V

    goto :goto_0

    :cond_14
    return-void
.end method

.method private final j6()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "EnhancedIntentService"

    const-string v2, "flush queue called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/firebase/iid/G;->Hw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3

    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "EnhancedIntentService"

    const-string v2, "found intent to be delivered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/google/firebase/iid/G;->v5:Lcom/google/firebase/iid/E;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "EnhancedIntentService"

    const-string v2, "binder is alive, sending the intent."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v0, p0, Lcom/google/firebase/iid/G;->Hw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/C;

    iget-object v2, p0, Lcom/google/firebase/iid/G;->v5:Lcom/google/firebase/iid/E;

    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/E;->j6(Lcom/google/firebase/iid/C;)V

    goto :goto_11

    :cond_4f
    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/google/firebase/iid/G;->Zo:Z

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "binder is dead. start connection? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "EnhancedIntentService"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    iget-boolean v0, p0, Lcom/google/firebase/iid/G;->Zo:Z

    if-nez v0, :cond_a1

    iput-boolean v1, p0, Lcom/google/firebase/iid/G;->Zo:Z
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_a5

    :try_start_79
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/G;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/iid/G;->DW:Landroid/content/Intent;

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_87
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_87} :catch_93
    .catchall {:try_start_79 .. :try_end_87} :catchall_a5

    if-eqz v0, :cond_8b

    monitor-exit p0

    return-void

    :cond_8b
    :try_start_8b
    const-string v0, "EnhancedIntentService"

    const-string v1, "binding to the service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_92} :catch_93
    .catchall {:try_start_8b .. :try_end_92} :catchall_a5

    goto :goto_9b

    :catch_93
    move-exception v0

    :try_start_94
    const-string v1, "EnhancedIntentService"

    const-string v2, "Exception while binding the service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/G;->Zo:Z

    invoke-direct {p0}, Lcom/google/firebase/iid/G;->DW()V
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_a5

    :cond_a1
    monitor-exit p0

    return-void

    :cond_a3
    monitor-exit p0

    return-void

    :catchall_a5
    move-exception v0

    monitor-exit p0

    goto :goto_a9

    :goto_a8
    throw v0

    :goto_a9
    goto :goto_a8
.end method


# virtual methods
.method public final j6(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "EnhancedIntentService"

    const-string v1, "new intent queued in the bind-strategy delivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/google/firebase/iid/G;->Hw:Ljava/util/Queue;

    new-instance v1, Lcom/google/firebase/iid/C;

    iget-object v2, p0, Lcom/google/firebase/iid/G;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/firebase/iid/C;-><init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/firebase/iid/G;->j6()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/firebase/iid/G;->Zo:Z

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/iid/E;

    iput-object v0, p0, Lcom/google/firebase/iid/G;->v5:Lcom/google/firebase/iid/E;

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onServiceConnected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EnhancedIntentService"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-nez p2, :cond_43

    const-string p1, "EnhancedIntentService"

    const-string p2, "Null service connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/firebase/iid/G;->DW()V

    goto :goto_46

    :cond_43
    invoke-direct {p0}, Lcom/google/firebase/iid/G;->j6()V

    :goto_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x3

    const-string v1, "EnhancedIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-direct {p0}, Lcom/google/firebase/iid/G;->j6()V

    return-void
.end method
