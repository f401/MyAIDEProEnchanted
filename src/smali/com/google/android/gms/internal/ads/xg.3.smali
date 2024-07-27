.class final Lcom/google/android/gms/internal/ads/xg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/vg;

.field private final j6:Lcom/google/android/gms/internal/ads/kk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vg;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xg;->DW:Lcom/google/android/gms/internal/ads/vg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xg;->j6:Lcom/google/android/gms/internal/ads/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg;->DW:Lcom/google/android/gms/internal/ads/vg;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vg;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg;->DW:Lcom/google/android/gms/internal/ads/vg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xg;->j6:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
