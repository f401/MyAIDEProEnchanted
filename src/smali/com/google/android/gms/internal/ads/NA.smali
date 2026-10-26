.class public final Lcom/google/android/gms/internal/ads/NA;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Z

.field public final FH:Z

.field public final Hw:Z

.field private final Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final j6:Ljava/lang/String;

.field private final v5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V
    .locals 5

    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/NA;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/NA;->Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez p4, :cond_3

    if-eqz p3, :cond_3

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    const-string v0, "adaptive-playback"

    invoke-virtual {p3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/NA;->DW:Z

    if-eqz p3, :cond_5

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v0, v4, :cond_4

    const-string v0, "tunneled-playback"

    invoke-virtual {p3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/NA;->FH:Z

    if-nez p5, :cond_0

    if-eqz p3, :cond_1

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v0, v4, :cond_6

    const-string v0, "secure-playback"

    invoke-virtual {p3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/NA;->Hw:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4
.end method

.method private final FH(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/NA;->v5:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "NoSupport ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecInfo"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/NA;
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/NA;

    move-object v1, p0

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/NA;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V

    return-object v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/NA;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/NA;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/NA;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V

    return-object v0
.end method

.method private static j6(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final DW(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    const-string v0, "channelCount.caps"

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/NA;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "channelCount.aCaps"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    if-ge v0, p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "channelCount.support, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final DW(Ljava/lang/String;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->v5:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HD;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->v5:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "codec.mime "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/NA;->FH(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/TA;->j6(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-nez v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/NA;->j6()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_6

    aget-object v8, v6, v3

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v9, v0, :cond_5

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v8, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "codec.profileLevel, "

    goto :goto_1
.end method

.method public final j6(II)Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    const-string v0, "align.caps"

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/NA;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "align.vCaps"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v2

    new-instance v0, Landroid/graphics/Point;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v3

    mul-int/2addr v1, v3

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1
.end method

.method public final j6(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    const-string v0, "sampleRate.caps"

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/NA;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "sampleRate.aCaps"

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sampleRate.support, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final j6(IID)Z
    .locals 7

    const/16 v2, 0x45

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    const-string v0, "sizeAndRate.caps"

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/NA;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "sizeAndRate.vCaps"

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/NA;->j6(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v1

    if-nez v1, :cond_4

    if-ge p1, p2, :cond_2

    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/NA;->j6(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sizeAndRate.support, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/NA;->v5:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AssumedSupport ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecInfo"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public final j6()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/NA;->Zo:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object v0
.end method
