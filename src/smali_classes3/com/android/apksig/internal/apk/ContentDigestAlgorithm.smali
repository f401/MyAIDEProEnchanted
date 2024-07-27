.class public final enum Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field public static final enum CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field public static final enum CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field public static final enum VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;


# instance fields
.field private final mChunkDigestOutputSizeBytes:I

.field private final mId:I

.field private final mJcaMessageDigestAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v5, 0x20

    const/4 v13, 0x3

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v1, "CHUNKED_SHA256"

    const-string v4, "SHA-256"

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    new-instance v6, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v7, "CHUNKED_SHA512"

    const-string v10, "SHA-512"

    const/16 v11, 0x40

    move v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    new-instance v7, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v8, "VERITY_CHUNKED_SHA256"

    const-string v11, "SHA-256"

    move v10, v13

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v7, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    new-array v1, v13, [Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    aput-object v0, v1, v2

    aput-object v6, v1, v3

    aput-object v7, v1, v9

    sput-object v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->mId:I

    iput-object p4, p0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->mJcaMessageDigestAlgorithm:Ljava/lang/String;

    iput p5, p0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->mChunkDigestOutputSizeBytes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
    .registers 2

    const-class v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
    .registers 1

    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-object v0
.end method


# virtual methods
.method getChunkDigestOutputSizeBytes()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->mChunkDigestOutputSizeBytes:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->mId:I

    return v0
.end method

.method getJcaMessageDigestAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->mJcaMessageDigestAlgorithm:Ljava/lang/String;

    return-object v0
.end method
