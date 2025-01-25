.class public final Lcom/google/android/gms/measurement/internal/zzbr;
.super Lcom/google/android/gms/measurement/internal/zzcs;


# static fields
.field private static final zzaoz:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzadl:Ljava/util/concurrent/ExecutorService;

.field private zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

.field private zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

.field private final zzaos:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbu<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaot:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbu<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaou:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzaov:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzaow:Ljava/lang/Object;

.field private final zzaox:Ljava/util/concurrent/Semaphore;

.field private volatile zzaoy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoz:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaow:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaox:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaos:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaot:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbt;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbt;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaou:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbt;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbt;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaov:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbr;Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzbv;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbr;)Ljava/util/concurrent/Semaphore;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaox:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzbu<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaos:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    if-nez p1, :cond_22

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbv;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaos:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbv;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaou:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_25

    :cond_22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbv;->zzki()V

    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzbr;Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzbv;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzbr;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoy:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzbr;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaow:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzbr;)Lcom/google/android/gms/measurement/internal/zzbv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzbr;)Lcom/google/android/gms/measurement/internal/zzbv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

    return-object p0
.end method

.method static synthetic zzkh()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoz:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5f

    const-wide/16 p2, 0x3a98

    :try_start_a
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_38
    .catchall {:try_start_a .. :try_end_d} :catchall_5f

    :try_start_d
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_5f

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_37

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_2d

    const-string p4, "Timed out waiting for "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_34

    :cond_2d
    new-instance p3, Ljava/lang/String;

    const-string p4, "Timed out waiting for "

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_37
    return-object p1

    :catch_38
    move-exception p2

    :try_start_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_52

    const-string p4, "Interrupted waiting for "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_59

    :cond_52
    new-instance p3, Ljava/lang/String;

    const-string p4, "Interrupted waiting for "

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_59
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :catchall_5f
    move-exception p2

    monitor-exit p1
    :try_end_61
    .catchall {:try_start_39 .. :try_end_61} :catchall_5f

    throw p2
.end method

.method public final zzaf()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbu;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbu;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    if-ne p1, v1, :cond_2f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaos:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_32

    :cond_2f
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Lcom/google/android/gms/measurement/internal/zzbu;)V

    :goto_32
    return-object v0
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbu;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbu;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    if-ne p1, v1, :cond_1a

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_1d

    :cond_1a
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Lcom/google/android/gms/measurement/internal/zzbu;)V

    :goto_1d
    return-object v0
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbu;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbu;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zza(Lcom/google/android/gms/measurement/internal/zzbu;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbu;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbu;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaow:Ljava/lang/Object;

    monitor-enter p1

    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbv;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaot:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbv;-><init>(Lcom/google/android/gms/measurement/internal/zzbr;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaov:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_33

    :cond_30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzki()V

    :goto_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgg()V

    return-void
.end method

.method public final zzgh()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaor:Lcom/google/android/gms/measurement/internal/zzbv;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzkf()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaoq:Lcom/google/android/gms/measurement/internal/zzbv;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzkg()Ljava/util/concurrent/ExecutorService;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzaow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzadl:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzadl:Ljava/util/concurrent/ExecutorService;

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbr;->zzadl:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
