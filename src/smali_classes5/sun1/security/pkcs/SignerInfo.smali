.class public Lsun1/security/pkcs/SignerInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/util/DerEncoder;


# static fields
.field private static final DIGEST_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun1/security/util/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAR_DISABLED_CHECK:Lsun1/security/util/DisabledAlgorithmConstraints;

.field private static final SIG_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun1/security/util/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final debug:Lsun1/security/util/Debug;


# instance fields
.field authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

.field certificateSerialNumber:Ljava/math/BigInteger;

.field digestAlgorithmId:Lsun1/security/x509/AlgorithmId;

.field digestEncryptionAlgorithmId:Lsun1/security/x509/AlgorithmId;

.field encryptedDigest:[B

.field private hasTimestamp:Z

.field issuerName:Lsun1/security/x509/X500Name;

.field unauthenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

.field version:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lsun1/security/util/CryptoPrimitive;->MESSAGE_DIGEST:Lsun1/security/util/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    sget-object v0, Lsun1/security/util/CryptoPrimitive;->SIGNATURE:Lsun1/security/util/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    new-instance v0, Lsun1/security/util/DisabledAlgorithmConstraints;

    const-string v1, "jdk.jar.disabledAlgorithms"

    invoke-direct {v0, v1}, Lsun1/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun1/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun1/security/util/DisabledAlgorithmConstraints;

    const-string v0, "jar"

    invoke-static {v0}, Lsun1/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun1/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun1/security/pkcs/SignerInfo;->debug:Lsun1/security/util/Debug;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun1/security/pkcs/SignerInfo;-><init>(Lsun1/security/util/DerInputStream;Z)V

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lsun1/security/pkcs/SignerInfo;->hasTimestamp:Z

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    new-instance v1, Lsun1/security/x509/X500Name;

    new-instance v2, Lsun1/security/util/DerValue;

    const/16 v3, 0x30

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun1/security/util/DerValue;-><init>(B[B)V

    invoke-direct {v1, v2}, Lsun1/security/x509/X500Name;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/pkcs/SignerInfo;->issuerName:Lsun1/security/x509/X500Name;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun1/security/x509/AlgorithmId;

    if-eqz p2, :cond_59

    invoke-virtual {p1, v5}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->encryptedDigest:[B

    if-eqz p2, :cond_6a

    invoke-virtual {p1, v5}, Lsun1/security/util/DerInputStream;->getSet(I)[Lsun1/security/util/DerValue;

    :cond_52
    :goto_52
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_81

    return-void

    :cond_59
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    const/16 v1, -0x60

    if-ne v0, v1, :cond_3d

    new-instance v0, Lsun1/security/pkcs/PKCS9Attributes;

    invoke-direct {v0, p1}, Lsun1/security/pkcs/PKCS9Attributes;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    goto :goto_3d

    :cond_6a
    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    const/16 v1, -0x5f

    if-ne v0, v1, :cond_52

    new-instance v0, Lsun1/security/pkcs/PKCS9Attributes;

    invoke-direct {v0, p1, v6}, Lsun1/security/pkcs/PKCS9Attributes;-><init>(Lsun1/security/util/DerInputStream;Z)V

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    goto :goto_52

    :cond_81
    new-instance v0, Lsun1/security/pkcs/ParsingException;

    const-string v1, "extra data at the end"

    invoke-direct {v0, v1}, Lsun1/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/x509/X500Name;Ljava/math/BigInteger;Lsun1/security/x509/AlgorithmId;Lsun1/security/x509/AlgorithmId;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/pkcs/SignerInfo;->hasTimestamp:Z

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun1/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    iput-object p1, p0, Lsun1/security/pkcs/SignerInfo;->issuerName:Lsun1/security/x509/X500Name;

    iput-object p2, p0, Lsun1/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iput-object p3, p0, Lsun1/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun1/security/x509/AlgorithmId;

    iput-object p4, p0, Lsun1/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun1/security/x509/AlgorithmId;

    iput-object p5, p0, Lsun1/security/pkcs/SignerInfo;->encryptedDigest:[B

    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x30

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->issuerName:Lsun1/security/x509/X500Name;

    invoke-virtual {v2, v1}, Lsun1/security/x509/X500Name;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v3, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    if-eqz v1, :cond_2c

    const/16 v2, -0x60

    invoke-virtual {v1, v2, v0}, Lsun1/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    :cond_2c
    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    if-eqz v1, :cond_3f

    const/16 v2, -0x5f

    invoke-virtual {v1, v2, v0}, Lsun1/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    :cond_3f
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v3, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getCertificate(Lsun1/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->issuerName:Lsun1/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun1/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun1/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Lsun1/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun1/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->issuerName:Lsun1/security/x509/X500Name;

    invoke-virtual {p1, v0, v2}, Lsun1/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun1/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lsun1/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    move v0, v1

    :cond_2e
    move v3, v0

    :goto_2f
    array-length v6, v5

    if-lt v3, v6, :cond_37

    move v3, v1

    :goto_33
    if-nez v3, :cond_2e

    :cond_35
    move-object v0, v4

    goto :goto_c

    :cond_37
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    aget-object v6, v5, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    array-length v0, v5

    :goto_5b
    const/4 v3, 0x1

    goto :goto_33

    :cond_5d
    aget-object v2, v5, v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    aget-object v6, v5, v0

    aget-object v7, v5, v3

    aput-object v7, v5, v0

    aput-object v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f
.end method

.method public getDigestAlgorithmId()Lsun1/security/x509/AlgorithmId;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun1/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmId()Lsun1/security/x509/AlgorithmId;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun1/security/x509/AlgorithmId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Signer Info for (issuer): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->issuerName:Lsun1/security/x509/X500Name;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tversion: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-static {v0}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\tcertificateSerialNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-static {v2}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tdigestAlgorithmId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_9f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tauthenticatedAttributes: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tdigestEncryptionAlgorithmId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\tencryptedDigest: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v1, v2}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    if-eqz v1, :cond_fb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tunauthenticatedAttributes: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_fb
    return-object v0
.end method

.method verify(Lsun1/security/pkcs/PKCS7;[B)Lsun1/security/pkcs/SignerInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Lsun1/security/pkcs/PKCS7;->getContentInfo()Lsun1/security/pkcs/ContentInfo;

    move-result-object v3

    if-nez p2, :cond_17a

    invoke-virtual {v3}, Lsun1/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v2

    :goto_b
    invoke-virtual {p0}, Lsun1/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    if-nez v0, :cond_41

    move-object v3, v2

    :goto_18
    invoke-virtual {p0}, Lsun1/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun1/security/x509/AlgorithmId;->getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_174

    :goto_26
    invoke-static {v4, v0}, Lsun1/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsun1/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun1/security/util/DisabledAlgorithmConstraints;

    sget-object v4, Lsun1/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v5}, Lsun1/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-virtual {p0, p1}, Lsun1/security/pkcs/SignerInfo;->getCertificate(Lsun1/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    if-nez v5, :cond_8c

    move-object p0, v1

    :cond_40
    :goto_40
    return-object p0

    :cond_41
    sget-object v5, Lsun1/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v5}, Lsun1/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/ObjectIdentifier;

    if-eqz v0, :cond_177

    iget-object v3, v3, Lsun1/security/pkcs/ContentInfo;->contentType:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    move-object p0, v1

    goto :goto_40

    :cond_55
    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    sget-object v3, Lsun1/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Lsun1/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_63

    move-object p0, v1

    goto :goto_40

    :cond_63
    sget-object v3, Lsun1/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun1/security/util/DisabledAlgorithmConstraints;

    sget-object v5, Lsun1/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lsun1/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    if-eqz v3, :cond_160

    invoke-static {v4}, Lsun1/security/x509/AlgorithmId;->getStandardDigestName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    array-length v2, v0

    array-length v5, v3

    if-eq v2, v5, :cond_80

    move-object p0, v1

    goto :goto_40

    :cond_80
    const/4 v2, 0x0

    :goto_81
    array-length v5, v0

    if-lt v2, v5, :cond_153

    iget-object v0, p0, Lsun1/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun1/security/pkcs/PKCS9Attributes;

    invoke-virtual {v0}, Lsun1/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    move-result-object v0

    move-object v3, v0

    goto :goto_18

    :cond_8c
    invoke-virtual {v2, v4, v6}, Lsun1/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_11b

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v2

    if-nez v2, :cond_113

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9b} :catch_d8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_9b} :catch_fa

    move-result-object v2

    if-eqz v2, :cond_bb

    :try_start_9e
    new-instance v4, Lsun1/security/x509/KeyUsageExtension;

    invoke-direct {v4, v2}, Lsun1/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a3} :catch_f1
    .catch Ljava/security/InvalidKeyException; {:try_start_9e .. :try_end_a3} :catch_fa

    :try_start_a3
    const-string v2, "digital_signature"

    invoke-virtual {v4, v2}, Lsun1/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v5, "non_repudiation"

    invoke-virtual {v4, v5}, Lsun1/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v2, :cond_bb

    if-eqz v4, :cond_d0

    :cond_bb
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v3}, Ljava/security/Signature;->update([B)V

    iget-object v2, p0, Lsun1/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_40

    move-object p0, v1

    goto/16 :goto_40

    :cond_d0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Key usage restricted: cannot be used for digital signatures"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_d8} :catch_d8
    .catch Ljava/security/InvalidKeyException; {:try_start_a3 .. :try_end_d8} :catch_fa

    :catch_d8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error verifying signature:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f1
    move-exception v0

    :try_start_f2
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Failed to parse keyUsage extension"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_d8
    .catch Ljava/security/InvalidKeyException; {:try_start_f2 .. :try_end_fa} :catch_fa

    :catch_fa
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InvalidKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_113
    :try_start_113
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Certificate has unsupported critical extension(s)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11b
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Public key check failed. Disabled key used: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lsun1/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13f
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Signature check failed. Disabled algorithm used: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_153} :catch_d8
    .catch Ljava/security/InvalidKeyException; {:try_start_113 .. :try_end_153} :catch_fa

    :cond_153
    aget-byte v5, v0, v2

    aget-byte v6, v3, v2

    if-eq v5, v6, :cond_15c

    move-object p0, v1

    goto/16 :goto_40

    :cond_15c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_81

    :cond_160
    :try_start_160
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Digest check failed. Disabled algorithm used: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_174} :catch_d8
    .catch Ljava/security/InvalidKeyException; {:try_start_160 .. :try_end_174} :catch_fa

    :cond_174
    move-object v0, v2

    goto/16 :goto_26

    :cond_177
    move-object p0, v1

    goto/16 :goto_40

    :cond_17a
    move-object v2, p2

    goto/16 :goto_b
.end method
