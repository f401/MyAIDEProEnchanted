.class final Lcom/google/android/gms/measurement/internal/zzed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaeg:Z

.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

.field private final zzasj:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzk;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzaeg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to get user properties"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_3b
    .catchall {:try_start_3 .. :try_end_1a} :catchall_39

    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_56

    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzaeg:Z

    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzk;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_3b
    .catchall {:try_start_21 .. :try_end_33} :catchall_39

    :try_start_33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_35
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_56

    goto :goto_4e

    :catchall_39
    move-exception v1

    goto :goto_50

    :catch_3b
    move-exception v1

    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_39

    :try_start_4b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_35

    :goto_4e
    monitor-exit v0

    return-void

    :goto_50
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzed;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    goto :goto_5a

    :goto_59
    throw v1

    :goto_5a
    goto :goto_59
.end method
