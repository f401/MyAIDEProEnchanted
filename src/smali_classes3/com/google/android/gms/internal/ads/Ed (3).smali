.class final Lcom/google/android/gms/internal/ads/Ed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Um;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/rd;

.field private final j6:Lcom/google/android/gms/internal/ads/Ld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ed;->DW:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ed;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ed;->DW:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ed;->DW:Lcom/google/android/gms/internal/ads/rd;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ed;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ld;->v5()V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
