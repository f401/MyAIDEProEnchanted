.class final Lcom/google/android/gms/internal/ads/XA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/WA;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/UA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/XA;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()I
    .locals 1

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public final j6(I)Landroid/media/MediaCodecInfo;
    .locals 1

    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
