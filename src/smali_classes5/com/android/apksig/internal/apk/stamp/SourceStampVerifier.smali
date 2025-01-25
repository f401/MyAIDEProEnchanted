.class public abstract Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseSourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Ljava/util/Map;[BII)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/cert/CertificateFactory;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;[BII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_34
    sget-object v0, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    move-result-object v3

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    :try_start_45
    invoke-static {v0, p1}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;
    :try_end_48
    .catch Ljava/security/cert/CertificateException; {:try_start_45 .. :try_end_48} :catch_160

    move-result-object v1

    new-instance v4, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v4, v1, v0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    iget-object v1, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {p4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7d

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_CERTIFICATE_MISMATCH_BETWEEN_SIGNATURE_BLOCK_AND_APK:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p2, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_88
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_d8

    add-int/lit8 v0, v0, 0x1

    :try_start_90
    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    iget-object v7, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    new-instance v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-direct {v8, v6, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v7

    if-nez v7, :cond_cd

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-virtual {p2, v5, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_bb
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_90 .. :try_end_bb} :catch_bc
    .catch Ljava/nio/BufferUnderflowException; {:try_start_90 .. :try_end_bb} :catch_d6

    goto :goto_88

    :catch_bc
    move-exception v1

    :goto_bd
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_7c

    :cond_cd
    :try_start_cd
    new-instance v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    invoke-direct {v6, v7, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_cd .. :try_end_d5} :catch_bc
    .catch Ljava/nio/BufferUnderflowException; {:try_start_cd .. :try_end_d5} :catch_d6

    goto :goto_88

    :catch_d6
    move-exception v1

    goto :goto_bd

    :cond_d8
    iget-object v0, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_NO_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_7c

    :cond_e9
    :try_start_e9
    invoke-static {v2, p5, p6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getSignaturesToVerify(Ljava/util/List;II)Ljava/util/List;
    :try_end_ec
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException; {:try_start_e9 .. :try_end_ec} :catch_155

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    iget-object v6, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    :try_start_118
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_124

    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_124
    invoke-virtual {v0, v3}, Ljava/security/Signature;->update([B)V

    iget-object v1, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_14d

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_13a
    .catch Ljava/security/InvalidKeyException; {:try_start_118 .. :try_end_13a} :catch_13c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_118 .. :try_end_13a} :catch_153
    .catch Ljava/security/SignatureException; {:try_start_118 .. :try_end_13a} :catch_16e

    goto/16 :goto_7c

    :catch_13c
    move-exception v0

    :goto_13d
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_7c

    :cond_14d
    :try_start_14d
    iget-object v0, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_152
    .catch Ljava/security/InvalidKeyException; {:try_start_14d .. :try_end_152} :catch_13c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14d .. :try_end_152} :catch_153
    .catch Ljava/security/SignatureException; {:try_start_14d .. :try_end_152} :catch_16e

    goto :goto_f1

    :catch_153
    move-exception v0

    goto :goto_13d

    :catch_155
    move-exception v0

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_NO_SUPPORTED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_7c

    :catch_160
    move-exception v0

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_7c

    :catch_16e
    move-exception v0

    goto :goto_13d
.end method

.method public static verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;II)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    new-instance v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v0, 0x2b09189e

    invoke-static {p0, p1, v0, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verify(Ljava/nio/ByteBuffer;[BLjava/util/Map;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    return-object v5
.end method

.method private static verify(Ljava/nio/ByteBuffer;[BLjava/util/Map;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;II",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    iget-object v0, p5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_b
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->parseSourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Ljava/util/Map;[BII)V

    invoke-virtual {p5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsWarnings()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_29
    iput-boolean v0, p5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z
    :try_end_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_2b} :catch_37
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_b .. :try_end_2b} :catch_2e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_b .. :try_end_2b} :catch_40

    :goto_2b
    return-void

    :cond_2c
    move v0, v7

    goto :goto_29

    :catch_2e
    move-exception v0

    :goto_2f
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_2b

    :catch_37
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_40
    move-exception v0

    goto :goto_2f
.end method
