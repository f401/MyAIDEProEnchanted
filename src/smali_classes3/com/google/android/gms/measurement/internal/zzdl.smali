.class final Lcom/google/android/gms/measurement/internal/zzdl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzard:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzda;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_23

    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdl;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2a

    throw v1
.end method
