.class public Lcom/google/android/gms/internal/ads/sH;
.super Lcom/google/android/gms/ads/a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/ads/a;

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sH;->DW:Lcom/google/android/gms/ads/a;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a;->FH()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public Hw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sH;->DW:Lcom/google/android/gms/ads/a;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a;->Hw()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sH;->DW:Lcom/google/android/gms/ads/a;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a;->j6()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sH;->DW:Lcom/google/android/gms/ads/a;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/a;->j6(I)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/ads/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sH;->DW:Lcom/google/android/gms/ads/a;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public v5()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sH;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sH;->DW:Lcom/google/android/gms/ads/a;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a;->v5()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
