.class final Lcom/google/android/gms/internal/ads/YA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/WA;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private DW:[Landroid/media/MediaCodecInfo;

.field private final j6:I


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/YA;->j6:I

    return-void
.end method

.method private final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YA;->DW:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/google/android/gms/internal/ads/YA;->j6:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/YA;->DW:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/YA;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YA;->DW:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final j6(I)Landroid/media/MediaCodecInfo;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/YA;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/YA;->DW:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    const-string v0, "secure-playback"

    invoke-virtual {p2, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
