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
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HD;->FH(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1e

    const-string p2, "application/ttml+xml"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p2, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p2, 0x1

    :goto_1f
    if-eqz p2, :cond_25

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    goto :goto_6e

    :cond_25
    const-string p2, "application/x-rawcc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    new-instance p1, Lcom/google/android/gms/internal/ads/MA;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/MA;-><init>(Lcom/google/android/gms/internal/ads/zzfs;)V

    goto :goto_65

    :cond_35
    const-string p2, "video/webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_50

    const-string p2, "audio/webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_50

    const-string p2, "application/webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 p1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p1, 0x1

    :goto_51
    if-eqz p1, :cond_59

    new-instance p1, Lcom/google/android/gms/internal/ads/eA;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/eA;-><init>(I)V

    goto :goto_65

    :cond_59
    if-eqz p4, :cond_5c

    const/4 v1, 0x4

    :cond_5c
    if-eqz p5, :cond_60

    or-int/lit8 v1, v1, 0x8

    :cond_60
    new-instance p1, Lcom/google/android/gms/internal/ads/yA;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/yA;-><init>(I)V

    :goto_65
    new-instance p2, Lcom/google/android/gms/internal/ads/SB;

    iget-object p4, p3, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/SB;-><init>(Lcom/google/android/gms/internal/ads/Oz;Lcom/google/android/gms/internal/ads/zzfs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uC;->j6:Lcom/google/android/gms/internal/ads/SB;

    :goto_6e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result v0

    return v0
.end method

.method public final DW(I)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final FH(I)J
    .registers 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/uC;->DW(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget v3, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    sub-int/2addr p1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/qC;->j6(IJ)J

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
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/qC;->j6(JJ)I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    add-int/2addr p1, p2

    return p1
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/BC;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    iget v1, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qC;->DW(I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object p1

    return-object p1
.end method

.method public final j6(JLcom/google/android/gms/internal/ads/CC;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/CC;->Zo()Lcom/google/android/gms/internal/ads/qC;

    move-result-object v1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uC;->DW:Lcom/google/android/gms/internal/ads/CC;

    if-nez v0, :cond_11

    return-void

    :cond_11
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uC;->FH:Lcom/google/android/gms/internal/ads/qC;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qC;->j6()Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qC;->j6(J)I

    move-result p1

    if-nez p1, :cond_23

    return-void

    :cond_23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, p2, v4, v5}, Lcom/google/android/gms/internal/ads/qC;->j6(IJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qC;->DW()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/qC;->j6(I)J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_4a

    iget p3, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p1

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    return-void

    :cond_4a
    cmp-long p2, v2, v4

    if-ltz p2, :cond_5b

    iget p2, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/uC;->Hw:J

    invoke-interface {v0, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/qC;->j6(JJ)I

    move-result p3

    sub-int/2addr p3, p1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/google/android/gms/internal/ads/uC;->v5:I

    return-void

    :cond_5b
    new-instance p1, Lcom/google/android/gms/internal/ads/kB;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/kB;-><init>()V

    throw p1
.end method
