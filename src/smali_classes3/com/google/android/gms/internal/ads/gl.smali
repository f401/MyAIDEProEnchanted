.class public final Lcom/google/android/gms/internal/ads/gl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:F

.field private j6:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gl;->j6:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/gl;->DW:F

    return-void
.end method

.method private final FH()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/gl;->DW:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static j6(Landroid/content/Context;)F
    .registers 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez v2, :cond_18

    return v0

    :cond_18
    int-to-float p0, p0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/gl;->j6:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()F
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gl;->FH()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/gl;->DW:F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    monitor-exit p0

    return v0

    :cond_b
    monitor-exit p0

    const/high16 v0, 0x3f800000  # 1.0f

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(F)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/gl;->DW:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gl;->j6:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
