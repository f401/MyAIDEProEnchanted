.class public abstract Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock;,
        Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;,
        Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;
    }
.end annotation


# static fields
.field public static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field protected static final STRIPPING_PROTECTION_ATTR_ID:I = -0x41100ff3


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateAdditionalAttributes(Z)[B
    .registers 3

    if-eqz p0, :cond_21

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, -0x41100ff3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_20
.end method

.method public static generateApkSignatureSchemeV2Block(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;Z)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;Z)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    new-instance v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1, p5}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->generateApkSignatureSchemeV2Block(Ljava/util/List;Ljava/util/Map;Z)Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;-><init>(Lcom/android/apksig/internal/util/Pair;Ljava/util/Map;)V

    return-object v3
.end method

.method private static generateApkSignatureSchemeV2Block(Ljava/util/List;Ljava/util/Map;Z)Lcom/android/apksig/internal/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;Z)",
            "Lcom/android/apksig/internal/util/Pair",
            "<[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    add-int/lit8 v1, v1, 0x1

    :try_start_1d
    invoke-static {v0, p1, p2}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->generateSignerBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;Z)[B
    :try_end_20
    .catch Ljava/security/InvalidKeyException; {:try_start_1d .. :try_end_20} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_1d .. :try_end_20} :catch_25

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catch_25
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signer #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_42
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signer #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    const/4 v0, 0x1

    new-array v0, v0, [[B

    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    move-result-object v0

    const v1, 0x7109871a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static generateSignerBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;Z)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v2

    new-instance v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;

    invoke-direct {v3, v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;-><init>(Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$1;)V

    :try_start_22
    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;->certificates:Ljava/util/List;
    :try_end_2a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_22 .. :try_end_2a} :catch_d8

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_63

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " content digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not computed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    iput-object v4, v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;->digests:Ljava/util/List;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->generateAdditionalAttributes(Z)[B

    move-result-object v0

    iput-object v0, v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;->additionalAttributes:[B

    new-instance v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;

    invoke-direct {v0, v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;-><init>(Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$1;)V

    const/4 v1, 0x4

    new-array v1, v1, [[B

    iget-object v4, v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;->digests:Ljava/util/List;

    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    move-result-object v4

    aput-object v4, v1, v7

    iget-object v4, v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;->certificates:Ljava/util/List;

    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements(Ljava/util/List;)[B

    move-result-object v4

    aput-object v4, v1, v9

    iget-object v3, v3, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$SignedData;->additionalAttributes:[B

    aput-object v3, v1, v10

    new-array v3, v7, [B

    aput-object v3, v1, v11

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->signedData:[B

    iput-object v2, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->publicKey:[B

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->signatures:Ljava/util/List;

    iget-object v1, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->signedData:[B

    invoke-static {p0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->signatures:Ljava/util/List;

    new-array v1, v11, [[B

    iget-object v2, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->signedData:[B

    aput-object v2, v1, v7

    iget-object v2, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->signatures:Ljava/util/List;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner$V2SignatureSchemeBlock$Signer;->publicKey:[B

    aput-object v0, v1, v10

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    move-result-object v0

    return-object v0

    :catch_d8
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to encode certificates"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e1
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No certificates configured for signer"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    check-cast p0, Ljava/security/interfaces/RSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc00

    if-gt v0, v1, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2b

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    :goto_28
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    return-object v1

    :cond_2c
    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    :goto_2e
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2b

    :cond_33
    const-string v1, "DSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2b

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    goto :goto_28

    :cond_4a
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    check-cast p0, Ljava/security/interfaces/ECKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_73

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2b

    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    goto :goto_28

    :cond_73
    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    goto :goto_2e

    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
