.class final Lcom/google/android/gms/measurement/internal/zzef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

.field private final zzasj:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_57
    .catchall {:try_start_3 .. :try_end_1a} :catchall_55

    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_72

    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-interface {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzc(Lcom/google/android/gms/measurement/internal/zzk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzcp(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanh:Lcom/google/android/gms/measurement/internal/zzbi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zzcd(Ljava/lang/String;)V

    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4f} :catch_57
    .catchall {:try_start_21 .. :try_end_4f} :catchall_55

    :try_start_4f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_51
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_72

    goto :goto_6a

    :catchall_55
    move-exception v1

    goto :goto_6c

    :catch_57
    move-exception v1

    :try_start_58
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_55

    :try_start_67
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_51

    :goto_6a
    monitor-exit v0

    return-void

    :goto_6c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_72

    goto :goto_76

    :goto_75
    throw v1

    :goto_76
    goto :goto_75
.end method
