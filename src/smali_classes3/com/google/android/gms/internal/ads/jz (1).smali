.class Lcom/google/android/gms/internal/ads/jz;
.super Ljava/lang/Object;


# instance fields
.field private DW:Z

.field private FH:I

.field private Hw:J

.field private VH:J

.field private Zo:J

.field private gn:J

.field protected j6:Landroid/media/AudioTrack;

.field private u7:J

.field private v5:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/iz;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jz;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()J
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->VH:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jz;->VH:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/jz;->FH:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jz;->u7:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/jz;->gn:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->j6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_35

    return-wide v2

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jz;->j6:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/jz;->DW:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    cmp-long v0, v4, v2

    if-nez v0, :cond_51

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->Hw:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->Zo:J

    :cond_51
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->Zo:J

    add-long/2addr v4, v0

    :cond_54
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->Hw:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_61

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->v5:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->v5:J

    :cond_61
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/jz;->Hw:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->v5:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public final FH()J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/jz;->FH:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Zo()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final j6()V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->VH:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->j6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public final j6(J)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jz;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->gn:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->VH:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/jz;->u7:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jz;->j6:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public j6(Landroid/media/AudioTrack;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jz;->j6:Landroid/media/AudioTrack;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/jz;->DW:Z

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->VH:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->Hw:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->v5:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jz;->Zo:J

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jz;->FH:I

    :cond_1b
    return-void
.end method

.method public v5()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
