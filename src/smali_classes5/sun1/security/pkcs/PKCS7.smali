.class public Lsun1/security/pkcs/PKCS7;
.super Ljava/lang/Object;


# instance fields
.field private certIssuerNames:[Ljava/security/Principal;

.field private certificates:[Ljava/security/cert/X509Certificate;

.field private contentInfo:Lsun1/security/pkcs/ContentInfo;

.field private contentType:Lsun1/security/util/ObjectIdentifier;

.field private crls:[Ljava/security/cert/X509CRL;

.field private digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

.field private oldStyle:Z

.field private signerInfos:[Lsun1/security/pkcs/SignerInfo;

.field private version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/pkcs/PKCS7;->oldStyle:Z

    :try_start_13
    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lsun1/security/pkcs/PKCS7;->parse(Lsun1/security/util/DerInputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    new-instance v1, Lsun1/security/pkcs/ParsingException;

    const-string v2, "Unable to parse the encoded bytes"

    invoke-direct {v1, v2}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public constructor <init>([Lsun1/security/x509/AlgorithmId;Lsun1/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun1/security/pkcs/SignerInfo;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/pkcs/PKCS7;->oldStyle:Z

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object p1, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    iput-object p2, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    iput-object p3, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    return-void
.end method

.method private parse(Lsun1/security/util/DerInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun1/security/util/DerInputStream;->mark(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun1/security/pkcs/PKCS7;->parse(Lsun1/security/util/DerInputStream;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    :try_start_d
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->reset()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun1/security/pkcs/PKCS7;->parse(Lsun1/security/util/DerInputStream;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_b

    :catch_18
    move-exception v0

    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private parse(Lsun1/security/util/DerInputStream;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v0, p1, p2}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/DerInputStream;Z)V

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    iget-object v0, v0, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentType:Lsun1/security/util/ObjectIdentifier;

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    invoke-virtual {v0}, Lsun1/security/pkcs/ContentInfo;->getContent()Lsun1/security/util/DerValue;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->contentType:Lsun1/security/util/ObjectIdentifier;

    sget-object v2, Lsun1/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0, v0}, Lsun1/security/pkcs/PKCS7;->parseSignedData(Lsun1/security/util/DerValue;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->contentType:Lsun1/security/util/ObjectIdentifier;

    sget-object v2, Lsun1/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, v0}, Lsun1/security/pkcs/PKCS7;->parseOldSignedData(Lsun1/security/util/DerValue;)V

    goto :goto_1e

    :cond_2d
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->contentType:Lsun1/security/util/ObjectIdentifier;

    sget-object v2, Lsun1/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, v0}, Lsun1/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun1/security/util/DerValue;)V

    goto :goto_1e

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->contentType:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNetscapeCertChain(Lsun1/security/util/DerValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun1/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v5

    array-length v0, v5

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    :try_start_14
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_14 .. :try_end_19} :catch_21

    move-result-object v0

    move-object v1, v0

    :goto_1b
    const/4 v0, 0x0

    move v3, v0

    :goto_1d
    array-length v0, v5

    if-lt v3, v0, :cond_24

    return-void

    :catch_21
    move-exception v0

    move-object v1, v2

    goto :goto_1b

    :cond_24
    if-nez v1, :cond_35

    :try_start_26
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v4, Lsun1/security/x509/X509CertImpl;

    aget-object v6, v5, v3

    invoke-direct {v4, v6}, Lsun1/security/x509/X509CertImpl;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v4, v0, v3

    :goto_31
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_35
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v0, v5, v3

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_40
    .catch Ljava/security/cert/CertificateException; {:try_start_26 .. :try_end_40} :catch_76
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_40} :catch_79
    .catchall {:try_start_26 .. :try_end_40} :catchall_74

    :try_start_40
    iget-object v6, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v6, v3

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4d
    .catch Ljava/security/cert/CertificateException; {:try_start_40 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4d} :catch_65
    .catchall {:try_start_40 .. :try_end_4d} :catchall_7b

    goto :goto_31

    :catch_4e
    move-exception v0

    :goto_4f
    :try_start_4f
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    move-object v2, v4

    :goto_5e
    move-object v4, v2

    :goto_5f
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_64
    throw v0

    :catch_65
    move-exception v0

    move-object v2, v4

    :goto_67
    :try_start_67
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    goto :goto_5e

    :catch_76
    move-exception v0

    move-object v4, v2

    goto :goto_4f

    :catch_79
    move-exception v0

    goto :goto_67

    :catchall_7b
    move-exception v0

    goto :goto_5f
.end method

.method private parseOldSignedData(Lsun1/security/util/DerValue;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun1/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lsun1/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    array-length v3, v1

    new-array v0, v3, [Lsun1/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    move v0, v5

    :goto_17
    if-lt v0, v3, :cond_ad

    new-instance v0, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v0, v6, v10}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/DerInputStream;Z)V

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    :try_start_20
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_20 .. :try_end_25} :catch_43

    move-result-object v0

    move-object v1, v0

    :goto_27
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v7

    array-length v8, v7

    new-array v0, v8, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move v4, v5

    :goto_32
    if-lt v4, v8, :cond_58

    invoke-virtual {v6, v5}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    invoke-virtual {v6, v10}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lsun1/security/pkcs/SignerInfo;

    iput-object v2, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    :goto_40
    if-lt v5, v1, :cond_46

    return-void

    :catch_43
    move-exception v0

    move-object v1, v2

    goto :goto_27

    :cond_46
    aget-object v2, v0, v5

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v2

    iget-object v3, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    new-instance v4, Lsun1/security/pkcs/SignerInfo;

    invoke-direct {v4, v2, v10}, Lsun1/security/pkcs/SignerInfo;-><init>(Lsun1/security/util/DerInputStream;Z)V

    aput-object v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_58
    if-nez v1, :cond_69

    :try_start_5a
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v3, Lsun1/security/x509/X509CertImpl;

    aget-object v9, v7, v4

    invoke-direct {v3, v9}, Lsun1/security/x509/X509CertImpl;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v3, v0, v4

    :goto_65
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_32

    :cond_69
    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v0, v7, v4

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_74
    .catch Ljava/security/cert/CertificateException; {:try_start_5a .. :try_end_74} :catch_aa
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_74} :catch_c4
    .catchall {:try_start_5a .. :try_end_74} :catchall_a8

    :try_start_74
    iget-object v9, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v9, v4

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_81
    .catch Ljava/security/cert/CertificateException; {:try_start_74 .. :try_end_81} :catch_82
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_81} :catch_99
    .catchall {:try_start_74 .. :try_end_81} :catchall_c6

    goto :goto_65

    :catch_82
    move-exception v0

    :goto_83
    :try_start_83
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v0

    move-object v2, v3

    :goto_92
    move-object v3, v2

    :goto_93
    if-eqz v3, :cond_98

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_98
    throw v0

    :catch_99
    move-exception v0

    move-object v2, v3

    :goto_9b
    :try_start_9b
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_a8
    .catchall {:try_start_9b .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v0

    goto :goto_92

    :catch_aa
    move-exception v0

    move-object v3, v2

    goto :goto_83

    :cond_ad
    aget-object v4, v1, v0

    :try_start_af
    iget-object v7, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    invoke-static {v4}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v4

    aput-object v4, v7, v0
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b7} :catch_bb

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17

    :catch_bb
    move-exception v0

    new-instance v0, Lsun1/security/pkcs/ParsingException;

    const-string v1, "Error parsing digest AlgorithmId IDs"

    invoke-direct {v0, v1}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_c4
    move-exception v0

    goto :goto_9b

    :catchall_c6
    move-exception v0

    goto :goto_93
.end method

.method private parseSignedData(Lsun1/security/util/DerValue;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun1/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lsun1/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    array-length v3, v1

    new-array v0, v3, [Lsun1/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    move v0, v4

    :goto_17
    if-lt v0, v3, :cond_10b

    new-instance v0, Lsun1/security/pkcs/ContentInfo;

    invoke-direct {v0, v6}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    :try_start_20
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_20 .. :try_end_25} :catch_5f

    move-result-object v0

    move-object v1, v0

    :goto_27
    invoke-virtual {v6}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    const/16 v3, -0x60

    if-ne v0, v3, :cond_3d

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v10}, Lsun1/security/util/DerInputStream;->getSet(IZ)[Lsun1/security/util/DerValue;

    move-result-object v7

    array-length v8, v7

    new-array v0, v8, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move v5, v4

    :goto_3b
    if-lt v5, v8, :cond_62

    :cond_3d
    invoke-virtual {v6}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    const/16 v3, -0x5f

    if-ne v0, v3, :cond_52

    invoke-virtual {v6, v10, v10}, Lsun1/security/util/DerInputStream;->getSet(IZ)[Lsun1/security/util/DerValue;

    move-result-object v7

    array-length v8, v7

    new-array v0, v8, [Ljava/security/cert/X509CRL;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move v5, v4

    :goto_50
    if-lt v5, v8, :cond_b7

    :cond_52
    invoke-virtual {v6, v10}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    array-length v2, v1

    new-array v0, v2, [Lsun1/security/pkcs/SignerInfo;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    move v0, v4

    :goto_5c
    if-lt v0, v2, :cond_f8

    return-void

    :catch_5f
    move-exception v0

    move-object v1, v2

    goto :goto_27

    :cond_62
    if-nez v1, :cond_73

    :try_start_64
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v3, Lsun1/security/x509/X509CertImpl;

    aget-object v9, v7, v5

    invoke-direct {v3, v9}, Lsun1/security/x509/X509CertImpl;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v3, v0, v5

    :goto_6f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3b

    :cond_73
    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v0, v7, v5

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7e
    .catch Ljava/security/cert/CertificateException; {:try_start_64 .. :try_end_7e} :catch_b4
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7e} :catch_139
    .catchall {:try_start_64 .. :try_end_7e} :catchall_b2

    :try_start_7e
    iget-object v9, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v9, v5

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8b
    .catch Ljava/security/cert/CertificateException; {:try_start_7e .. :try_end_8b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_8b} :catch_a3
    .catchall {:try_start_7e .. :try_end_8b} :catchall_13c

    goto :goto_6f

    :catch_8c
    move-exception v0

    :goto_8d
    :try_start_8d
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_9a
    .catchall {:try_start_8d .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    move-object v2, v3

    :goto_9c
    move-object v3, v2

    :goto_9d
    if-eqz v3, :cond_a2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_a2
    throw v0

    :catch_a3
    move-exception v0

    move-object v2, v3

    :goto_a5
    :try_start_a5
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_b2
    .catchall {:try_start_a5 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v0

    goto :goto_9c

    :catch_b4
    move-exception v0

    move-object v3, v2

    goto :goto_8d

    :cond_b7
    if-nez v1, :cond_c8

    :try_start_b9
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    new-instance v3, Lsun1/security/x509/X509CRLImpl;

    aget-object v9, v7, v5

    invoke-direct {v3, v9}, Lsun1/security/x509/X509CRLImpl;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v3, v0, v5

    :goto_c4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_50

    :cond_c8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v0, v7, v5

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d3
    .catch Ljava/security/cert/CRLException; {:try_start_b9 .. :try_end_d3} :catch_135
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_f0

    :try_start_d3
    iget-object v9, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    aput-object v0, v9, v5

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e0
    .catch Ljava/security/cert/CRLException; {:try_start_d3 .. :try_end_e0} :catch_e1
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_137

    goto :goto_c4

    :catch_e1
    move-exception v0

    move-object v2, v3

    :goto_e3
    :try_start_e3
    new-instance v1, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v0}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_f0
    .catchall {:try_start_e3 .. :try_end_f0} :catchall_f0

    :catchall_f0
    move-exception v0

    move-object v3, v2

    :goto_f2
    if-eqz v3, :cond_f7

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_f7
    throw v0

    :cond_f8
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v3

    iget-object v4, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    new-instance v5, Lsun1/security/pkcs/SignerInfo;

    invoke-direct {v5, v3}, Lsun1/security/pkcs/SignerInfo;-><init>(Lsun1/security/util/DerInputStream;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5c

    :cond_10b
    aget-object v5, v1, v0

    :try_start_10d
    iget-object v7, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    invoke-static {v5}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v5

    aput-object v5, v7, v0
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_115} :catch_119

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17

    :catch_119
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing digest AlgorithmId IDs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lsun1/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lsun1/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_135
    move-exception v0

    goto :goto_e3

    :catchall_137
    move-exception v0

    goto :goto_f2

    :catch_139
    move-exception v0

    goto/16 :goto_a5

    :catchall_13c
    move-exception v0

    goto/16 :goto_9d
.end method

.method private populateCertIssuerNames()V
    .registers 5

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    array-length v0, v0

    new-array v0, v0, [Ljava/security/Principal;

    iput-object v0, p0, Lsun1/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v0

    if-ge v2, v1, :cond_4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    instance-of v3, v1, Lsun1/security/x509/X500Name;

    if-nez v3, :cond_37

    :try_start_1b
    new-instance v3, Lsun1/security/x509/X509CertInfo;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lsun1/security/x509/X509CertInfo;-><init>([B)V

    const-string v0, "issuer.dname"

    invoke-virtual {v3, v0}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_34

    :goto_2c
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :catch_34
    move-exception v0

    move-object v0, v1

    goto :goto_2c

    :cond_37
    move-object v0, v1

    goto :goto_2c
.end method


# virtual methods
.method public encodeSignedData(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/pkcs/PKCS7;->encodeSignedData(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public encodeSignedData(Lsun1/security/util/DerOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x31

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lsun1/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v2, v5, v0}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    invoke-virtual {v0, v2}, Lsun1/security/pkcs/ContentInfo;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2c

    array-length v1, v0

    if-eqz v1, :cond_2c

    array-length v0, v0

    new-array v3, v0, [Lsun1/security/x509/X509CertImpl;

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v4, v0

    if-lt v1, v4, :cond_47

    const/16 v0, -0x60

    invoke-virtual {v2, v0, v3}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    :cond_2c
    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    invoke-virtual {v2, v5, v0}, Lsun1/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun1/security/util/DerEncoder;)V

    new-instance v0, Lsun1/security/util/DerValue;

    const/16 v1, 0x30

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun1/security/util/DerValue;-><init>(B[B)V

    new-instance v1, Lsun1/security/pkcs/ContentInfo;

    sget-object v2, Lsun1/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lsun1/security/pkcs/ContentInfo;-><init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V

    invoke-virtual {v1, p1}, Lsun1/security/pkcs/ContentInfo;->encode(Lsun1/security/util/DerOutputStream;)V

    return-void

    :cond_47
    aget-object v4, v0, v1

    instance-of v4, v4, Lsun1/security/x509/X509CertImpl;

    if-eqz v4, :cond_57

    aget-object v0, v0, v1

    check-cast v0, Lsun1/security/x509/X509CertImpl;

    aput-object v0, v3, v1

    :goto_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    :cond_57
    :try_start_57
    new-instance v0, Lsun1/security/x509/X509CertImpl;

    iget-object v4, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lsun1/security/x509/X509CertImpl;-><init>([B)V

    aput-object v0, v3, v1
    :try_end_66
    .catch Ljava/security/cert/CertificateException; {:try_start_57 .. :try_end_66} :catch_67

    goto :goto_53

    :catch_67
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCertificate(Ljava/math/BigInteger;Lsun1/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .registers 6

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lsun1/security/pkcs/PKCS7;->populateCertIssuerNames()V

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v1

    if-lt v0, v2, :cond_13

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lsun1/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Lsun1/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2c
    move-object v0, v1

    goto :goto_12
.end method

.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getContentInfo()Lsun1/security/pkcs/ContentInfo;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public getSignerInfos()[Lsun1/security/pkcs/SignerInfo;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->contentInfo:Lsun1/security/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PKCS7 :: version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-static {v0}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3e
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    if-eqz v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_55
    iget-object v3, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    array-length v3, v3

    if-lt v1, v3, :cond_ae

    :cond_5a
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_76

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PKCS7 :: certificates: \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_71
    iget-object v3, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-lt v1, v3, :cond_cf

    :cond_76
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v1, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PKCS7 :: crls: \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_8d
    iget-object v3, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v3, v3

    if-lt v1, v3, :cond_f9

    :cond_92
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    if-eqz v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PKCS7 :: signer infos: \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a8
    iget-object v1, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    array-length v1, v1

    if-lt v2, v1, :cond_123

    :cond_ad
    return-object v0

    :cond_ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun1/security/x509/AlgorithmId;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".   "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_71

    :cond_f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".   "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8d

    :cond_123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/PKCS7;->signerInfos:[Lsun1/security/pkcs/SignerInfo;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a8
.end method

.method public verify(Lsun1/security/pkcs/SignerInfo;[B)Lsun1/security/pkcs/SignerInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lsun1/security/pkcs/SignerInfo;->verify(Lsun1/security/pkcs/PKCS7;[B)Lsun1/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method
