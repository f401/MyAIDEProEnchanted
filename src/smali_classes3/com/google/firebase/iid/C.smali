.class final Lcom/google/firebase/iid/C;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/content/BroadcastReceiver$PendingResult;

.field private FH:Z

.field private final Hw:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final j6:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/C;->FH:Z

    iput-object p1, p0, Lcom/google/firebase/iid/C;->j6:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/firebase/iid/C;->DW:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance p2, Lcom/google/firebase/iid/D;

    invoke-direct {p2, p0, p1}, Lcom/google/firebase/iid/D;-><init>(Lcom/google/firebase/iid/C;Landroid/content/Intent;)V

    const-wide/16 v0, 0x2328

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/C;->Hw:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/C;->FH:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/firebase/iid/C;->DW:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    iget-object v0, p0, Lcom/google/firebase/iid/C;->Hw:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/C;->FH:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
