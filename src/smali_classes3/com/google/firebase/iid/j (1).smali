.class final synthetic Lcom/google/firebase/iid/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/firebase/iid/g;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/j;->j6:Lcom/google/firebase/iid/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/google/firebase/iid/j;->j6:Lcom/google/firebase/iid/g;

    :goto_2
    monitor-enter v0

    :try_start_3
    iget v1, v0, Lcom/google/firebase/iid/g;->j6:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    monitor-exit v0

    return-void

    :cond_a
    iget-object v1, v0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/google/firebase/iid/g;->DW()V

    monitor-exit v0

    return-void

    :cond_17
    iget-object v1, v0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/m;

    iget-object v3, v0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/firebase/iid/m;->j6:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {v3}, Lcom/google/firebase/iid/e;->DW(Lcom/google/firebase/iid/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/k;

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/iid/k;-><init>(Lcom/google/firebase/iid/g;Lcom/google/firebase/iid/m;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_ae

    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MessengerIpcClient"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v3, v0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {v3}, Lcom/google/firebase/iid/e;->j6(Lcom/google/firebase/iid/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/iid/g;->DW:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iget v6, v1, Lcom/google/firebase/iid/m;->FH:I

    iput v6, v5, Landroid/os/Message;->what:I

    iget v6, v1, Lcom/google/firebase/iid/m;->j6:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "oneWay"

    invoke-virtual {v1}, Lcom/google/firebase/iid/m;->j6()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "pkg"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    iget-object v1, v1, Lcom/google/firebase/iid/m;->Hw:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_9d
    iget-object v1, v0, Lcom/google/firebase/iid/g;->FH:Lcom/google/firebase/iid/l;

    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/l;->j6(Landroid/os/Message;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_a4

    goto/16 :goto_2

    :catch_a4
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/g;->j6(ILjava/lang/String;)V

    goto/16 :goto_2

    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    goto :goto_b2

    :goto_b1
    throw v1

    :goto_b2
    goto :goto_b1
.end method
