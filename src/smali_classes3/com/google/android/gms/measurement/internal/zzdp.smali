.class final Lcom/google/android/gms/measurement/internal/zzdp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzard:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzda;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzda;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzakf:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_29

    :try_start_22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v1
.end method
