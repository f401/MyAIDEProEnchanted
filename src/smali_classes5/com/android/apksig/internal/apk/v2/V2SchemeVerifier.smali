.class public abstract Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;
.super Ljava/lang/Object;


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;II)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/cert/CertificateFactory;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signedData:[B

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_71

    add-int/lit8 v2, v2, 0x1

    :try_start_29
    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-static {v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    iget-object v9, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    new-instance v10, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-direct {v10, v8, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v9

    if-nez v9, :cond_66

    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v10

    invoke-virtual {p2, v7, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_54
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_29 .. :try_end_54} :catch_55
    .catch Ljava/nio/BufferUnderflowException; {:try_start_29 .. :try_end_54} :catch_6f

    goto :goto_21

    :catch_55
    move-exception v3

    :goto_56
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_65
    :goto_65
    return-void

    :cond_66
    :try_start_66
    new-instance v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    invoke-direct {v8, v9, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_66 .. :try_end_6e} :catch_55
    .catch Ljava/nio/BufferUnderflowException; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_21

    :catch_6f
    move-exception v3

    goto :goto_56

    :cond_71
    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_82

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_65

    :cond_82
    :try_start_82
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v4, v0, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getSignaturesToVerify(Ljava/util/List;II)Ljava/util/List;
    :try_end_89
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException; {:try_start_82 .. :try_end_89} :catch_32a

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_118

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    iget-object v8, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    move-result-object v9

    :try_start_b5
    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c1} :catch_10a

    move-result-object v9

    :try_start_c2
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v3, :cond_ce

    invoke-virtual {v2, v3}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_ce
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v5}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    iget-object v3, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;->signature:[B

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_fb

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_e8
    .catch Ljava/security/InvalidKeyException; {:try_start_c2 .. :try_end_e8} :catch_ea
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c2 .. :try_end_e8} :catch_108
    .catch Ljava/security/SignatureException; {:try_start_c2 .. :try_end_e8} :catch_33b

    goto/16 :goto_65

    :catch_ea
    move-exception v2

    :goto_eb
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_fb
    :try_start_fb
    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_107
    .catch Ljava/security/InvalidKeyException; {:try_start_fb .. :try_end_107} :catch_ea
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_fb .. :try_end_107} :catch_108
    .catch Ljava/security/SignatureException; {:try_start_fb .. :try_end_107} :catch_33b

    goto :goto_8e

    :catch_108
    move-exception v2

    goto :goto_eb

    :catch_10a
    move-exception v2

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_118
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v2, -0x1

    :goto_129
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_162

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    :try_start_135
    invoke-static {v7, p1}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;
    :try_end_138
    .catch Ljava/security/cert/CertificateException; {:try_start_135 .. :try_end_138} :catch_144

    move-result-object v8

    new-instance v9, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v9, v8, v7}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    iget-object v7, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_129

    :catch_144
    move-exception v3

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v3, v5, v2

    invoke-virtual {p2, v4, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_162
    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_174

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_174
    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->certs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    :try_start_17d
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B
    :try_end_184
    .catch Ljava/security/InvalidKeyException; {:try_start_17d .. :try_end_184} :catch_1a3

    move-result-object v2

    :goto_185
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1c6

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :catch_1a3
    move-exception v3

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught an exception encoding the public key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    goto :goto_185

    :cond_1c6
    const/4 v2, 0x0

    :goto_1c7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1f8

    add-int/lit8 v2, v2, 0x1

    :try_start_1cf
    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    iget-object v7, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    new-instance v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-direct {v8, v6, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e5
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1cf .. :try_end_1e5} :catch_1e6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1cf .. :try_end_1e5} :catch_338

    goto :goto_1c7

    :catch_1e6
    move-exception v3

    :goto_1e7
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_1f8
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_209
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_221

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->getAlgorithmId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_209

    :cond_221
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_232
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_232

    :cond_24a
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_260

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-virtual {p2, v2, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_260
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_26b
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_2eb

    add-int/lit8 v2, v2, 0x1

    :try_start_273
    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-static {v6}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    iget-object v8, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->additionalAttributes:Ljava/util/List;

    new-instance v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;

    invoke-direct {v9, v7, v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;-><init>(I[B)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v8, -0x41100ff3

    if-eq v7, v8, :cond_2b0

    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-virtual {p2, v6, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_29d
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_273 .. :try_end_29d} :catch_29e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_273 .. :try_end_29d} :catch_2d0

    goto :goto_26b

    :catch_29e
    move-exception v3

    :goto_29f
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :cond_2b0
    :try_start_2b0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    :catch_2d0
    move-exception v3

    goto :goto_29f

    :cond_2d2
    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_UNKNOWN_APK_SIG_SCHEME_ID:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-virtual {p2, v7, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_2ea
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2b0 .. :try_end_2ea} :catch_29e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2b0 .. :try_end_2ea} :catch_2d0

    goto :goto_26b

    :cond_2eb
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2ef
    :goto_2ef
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING_APK_SIG_REFERENCED:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p2, v4, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_2ef

    :catch_32a
    move-exception v2

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_65

    :catch_338
    move-exception v3

    goto/16 :goto_1e7

    :catch_33b
    move-exception v2

    goto/16 :goto_eb
.end method

.method public static parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_3} :catch_55

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    :try_start_15
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_1a} :catch_4c

    move-result-object v2

    const/4 v1, 0x0

    move v9, v1

    :goto_1d
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    iput v9, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->index:I

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_31
    invoke-static {v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;II)V
    :try_end_3e
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_31 .. :try_end_3e} :catch_42
    .catch Ljava/nio/BufferUnderflowException; {:try_start_31 .. :try_end_3e} :catch_61

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1d

    :catch_42
    move-exception v1

    :goto_43
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_14

    :catch_4c
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_55
    move-exception v1

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_14

    :catch_61
    move-exception v1

    goto :goto_43
.end method

.method public static verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    new-instance v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v0, 0x2

    invoke-direct {v9, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v0, 0x7109871a

    invoke-static {p1, p2, v0, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-wide v4, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v4, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->eocdOffset:J

    iget-wide v6, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    sub-long/2addr v4, v6

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v3

    iget-object v4, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    return-object v9
.end method

.method private static verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, p2

    move-object v3, p5

    move-object v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-static/range {v1 .. v7}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    invoke-virtual/range {p9 .. p9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    move-object/from16 v8, p9

    invoke-static/range {v3 .. v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->verifyIntegrity(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    invoke-virtual/range {p9 .. p9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    move-object/from16 v0, p9

    iput-boolean v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->verified:Z

    goto :goto_18
.end method
