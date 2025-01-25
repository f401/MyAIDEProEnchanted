.class final Lcom/google/android/gms/internal/ads/Cz;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field private final j6:Landroid/media/MediaCodec$CryptoInfo;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cz;->j6:Landroid/media/MediaCodec$CryptoInfo;

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cz;->DW:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/Bz;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Cz;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method private final j6(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cz;->DW:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Cz;->j6:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Cz;->DW:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Cz;II)V
    .registers 3

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/Cz;->j6(II)V

    return-void
.end method
