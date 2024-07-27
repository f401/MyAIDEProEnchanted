.class Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkDigests"
.end annotation


# instance fields
.field private final algorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field private final concatOfDigestsOfChunks:[B

.field private final digestOutputSize:I


# direct methods
.method private constructor <init>(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->algorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getChunkDigestOutputSizeBytes()I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->digestOutputSize:I

    mul-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->concatOfDigestsOfChunks:[B

    const/4 v1, 0x0

    const/16 v2, 0x5a

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->access$500(I[BI)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;-><init>(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->digestOutputSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)Ljava/security/MessageDigest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->createMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->algorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->concatOfDigestsOfChunks:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->getOffset(I)I

    move-result v0

    return v0
.end method

.method private createMessageDigest()Ljava/security/MessageDigest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->algorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getJcaMessageDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private getOffset(I)I
    .registers 3

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->digestOutputSize:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    return v0
.end method
