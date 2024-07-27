.class final Lcom/google/android/gms/internal/ads/kz;
.super Lcom/google/android/gms/internal/ads/jz;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private EQ:J

.field private J0:J

.field private final tp:Landroid/media/AudioTimestamp;

.field private we:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/jz;-><init>(Lcom/google/android/gms/internal/ads/iz;)V

    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kz;->tp:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public final Hw()Z
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->j6:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kz;->tp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kz;->tp:Landroid/media/AudioTimestamp;

    iget-wide v2, v1, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/kz;->we:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/kz;->EQ:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/kz;->EQ:J

    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/kz;->we:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/kz;->EQ:J

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/kz;->J0:J

    :cond_1
    return v0
.end method

.method public final Zo()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/kz;->J0:J

    return-wide v0
.end method

.method public final j6(Landroid/media/AudioTrack;Z)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/jz;->j6(Landroid/media/AudioTrack;Z)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kz;->EQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kz;->we:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/kz;->J0:J

    return-void
.end method

.method public final v5()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kz;->tp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method
