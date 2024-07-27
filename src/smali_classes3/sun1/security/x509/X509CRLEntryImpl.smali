.class public Lsun1/security/x509/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/security/cert/X509CRLEntry;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun1/security/x509/X509CRLEntryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private certIssuer:Ljavax/security/auth/x500/X500Principal;

.field private extensions:Lsun1/security/x509/CRLExtensions;

.field private revocationDate:Ljava/util/Date;

.field private revokedCert:[B

.field private serialNumber:Lsun1/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->serialNumber:Lsun1/security/x509/SerialNumber;

    iput-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    iput-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    iput-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    :try_start_0
    invoke-direct {p0, p1}, Lsun1/security/x509/X509CRLEntryImpl;->parse(Lsun1/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEncoded0()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v0, :cond_0

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CRLEntryImpl;->encode(Lsun1/security/util/DerOutputStream;)V

    :cond_0
    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    return-object v0
.end method

.method private parse(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    new-instance v0, Lsun1/security/x509/SerialNumber;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/SerialNumber;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->serialNumber:Lsun1/security/x509/SerialNumber;

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lsun1/security/x509/CRLExtensions;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/CRLExtensions;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Invalid encoding for revocation date"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "No data encoded for RevokedCertificates"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Invalid encoded RevokedCertificate, starting sequence tag missing."

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lsun1/security/x509/X509CRLEntryImpl;

    invoke-virtual {p0, p1}, Lsun1/security/x509/X509CRLEntryImpl;->compareTo(Lsun1/security/x509/X509CRLEntryImpl;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun1/security/x509/X509CRLEntryImpl;)I
    .registers 7

    invoke-virtual {p0}, Lsun1/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lsun1/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsun1/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v1

    invoke-direct {p1}, Lsun1/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    array-length v3, v2

    if-lt v0, v3, :cond_2

    :cond_1
    array-length v0, v1

    array-length v1, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    if-eq v3, v4, :cond_3

    sub-int v0, v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v0, :cond_1

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->serialNumber:Lsun1/security/x509/SerialNumber;

    invoke-virtual {v1, v0}, Lsun1/security/x509/SerialNumber;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide v4, 0x24bd0146400L

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    :goto_0
    iget-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lsun1/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    :cond_0
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    :cond_1
    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->revokedCert:[B

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    return-void

    :cond_2
    iget-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoding error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method getCertificateIssuerExtension()Lsun1/security/x509/CertificateIssuerExtension;
    .registers 2

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CRLEntryImpl;->getExtension(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateIssuerExtension;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtension(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/x509/Extension;
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lsun1/security/x509/OIDMap;->getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun1/security/x509/Extension;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsun1/security/x509/OIDMap;->getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v2, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v2, p1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionValue()[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v2, v0}, Lsun1/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun1/security/x509/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->serialNumber:Lsun1/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun1/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    goto :goto_0
.end method

.method setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V
    .registers 4

    invoke-virtual {p1, p2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lsun1/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->serialNumber:Lsun1/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun1/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  On: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n    Certificate issuer: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lsun1/security/x509/X509CRLEntryImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    new-array v2, v1, [Lsun1/security/x509/Extension;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun1/security/x509/Extension;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\n    CRL Entry Extensions: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_2

    :cond_1
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "\n    ["

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    :try_start_0
    invoke-virtual {v1}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lsun1/security/x509/OIDMap;->getClass(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->getExtensionValue()[B

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v4, v1}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v4}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v4, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v4}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Extension unknown: DER encoded OCTET string =\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, ", Error parsing this extension"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
