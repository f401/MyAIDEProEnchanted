.class final Lcom/google/firebase/iid/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final DW:Landroid/os/Messenger;

.field FH:Lcom/google/firebase/iid/l;

.field final Hw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field final Zo:Lcom/google/firebase/iid/e;

.field j6:I

.field final v5:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/iid/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/e;)V
    .registers 5

    iput-object p1, p0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/firebase/iid/g;->j6:I

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Labcd/Gx;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/h;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/h;-><init>(Lcom/google/firebase/iid/g;)V

    invoke-direct {v0, v1, v2}, Labcd/Gx;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/g;->DW:Landroid/os/Messenger;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/e;Lcom/google/firebase/iid/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/g;-><init>(Lcom/google/firebase/iid/e;)V

    return-void
.end method

.method private final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {v0}, Lcom/google/firebase/iid/e;->DW(Lcom/google/firebase/iid/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/j;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/j;-><init>(Lcom/google/firebase/iid/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final DW()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/g;->j6:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/iid/g;->j6:I

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {v1}, Lcom/google/firebase/iid/e;->j6(Lcom/google/firebase/iid/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j6()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/g;->j6:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/g;->j6(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j6(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/m;

    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MessengerIpcClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p1, Lcom/google/firebase/iid/n;

    const-string v1, "Timed out waiting for response"

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Lcom/google/firebase/iid/n;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/m;->j6(Lcom/google/firebase/iid/n;)V

    invoke-virtual {p0}, Lcom/google/firebase/iid/g;->DW()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final j6(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "Disconnected: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_1b
    new-instance v0, Ljava/lang/String;

    const-string v2, "Disconnected: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    const-string v2, "MessengerIpcClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget v0, p0, Lcom/google/firebase/iid/g;->j6:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_b9

    if-eqz v0, :cond_b3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v0, v3, :cond_57

    if-eq v0, v2, :cond_57

    if-eq v0, v1, :cond_53

    if-ne v0, v4, :cond_38

    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/firebase/iid/g;->j6:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    iput v4, p0, Lcom/google/firebase/iid/g;->j6:I
    :try_end_55
    .catchall {:try_start_38 .. :try_end_55} :catchall_b9

    monitor-exit p0

    return-void

    :cond_57
    :try_start_57
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iput v4, p0, Lcom/google/firebase/iid/g;->j6:I

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {v1}, Lcom/google/firebase/iid/e;->j6(Lcom/google/firebase/iid/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    new-instance v0, Lcom/google/firebase/iid/n;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/n;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/m;

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/m;->j6(Lcom/google/firebase/iid/n;)V

    goto :goto_80

    :cond_90
    iget-object p1, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const/4 p1, 0x0

    :goto_96
    iget-object p2, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_ac

    iget-object p2, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/m;

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/m;->j6(Lcom/google/firebase/iid/n;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_96

    :cond_ac
    iget-object p1, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_b1
    .catchall {:try_start_57 .. :try_end_b1} :catchall_b9

    monitor-exit p0

    return-void

    :cond_b3
    :try_start_b3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception p1

    monitor-exit p0

    goto :goto_bd

    :goto_bc
    throw p1

    :goto_bd
    goto :goto_bc
.end method

.method final j6(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MessengerIpcClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    monitor-enter p0

    :try_start_24
    iget-object v1, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/m;

    const/4 v2, 0x1

    if-nez v1, :cond_49

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MessengerIpcClient"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_49
    iget-object v3, p0, Lcom/google/firebase/iid/g;->v5:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/google/firebase/iid/g;->DW()V

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_6f

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance p1, Lcom/google/firebase/iid/n;

    const/4 v0, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {p1, v0, v3}, Lcom/google/firebase/iid/n;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/m;->j6(Lcom/google/firebase/iid/n;)V

    goto :goto_6e

    :cond_6b
    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/m;->j6(Landroid/os/Bundle;)V

    :goto_6e
    return v2

    :catchall_6f
    move-exception p1

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method final j6(Lcom/google/firebase/iid/m;)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/g;->j6:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    if-eq v0, v3, :cond_3a

    if-eq v0, v1, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2e

    const/4 p1, 0x4

    if-ne v0, p1, :cond_13

    goto :goto_2e

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/firebase/iid/g;->j6:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_97

    :cond_2e
    :goto_2e
    monitor-exit p0

    return v2

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/firebase/iid/g;->FH()V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_97

    monitor-exit p0

    return v3

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_97

    monitor-exit p0

    return v3

    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/firebase/iid/g;->Hw:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/firebase/iid/g;->j6:I

    if-nez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    const-string p1, "MessengerIpcClient"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5f

    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    iput v3, p0, Lcom/google/firebase/iid/g;->j6:I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {v1}, Lcom/google/firebase/iid/e;->j6(Lcom/google/firebase/iid/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0, v3}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_83

    const-string p1, "Unable to bind to service"

    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/iid/g;->j6(ILjava/lang/String;)V

    goto :goto_95

    :cond_83
    iget-object p1, p0, Lcom/google/firebase/iid/g;->Zo:Lcom/google/firebase/iid/e;

    invoke-static {p1}, Lcom/google/firebase/iid/e;->DW(Lcom/google/firebase/iid/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/i;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/i;-><init>(Lcom/google/firebase/iid/g;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-interface {p1, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_95
    .catchall {:try_start_41 .. :try_end_95} :catchall_97

    :goto_95
    monitor-exit p0

    return v3

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "MessengerIpcClient"

    const-string v1, "Service connected"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 p1, 0x0

    if-nez p2, :cond_1b

    const-string p2, "Null service connection"

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/g;->j6(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_33

    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/firebase/iid/l;

    invoke-direct {v1, p2}, Lcom/google/firebase/iid/l;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/firebase/iid/g;->FH:Lcom/google/firebase/iid/l;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_29
    .catchall {:try_start_1b .. :try_end_22} :catchall_33

    :try_start_22
    iput v0, p0, Lcom/google/firebase/iid/g;->j6:I

    invoke-direct {p0}, Lcom/google/firebase/iid/g;->FH()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_33

    monitor-exit p0

    return-void

    :catch_29
    move-exception p2

    :try_start_2a
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/g;->j6(ILjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "MessengerIpcClient"

    const-string v1, "Service disconnected"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string p1, "Service disconnected"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/g;->j6(ILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
