.class public abstract Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToV4HashingInfo(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)Lcom/android/apksig/internal/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ")",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Invalid hash algorithm, only SHA2-256 over 4 KB chunks supported."

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static digestAlgorithmSortingOrder(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget-object v2, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_15

    if-eq v2, v0, :cond_13

    const/4 v1, 0x3

    if-eq v2, v1, :cond_12

    const/4 v0, -0x1

    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static generateSignature(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_83

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    new-instance v0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    invoke-static {p4, p5, p1, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSigningData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_7b

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    new-instance v0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    new-instance v1, Lcom/android/apksig/internal/apk/v4/V4Signature;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;-><init>(I[B[B)V

    return-object v1

    :cond_7b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Should only be one signature generated"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Should only have one certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No certificates configured for signer"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;)Lcom/android/apksig/internal/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ")",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Lcom/android/apksig/internal/apk/v4/V4Signature;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getApkDigest(Lcom/android/apksig/util/DataSource;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    move-result-object v0

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    iget-object v3, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    iget-object v6, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->convertToV4HashingInfo(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v7

    new-instance v1, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    invoke-virtual {v7}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {v1, v8, v0, v9, v3}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;-><init>(IB[B[B)V

    const/4 v3, 0x0

    move-object v0, p1

    :try_start_32
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSignature(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature;
    :try_end_35
    .catch Ljava/security/InvalidKeyException; {:try_start_32 .. :try_end_35} :catch_3b
    .catch Ljava/security/SignatureException; {:try_start_32 .. :try_end_35} :catch_44
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_32 .. :try_end_35} :catch_46

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0

    :catch_3b
    move-exception v0

    :goto_3c
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Signer failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception v0

    goto :goto_3c

    :catch_46
    move-exception v0

    goto :goto_3c
.end method

.method public static generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_26

    :try_start_9
    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-virtual {v0, v2}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v2, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_26

    return-void

    :catchall_1f
    move-exception v0

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2b

    :goto_25
    :try_start_25
    throw v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v0

    :catchall_2b
    move-exception v1

    goto :goto_25
.end method

.method private static getApkDigest(Lcom/android/apksig/util/DataSource;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;
    :try_end_3
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_3} :catch_2f

    move-result-object v0

    :try_start_4
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getBestV3Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    :try_end_7
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    :try_start_a
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getBestV2Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    :try_end_d
    .catch Ljava/security/SignatureException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_8

    :catch_f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain v2/v3 digest, v3 exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", v2 exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2f
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed APK: not a ZIP archive"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getBestV2Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v0, 0x7109871a

    :try_start_14
    invoke-static {p0, p1, v0, v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    invoke-static/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_7b

    iget-object v0, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_60

    iget-object v0, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->containsErrors()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->pickBestDigest(Ljava/util/List;)[B

    move-result-object v0

    return-object v0

    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should only have one signer, errors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7b
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to extract and parse v2 block"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getBestV3Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v2, -0xfac9740

    :try_start_10
    invoke-static {p0, p1, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v2, v0, v1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_74

    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_59

    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->containsErrors()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v0, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->pickBestDigest(Ljava/util/List;)[B

    move-result-object v0

    return-object v0

    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should only have one signer, errors: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_74
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to extract and parse v3 block"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;
    .registers 7
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

    invoke-static {p0, p1, p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_23
    return-object v1
.end method

.method private static isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z
    .registers 3

    if-nez p0, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-eq p0, v0, :cond_12

    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-eq p0, v0, :cond_12

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-ne p0, v0, :cond_2

    :cond_12
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static pickBestDigest(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p0, :cond_47

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, -0x1

    const/4 v2, 0x0

    move v1, v0

    move-object v3, v2

    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v2

    invoke-static {v2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->digestAlgorithmSortingOrder(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v0

    move v1, v2

    move-object v3, v0

    goto :goto_10

    :cond_3c
    if-eqz v3, :cond_3f

    return-object v3

    :cond_3f
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Failed to find a supported digest in the source APK"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Should have at least one digest"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
