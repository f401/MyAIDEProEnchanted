.class public abstract Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    iput v8, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    iget v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signatureAlgorithmId:I

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signature:[B

    iget-object v1, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-direct {v4, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v4

    if-nez v4, :cond_2c

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v2, v1, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :goto_2b
    return-object v2

    :cond_2c
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->publicKey:[B

    :try_start_46
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_104

    move-result-object v5

    :try_start_53
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_5f

    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_5f
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_81

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/security/InvalidKeyException; {:try_start_53 .. :try_end_73} :catch_74
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_53 .. :try_end_73} :catch_110
    .catch Ljava/security/SignatureException; {:try_start_53 .. :try_end_73} :catch_113

    goto :goto_2b

    :catch_74
    move-exception v0

    :goto_75
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-virtual {v2, v1, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_2b

    :cond_81
    :try_start_81
    iget-object v0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/security/InvalidKeyException; {:try_start_81 .. :try_end_86} :catch_74
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_81 .. :try_end_86} :catch_110
    .catch Ljava/security/SignatureException; {:try_start_81 .. :try_end_86} :catch_113

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    if-nez v0, :cond_92

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_2b

    :cond_92
    :try_start_92
    new-instance v1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-direct {v1, v0, v3}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_9f
    .catch Ljava/security/cert/CertificateException; {:try_start_92 .. :try_end_9f} :catch_f8

    iget-object v0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_a4
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B
    :try_end_ab
    .catch Ljava/security/InvalidKeyException; {:try_start_a4 .. :try_end_ab} :catch_c7

    move-result-object v0

    :goto_ac
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_ea

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v2, v1, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_2b

    :catch_c7
    move-exception v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught an exception encoding the public key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    goto :goto_ac

    :cond_ea
    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    invoke-direct {v0, v8, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    iget-object v1, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    :catch_f8
    move-exception v0

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v2, v1, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_2b

    :catch_104
    move-exception v0

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v2, v1, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_2b

    :catch_110
    move-exception v0

    goto/16 :goto_75

    :catch_113
    move-exception v0

    goto/16 :goto_75
.end method

.method public static verify(Lcom/android/apksig/util/DataSource;Ljava/io/File;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_8
    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readFrom(Ljava/io/InputStream;)Lcom/android/apksig/internal/apk/v4/V4Signature;

    move-result-object v0

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/io/InputStream;)[B
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_71

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Signature file does not contain a v4 signature."

    aput-object v3, v2, v8

    invoke-virtual {v1, v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-object v1

    :cond_27
    iget v3, v0, Lcom/android/apksig/internal/apk/v4/V4Signature;->version:I

    if-eq v3, v7, :cond_40

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERSION_NOT_CURRENT:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/apksig/internal/apk/v4/V4Signature;->version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_40
    iget-object v3, v0, Lcom/android/apksig/internal/apk/v4/V4Signature;->hashingInfo:[B

    invoke-static {v3}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    move-result-object v3

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v4/V4Signature;->signingInfo:[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    invoke-static {v4, v5, v3, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSigningData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    move-result-object v0

    iget-object v4, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v3, v3, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {p0, v0, v3, v2}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->verifyRootHashAndTree(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;[B[B)V

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_26

    iput-boolean v6, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    goto :goto_26

    :catchall_71
    move-exception v0

    :try_start_72
    throw v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    :try_start_74
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    :goto_77
    throw v0

    :catchall_78
    move-exception v1

    goto :goto_77
.end method

.method private static verifyRootHashAndTree(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;[B[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    move-result-object v0

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    iget-object v2, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    iget-object v0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2a

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_ROOT_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p1, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :goto_29
    return-void

    :cond_2a
    if-eqz p3, :cond_48

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_TREE_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p1, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_29

    :cond_48
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedContentDigests:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method
