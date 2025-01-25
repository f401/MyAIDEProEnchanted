.class public final enum Lcom/android/apksig/internal/apk/SignatureAlgorithm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;


# instance fields
.field private final mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field private final mId:I

.field private final mJcaKeyAlgorithm:Ljava/lang/String;

.field private final mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v15, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v8, "RSA_PSS_WITH_SHA256"

    const/4 v9, 0x0

    const/16 v10, 0x101

    sget-object v11, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v12, "RSA"

    const-string v6, "SHA256withRSA/PSS"

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string v1, "SHA-256"

    const-string v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v6, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    move-object v0, v15

    move-object v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v15, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v16, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v8, "RSA_PSS_WITH_SHA512"

    const/4 v9, 0x1

    const/16 v10, 0x102

    sget-object v11, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v12, "RSA"

    const-string v6, "SHA512withRSA/PSS"

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string v1, "SHA-512"

    const-string v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x40

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v6, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    move-object/from16 v0, v16

    move-object v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v16, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v1, "RSA_PKCS1_V1_5_WITH_SHA256"

    const/4 v2, 0x2

    const/16 v3, 0x103

    sget-object v4, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v5, "RSA"

    const-string v6, "SHA256withRSA"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v6

    const/16 v7, 0x18

    invoke-direct/range {v0 .. v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v2, "RSA_PKCS1_V1_5_WITH_SHA512"

    const/4 v3, 0x3

    const/16 v4, 0x104

    sget-object v5, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v6, "RSA"

    const-string v7, "SHA512withRSA"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v7

    const/16 v8, 0x18

    invoke-direct/range {v1 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v2, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v3, "ECDSA_WITH_SHA256"

    const/4 v4, 0x4

    const/16 v5, 0x201

    sget-object v6, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v7, "EC"

    const-string v8, "SHA256withECDSA"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v8

    const/16 v9, 0x18

    invoke-direct/range {v2 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v2, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v3, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v4, "ECDSA_WITH_SHA512"

    const/4 v5, 0x5

    const/16 v6, 0x202

    sget-object v7, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v8, "EC"

    const-string v9, "SHA512withECDSA"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v9

    const/16 v10, 0x18

    invoke-direct/range {v3 .. v10}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v3, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v4, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v5, "DSA_WITH_SHA256"

    const/4 v6, 0x6

    const/16 v7, 0x301

    sget-object v8, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v9, "DSA"

    const-string v10, "SHA256withDSA"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v10

    const/16 v11, 0x18

    invoke-direct/range {v4 .. v11}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v4, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v5, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v6, "VERITY_RSA_PKCS1_V1_5_WITH_SHA256"

    const/4 v7, 0x7

    const/16 v8, 0x421

    sget-object v9, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v10, "RSA"

    const-string v11, "SHA256withRSA"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v11

    const/16 v12, 0x1c

    invoke-direct/range {v5 .. v12}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v5, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v6, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v7, "VERITY_ECDSA_WITH_SHA256"

    const/16 v8, 0x8

    const/16 v9, 0x423

    sget-object v10, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v11, "EC"

    const-string v12, "SHA256withECDSA"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v12

    const/16 v13, 0x1c

    invoke-direct/range {v6 .. v13}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v6, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    new-instance v7, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const-string v8, "VERITY_DSA_WITH_SHA256"

    const/16 v9, 0x9

    const/16 v10, 0x425

    sget-object v11, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    const-string v12, "DSA"

    const-string v13, "SHA256withDSA"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v13

    const/16 v14, 0x1c

    invoke-direct/range {v7 .. v14}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V

    sput-object v7, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    const/4 v9, 0x1

    aput-object v16, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const/4 v0, 0x4

    aput-object v2, v8, v0

    const/4 v0, 0x5

    aput-object v3, v8, v0

    const/4 v0, 0x6

    aput-object v4, v8, v0

    const/4 v0, 0x7

    aput-object v5, v8, v0

    const/16 v0, 0x8

    aput-object v6, v8, v0

    const/16 v0, 0x9

    aput-object v7, v8, v0

    sput-object v8, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mId:I

    iput-object p4, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    iput-object p5, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaKeyAlgorithm:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;

    iput p7, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mMinSdkVersion:I

    return-void
.end method

.method public static findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .registers 6

    invoke-static {}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v4

    if-ne v4, p0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .registers 2

    const-class v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .registers 1

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mId:I

    return v0
.end method

.method public getJcaKeyAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaKeyAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mMinSdkVersion:I

    return v0
.end method
