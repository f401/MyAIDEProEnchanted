.class public Lcom/google/android/gms/internal/ads/vw;
.super Lcom/google/android/gms/internal/ads/xw;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Fm;


# instance fields
.field private EQ:Ljava/lang/String;

.field private J0:J

.field private tp:Lcom/google/android/gms/internal/ads/fn;

.field private we:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vw;->EQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vw;->EQ:Ljava/lang/String;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Aw;JLcom/google/android/gms/internal/ads/fl;)V
    .registers 12

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xw;->Zo:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/vw;->we:Z

    if-nez v2, :cond_1e

    const-wide/16 v2, 0x8

    add-long/2addr v2, p2

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 v2, 0x8

    goto :goto_20

    :cond_1e
    :goto_1e
    const/16 v2, 0x10

    :goto_20
    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xw;->VH:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Aw;->j6(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xw;->gn:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xw;->FH:Lcom/google/android/gms/internal/ads/fl;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Aw;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/fl;)V
    .registers 10

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->position()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vw;->J0:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/vw;->we:Z

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/vw;->j6(Lcom/google/android/gms/internal/ads/Aw;JLcom/google/android/gms/internal/ads/fl;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/fn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vw;->tp:Lcom/google/android/gms/internal/ads/fn;

    return-void
.end method
