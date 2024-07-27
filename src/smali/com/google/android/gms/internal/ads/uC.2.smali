.class public final Lcom/google/android/gms/internal/ads/uC;
.super Ljava/lang/Object;


# instance fields
.field public DW:Lcom/google/android/gms/internal/ads/CC;

.field public FH:Lcom/google/android/gms/internal/ads/qC;

.field private Hw:J

.field public final j6:Lcom/google/android/gms/internal/ads/SB;

.field private v5:I


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/CC;ZZ)V
    .registers 11

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HD;->FH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/ttml+xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    :goto_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const-string v1, "application/x-rawcc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/MA;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/MA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;)V

    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/SB;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/SB;-><init>(Lcom/google/android/gms/internal/ads/Oz;Lcom/google/android/gms/internal/ads/zzfs;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    goto :goto_1

    :cond_3
    const-string v1, "video/webm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/webm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/webm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ads/eA;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/eA;-><init>(I)V

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    if-eqz p4, :cond_7

    const/4 v0, 0x4

    :cond_7
    if-eqz p5, :cond_8

    or-int/lit8 v0, v0, 0x8

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/yA;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/yA;-><init>(I)V

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final DW()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v0

    return v0
.end method

.method public final DW(I)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final FH(I)J
    .registers 8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/uC;->DW(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget v3, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final j6()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final j6(J)I
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/qC;->j6(JJ)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/BC;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qC;->DW(I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v0

    return-object v0
.end method

.method public final j6(JLcom/google/android/gms/internal/ads/CC;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qC;->j6()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, v2, v6, v7}, Lcom/google/android/gms/internal/ads/qC;->j6(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    goto :goto_0

    :cond_2
    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, v6, v7, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(JJ)I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/kB;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kB;-><init>()V

    throw v0
.end method
