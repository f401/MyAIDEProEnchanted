.class final Lcom/google/android/gms/common/internal/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private DW:I

.field private FH:Z

.field private Hw:Landroid/os/IBinder;

.field private final VH:Lcom/google/android/gms/common/internal/H;

.field private Zo:Landroid/content/ComponentName;

.field private final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/common/internal/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/H;Lcom/google/android/gms/common/internal/i$a;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    return-void
.end method


# virtual methods
.method public final DW()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->Zo:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final DW(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->Hw(Lcom/google/android/gms/common/internal/H;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->DW(Lcom/google/android/gms/common/internal/H;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->Hw(Lcom/google/android/gms/common/internal/H;)Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/I;->FH:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    return-void
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    return v0
.end method

.method public final Hw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/I;->FH:Z

    return v0
.end method

.method public final j6()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->Hw:Landroid/os/IBinder;

    return-object v0
.end method

.method public final j6(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->Hw(Lcom/google/android/gms/common/internal/H;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/i$a;->j6(Landroid/content/Context;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->Hw(Lcom/google/android/gms/common/internal/H;)Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/i$a;->j6(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/i$a;->FH()I

    move-result v5

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/I;->FH:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/I;->FH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->DW(Lcom/google/android/gms/common/internal/H;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/H;->DW(Lcom/google/android/gms/common/internal/H;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/H;->v5(Lcom/google/android/gms/common/internal/H;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->Hw(Lcom/google/android/gms/common/internal/H;)Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/H;->FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final j6(Landroid/content/ServiceConnection;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->j6(Lcom/google/android/gms/common/internal/H;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->DW(Lcom/google/android/gms/common/internal/H;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/I;->Hw:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/I;->Zo:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->j6(Lcom/google/android/gms/common/internal/H;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->VH:Lcom/google/android/gms/common/internal/H;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/H;->DW(Lcom/google/android/gms/common/internal/H;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/I;->v5:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/I;->Hw:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/I;->Zo:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/common/internal/I;->DW:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final v5()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/I;->j6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
