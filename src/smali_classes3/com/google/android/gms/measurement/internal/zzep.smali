.class final Lcom/google/android/gms/measurement/internal/zzep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzads:Ljava/lang/String;

.field private final zzadz:Ljava/lang/String;

.field private final zzaeg:Z

.field private final zzagj:Ljava/lang/String;

.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

.field private final zzasj:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzagj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzads:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzadz:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzaeg:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to get user properties"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzagj:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzads:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzadz:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2d} :catch_6a
    .catchall {:try_start_3 .. :try_end_2d} :catchall_68

    :try_start_2d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_96

    return-void

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzagj:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzads:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzadz:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzaeg:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;)Ljava/util/List;

    move-result-object v1

    :goto_4a
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_4e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzagj:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzads:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzadz:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzaeg:Z

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_4a

    :goto_5d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_62} :catch_6a
    .catchall {:try_start_34 .. :try_end_62} :catchall_68

    :try_start_62
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_64
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_96

    goto :goto_8e

    :catchall_68
    move-exception v1

    goto :goto_90

    :catch_6a
    move-exception v1

    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzagj:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzads:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_8b
    .catchall {:try_start_6b .. :try_end_8b} :catchall_68

    :try_start_8b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_64

    :goto_8e
    monitor-exit v0

    return-void

    :goto_90
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzasj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_96

    goto :goto_9a

    :goto_99
    throw v1

    :goto_9a
    goto :goto_99
.end method
