.class final Lcom/google/android/gms/internal/ads/rk;
.super Lcom/google/android/gms/internal/ads/Ak;


# instance fields
.field private final Hw:Lcom/google/android/gms/internal/ads/pk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rk;->Hw:Lcom/google/android/gms/internal/ads/pk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/r;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rk;->Hw:Lcom/google/android/gms/internal/ads/pk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Lcom/google/android/gms/internal/ads/pk;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rk;->Hw:Lcom/google/android/gms/internal/ads/pk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/pk;->DW(Lcom/google/android/gms/internal/ads/pk;)Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rk;->Hw:Lcom/google/android/gms/internal/ads/pk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/pk;->FH(Lcom/google/android/gms/internal/ads/pk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->J8()Lcom/google/android/gms/internal/ads/u;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rk;->Hw:Lcom/google/android/gms/internal/ads/pk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/pk;->Hw(Lcom/google/android/gms/internal/ads/pk;)Lcom/google/android/gms/internal/ads/s;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/u;->j6(Lcom/google/android/gms/internal/ads/s;Lcom/google/android/gms/internal/ads/r;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_26} :catch_29
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    goto :goto_2f

    :catchall_27
    move-exception v0

    goto :goto_31

    :catch_29
    move-exception v0

    :try_start_2a
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    monitor-exit v1

    return-void

    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    throw v0
.end method
