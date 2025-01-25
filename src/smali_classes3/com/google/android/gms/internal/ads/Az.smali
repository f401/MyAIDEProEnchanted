.class public final Lcom/google/android/gms/internal/ads/Az;
.super Ljava/lang/Object;


# instance fields
.field private DW:[B

.field private FH:I

.field public Hw:[I

.field private VH:I

.field private Zo:I

.field private gn:I

.field public j6:[B

.field private final tp:Lcom/google/android/gms/internal/ads/Cz;

.field private final u7:Landroid/media/MediaCodec$CryptoInfo;

.field public v5:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_10

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_11

    :cond_10
    move-object v0, v2

    :goto_11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Az;->u7:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/ads/Cz;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Cz;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/Bz;)V

    move-object v2, v1

    :cond_1f
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Az;->tp:Lcom/google/android/gms/internal/ads/Cz;

    return-void
.end method


# virtual methods
.method public final j6()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Az;->u7:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final j6(I[I[I[B[BI)V
    .registers 7

    iput p1, p0, Lcom/google/android/gms/internal/ads/Az;->Zo:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Az;->Hw:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Az;->v5:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Az;->DW:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    iput p6, p0, Lcom/google/android/gms/internal/ads/Az;->FH:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Az;->VH:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Az;->gn:I

    sget p2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_3a

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Az;->u7:Landroid/media/MediaCodec$CryptoInfo;

    iget p4, p0, Lcom/google/android/gms/internal/ads/Az;->Zo:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/Az;->Hw:[I

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/Az;->v5:[I

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/Az;->DW:[B

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p4, p0, Lcom/google/android/gms/internal/ads/Az;->FH:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_3a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Az;->tp:Lcom/google/android/gms/internal/ads/Cz;

    invoke-static {p2, p1, p1}, Lcom/google/android/gms/internal/ads/Cz;->j6(Lcom/google/android/gms/internal/ads/Cz;II)V

    :cond_3a
    return-void
.end method
