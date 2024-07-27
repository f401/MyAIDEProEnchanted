.class final Lcom/google/firebase/iid/C;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/content/BroadcastReceiver$PendingResult;

.field private FH:Z

.field private final Hw:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final j6:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/C;->FH:Z

    iput-object p1, p0, Lcom/google/firebase/iid/C;->j6:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/firebase/iid/C;->DW:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance v0, Lcom/google/firebase/iid/D;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/iid/D;-><init>(Lcom/google/firebase/iid/C;Landroid/content/Intent;)V

    const-wide/16 v2, 0x2328

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/C;->Hw:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/C;->FH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/C;->DW:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    iget-object v0, p0, Lcom/google/firebase/iid/C;->Hw:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/C;->FH:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
