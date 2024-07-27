.class final Lcom/google/android/gms/internal/ads/XA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/WA;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/UA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/XA;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public final j6(I)Landroid/media/MediaCodecInfo;
    .registers 3

    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    const-string v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
