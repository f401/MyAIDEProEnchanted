.class final Lcom/google/android/gms/measurement/internal/zzev;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzasr:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzass:Lcom/google/android/gms/measurement/internal/zzaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzes;Lcom/google/android/gms/measurement/internal/zzaj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzasr:Lcom/google/android/gms/measurement/internal/zzes;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzass:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzasr:Lcom/google/android/gms/measurement/internal/zzes;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzasr:Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Lcom/google/android/gms/measurement/internal/zzes;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzasr:Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzasr:Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzasr:Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzass:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Lcom/google/android/gms/measurement/internal/zzaj;)V

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
