.class final Lcom/google/android/gms/ads/internal/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final FH:Lcom/google/android/gms/ads/internal/i;

.field private final j6:Lcom/google/android/gms/internal/ads/zzwb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->FH:Lcom/google/android/gms/ads/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iput p3, p0, Lcom/google/android/gms/ads/internal/k;->DW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->FH:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->j6(Lcom/google/android/gms/ads/internal/i;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->FH:Lcom/google/android/gms/ads/internal/i;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget v3, p0, Lcom/google/android/gms/ads/internal/k;->DW:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/i;->j6(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;I)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
