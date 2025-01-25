.class public Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final FIRST_VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeSignedData(Ljava/security/cert/X509Certificate;I)[B
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B
    :try_end_21
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v0

    return-object v0

    :catch_23
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encode V3SigningCertificateLineage certificate"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodeSigningCertificateLineage(Ljava/util/List;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;",
            ">;)[B"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->encodeSigningCertificateNode(Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements(Ljava/util/List;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSigningCertificateNode(Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;)[B
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->parentSigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->parentSigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->sigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->sigAlgorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v1

    :cond_15
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-static {v2, v0}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage;->encodeSignedData(Ljava/security/cert/X509Certificate;I)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->signature:[B

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;->flags:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_44
    move v0, v1

    goto :goto_b
.end method

.method public static readSigningCertificateLineage(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v8, " when parsing V3SigningCertificateLineage object"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    :try_start_15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_153

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_21
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_15 .. :try_end_21} :catch_cd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_15 .. :try_end_21} :catch_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_21} :catch_190
    .catch Ljava/security/InvalidKeyException; {:try_start_15 .. :try_end_21} :catch_196
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_15 .. :try_end_21} :catch_198
    .catch Ljava/security/SignatureException; {:try_start_15 .. :try_end_21} :catch_19a
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_21} :catch_18b

    move-object v2, v1

    move v3, v0

    move v4, v0

    :goto_24
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_27
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_24 .. :try_end_27} :catch_cd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_24 .. :try_end_27} :catch_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_27} :catch_14e
    .catch Ljava/security/InvalidKeyException; {:try_start_24 .. :try_end_27} :catch_149
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_24 .. :try_end_27} :catch_144
    .catch Ljava/security/SignatureException; {:try_start_24 .. :try_end_27} :catch_13f
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_27} :catch_19c

    move-result v0

    if-eqz v0, :cond_1b4

    add-int/lit8 v7, v4, 0x1

    :try_start_2c
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v1

    invoke-static {v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_5d
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2c .. :try_end_5d} :catch_cd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2c .. :try_end_5d} :catch_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2c .. :try_end_5d} :catch_13b
    .catch Ljava/security/InvalidKeyException; {:try_start_2c .. :try_end_5d} :catch_137
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2c .. :try_end_5d} :catch_133
    .catch Ljava/security/SignatureException; {:try_start_2c .. :try_end_5d} :catch_12f
    .catch Ljava/security/cert/CertificateException; {:try_start_2c .. :try_end_5d} :catch_1a0

    move-result-object v13

    :try_start_5e
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_6a

    invoke-virtual {v14, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_6a
    invoke-virtual {v14, v12}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v14, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_a9

    :cond_73
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v12}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    if-eqz v2, :cond_82

    if-ne v3, v12, :cond_d6

    :cond_82
    invoke-static {v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    new-instance v1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;

    invoke-static {v12}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v2

    invoke-static {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v3/V3SigningCertificateLineage$SigningCertificateNode;-><init>(Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/SignatureAlgorithm;Lcom/android/apksig/internal/apk/SignatureAlgorithm;[BI)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move v3, v6

    move v4, v7

    goto/16 :goto_24

    :cond_a9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to verify signature of certificate #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when verifying V3SigningCertificateLineage object"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_cd
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_5e .. :try_end_cd} :catch_cd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5e .. :try_end_cd} :catch_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_cd} :catch_110
    .catch Ljava/security/InvalidKeyException; {:try_start_5e .. :try_end_cd} :catch_187
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5e .. :try_end_cd} :catch_183
    .catch Ljava/security/SignatureException; {:try_start_5e .. :try_end_cd} :catch_17f
    .catch Ljava/security/cert/CertificateException; {:try_start_5e .. :try_end_cd} :catch_161

    :catch_cd
    move-exception v0

    :goto_ce
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse V3SigningCertificateLineage object"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d6
    :try_start_d6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signing algorithm ID mismatch for certificate #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when verifying V3SigningCertificateLineage object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f2
    move-exception v0

    goto :goto_ce

    :cond_f4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered duplicate entries in SigningCertificateLineage at certificate #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  All signing certificates should be unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_110
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_d6 .. :try_end_110} :catch_cd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_d6 .. :try_end_110} :catch_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d6 .. :try_end_110} :catch_110
    .catch Ljava/security/InvalidKeyException; {:try_start_d6 .. :try_end_110} :catch_187
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d6 .. :try_end_110} :catch_183
    .catch Ljava/security/SignatureException; {:try_start_d6 .. :try_end_110} :catch_17f
    .catch Ljava/security/cert/CertificateException; {:try_start_d6 .. :try_end_110} :catch_161

    :catch_110
    move-exception v2

    move-object v1, v8

    :goto_112
    move-object v0, v1

    :goto_113
    move-object v3, v0

    move-object v1, v2

    :goto_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify signature over signed data for certificate #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_12f
    move-exception v1

    move-object v0, v8

    move-object v2, v1

    goto :goto_113

    :catch_133
    move-exception v1

    move-object v0, v8

    move-object v2, v1

    goto :goto_113

    :catch_137
    move-exception v1

    move-object v0, v8

    move-object v2, v1

    goto :goto_113

    :catch_13b
    move-exception v1

    move-object v0, v8

    move-object v2, v1

    goto :goto_113

    :catch_13f
    move-exception v1

    move-object v0, v8

    move v7, v4

    move-object v2, v1

    goto :goto_113

    :catch_144
    move-exception v1

    move-object v0, v8

    move v7, v4

    move-object v2, v1

    goto :goto_113

    :catch_149
    move-exception v1

    move-object v0, v8

    move v7, v4

    move-object v2, v1

    goto :goto_113

    :catch_14e
    move-exception v1

    move-object v0, v8

    move v7, v4

    move-object v2, v1

    goto :goto_113

    :cond_153
    const-string v8, " when parsing V3SigningCertificateLineage object"

    :try_start_155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encoded SigningCertificateLineage has a version different than any of which we are aware"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15d
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_155 .. :try_end_15d} :catch_cd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_155 .. :try_end_15d} :catch_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_155 .. :try_end_15d} :catch_15d
    .catch Ljava/security/InvalidKeyException; {:try_start_155 .. :try_end_15d} :catch_1a4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_155 .. :try_end_15d} :catch_1a8
    .catch Ljava/security/SignatureException; {:try_start_155 .. :try_end_15d} :catch_1ac
    .catch Ljava/security/cert/CertificateException; {:try_start_155 .. :try_end_15d} :catch_1b0

    :catch_15d
    move-exception v2

    move-object v1, v8

    move v7, v0

    goto :goto_112

    :catch_161
    move-exception v3

    move-object v1, v8

    move v2, v7

    :goto_164
    move-object v0, v1

    :goto_165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode certificate #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_17f
    move-exception v2

    move-object v1, v8

    :goto_181
    move-object v0, v1

    goto :goto_113

    :catch_183
    move-exception v2

    move-object v1, v8

    :goto_185
    move-object v0, v1

    goto :goto_113

    :catch_187
    move-exception v2

    move-object v1, v8

    :goto_189
    move-object v0, v1

    goto :goto_113

    :catch_18b
    move-exception v3

    move-object v1, v8

    move v2, v0

    :goto_18e
    move-object v0, v1

    goto :goto_165

    :catch_190
    move-exception v1

    :goto_191
    const-string v2, " when parsing V3SigningCertificateLineage object"

    move-object v3, v2

    move v7, v0

    goto :goto_115

    :catch_196
    move-exception v1

    goto :goto_191

    :catch_198
    move-exception v1

    goto :goto_191

    :catch_19a
    move-exception v1

    goto :goto_191

    :catch_19c
    move-exception v3

    move-object v1, v8

    move v2, v4

    goto :goto_18e

    :catch_1a0
    move-exception v3

    move-object v1, v8

    move v2, v7

    goto :goto_18e

    :catch_1a4
    move-exception v2

    move-object v1, v8

    move v7, v0

    goto :goto_189

    :catch_1a8
    move-exception v2

    move-object v1, v8

    move v7, v0

    goto :goto_185

    :catch_1ac
    move-exception v2

    move-object v1, v8

    move v7, v0

    goto :goto_181

    :catch_1b0
    move-exception v3

    move-object v1, v8

    move v2, v0

    goto :goto_164

    :cond_1b4
    move-object v1, v9

    goto/16 :goto_11
.end method
