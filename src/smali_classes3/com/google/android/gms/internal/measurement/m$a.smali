.class final Lcom/google/android/gms/internal/measurement/m$a;
.super Lcom/google/android/gms/internal/measurement/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private DW:Z

.field private final FH:Lcom/google/android/gms/internal/measurement/m;

.field private final j6:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m$a;->FH:Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/i;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method final DW(J)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final FH(J)Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/m$a;->DW:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-nez v1, :cond_11

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_1b

    goto :goto_11

    :catch_d
    move-exception p1

    :try_start_e
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :cond_11
    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final J0(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/m$a;->DW:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    :try_start_b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m$a;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    throw p1

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p1
.end method

.method final j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_46

    const-string v0, "r"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_46

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception v6

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$a;->FH:Lcom/google/android/gms/internal/measurement/m;

    const/4 v1, 0x5

    const-string v2, "Unexpected object type. Expected, Received"

    move-object v3, p2

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/m;->j6(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$a;->FH:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected object type. Expected, Received"

    const-string v2, ": %s, %s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v6

    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method
