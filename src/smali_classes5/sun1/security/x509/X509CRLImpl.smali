.class public Lsun1/security/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;
    }
.end annotation


# instance fields
.field private extensions:Lsun1/security/x509/CRLExtensions;

.field private infoSigAlgId:Lsun1/security/x509/AlgorithmId;

.field private issuer:Lsun1/security/x509/X500Name;

.field private issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private nextUpdate:Ljava/util/Date;

.field private readOnly:Z

.field private revokedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private revokedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private sigAlgId:Lsun1/security/x509/AlgorithmId;

.field private signature:[B

.field private signedCRL:[B

.field private tbsCertList:[B

.field private thisUpdate:Ljava/util/Date;

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;

.field private version:I


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->signedCRL:[B

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->tbsCertList:[B

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/X509CRLImpl;->readOnly:Z

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->signedCRL:[B

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->tbsCertList:[B

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/X509CRLImpl;->readOnly:Z

    :try_start_27
    invoke-direct {p0, p1}, Lsun1/security/x509/X509CRLImpl;->parse(Lsun1/security/util/DerValue;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v0

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->signedCRL:[B

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCertIssuer(Lsun1/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun1/security/x509/X509CRLEntryImpl;->getCertificateIssuerExtension()Lsun1/security/x509/CertificateIssuerExtension;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "issuer"

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificateIssuerExtension;->get(Ljava/lang/String;)Lsun1/security/x509/GeneralNames;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun1/security/x509/GeneralNames;->get(I)Lsun1/security/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/x509/GeneralName;->getName()Lsun1/security/x509/GeneralNameInterface;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/X500Name;

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    :cond_1b
    return-object p2
.end method

.method private parse(Lsun1/security/util/DerValue;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x17

    const/16 v5, 0x30

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lsun1/security/x509/X509CRLImpl;->readOnly:Z

    if-nez v0, :cond_1a9

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getData()Lsun1/security/util/DerInputStream;

    move-result-object v0

    if-eqz v0, :cond_1a1

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v5, :cond_1a1

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->signedCRL:[B

    const/4 v0, 0x3

    new-array v0, v0, [Lsun1/security/util/DerValue;

    iget-object v2, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v2, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v2, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_187

    aget-object v2, v0, v1

    iget-byte v2, v2, Lsun1/security/util/DerValue;->tag:B

    if-ne v2, v5, :cond_17f

    aget-object v2, v0, v9

    invoke-static {v2}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->getBitString()[B

    move-result-object v2

    iput-object v2, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    aget-object v2, v0, v9

    iget-object v2, v2, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_177

    aget-object v2, v0, v3

    iget-object v2, v2, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_16f

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun1/security/x509/X509CRLImpl;->tbsCertList:[B

    aget-object v0, v0, v1

    iget-object v4, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    iput v1, p0, Lsun1/security/x509/X509CRLImpl;->version:I

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    if-ne v0, v3, :cond_85

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getInteger()I

    move-result v0

    iput v0, p0, Lsun1/security/x509/X509CRLImpl;->version:I

    if-ne v0, v9, :cond_b8

    :cond_85
    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    iget-object v2, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0, v2}, Lsun1/security/x509/AlgorithmId;->equals(Lsun1/security/x509/AlgorithmId;)Z

    move-result v2

    if-eqz v2, :cond_167

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->infoSigAlgId:Lsun1/security/x509/AlgorithmId;

    new-instance v0, Lsun1/security/x509/X500Name;

    invoke-direct {v0, v4}, Lsun1/security/x509/X500Name;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    if-ne v0, v6, :cond_c0

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v0

    :goto_af
    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_c9

    :cond_b7
    :goto_b7
    return-void

    :cond_b8
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c0
    const/16 v2, 0x18

    if-ne v0, v2, :cond_146

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_af

    :cond_c9
    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    if-ne v0, v6, :cond_119

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v0

    :goto_d4
    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    :cond_d6
    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_b7

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->peekByte()I

    move-result v0

    int-to-byte v0, v0

    if-ne v0, v5, :cond_f7

    and-int/lit16 v0, v0, 0xc0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_f7

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v5

    invoke-virtual {p0}, Lsun1/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    move v0, v1

    move-object v2, v3

    :goto_f4
    array-length v6, v5

    if-lt v0, v6, :cond_122

    :cond_f7
    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_b7

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_116

    new-instance v1, Lsun1/security/x509/CRLExtensions;

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun1/security/x509/CRLExtensions;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    :cond_116
    iput-boolean v9, p0, Lsun1/security/x509/X509CRLImpl;->readOnly:Z

    goto :goto_b7

    :cond_119
    const/16 v2, 0x18

    if-ne v0, v2, :cond_d6

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_d4

    :cond_122
    new-instance v6, Lsun1/security/x509/X509CRLEntryImpl;

    aget-object v7, v5, v0

    invoke-direct {v6, v7}, Lsun1/security/x509/X509CRLEntryImpl;-><init>(Lsun1/security/util/DerValue;)V

    invoke-direct {p0, v6, v2}, Lsun1/security/x509/X509CRLImpl;->getCertIssuer(Lsun1/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Lsun1/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    new-instance v7, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-virtual {v6}, Lsun1/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    iget-object v8, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    :cond_146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid encoding for thisUpdate (tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15f
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Empty issuer DN not allowed in X509CRLs"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_167
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Signature algorithm mismatch"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16f
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Signature field overrun"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_177
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "AlgorithmId field overrun"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17f
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "signed CRL fields invalid"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signed overrun, bytes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a1
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Invalid DER-encoded CRL data"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a9
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "cannot over-write existing CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_33
    move-object v0, v1

    goto :goto_5
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->signedCRL:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Null CRL to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsun1/security/x509/OIDMap;->getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4a

    new-instance v2, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v2, p1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_39

    move-object v0, v1

    :goto_24
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionValue()[B

    move-result-object v0

    if-eqz v0, :cond_54

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_6

    :cond_39
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_24

    :cond_4a
    iget-object v2, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v2, v0}, Lsun1/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun1/security/x509/Extension;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4f} :catch_51

    move-result-object v0

    goto :goto_24

    :catch_51
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :cond_54
    move-object v0, v1

    goto :goto_6
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_c

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    :cond_c
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 5

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_5
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

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_33
    move-object v0, v1

    goto :goto_5
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-virtual {p0}, Lsun1/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    goto :goto_9
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v0, p1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    goto :goto_9
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSigAlgParams()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_4
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_5
.end method

.method public getTBSCertList()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->tbsCertList:[B

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_b
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Uninitialized CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lsun1/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    goto :goto_5
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    new-instance v0, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-direct {v0, p1}, Lsun1/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X.509 CRL v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsun1/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signature Algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun1/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", OID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun1/security/x509/AlgorithmId;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    if-eqz v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Issuer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->issuer:Lsun1/security/x509/X500Name;

    invoke-virtual {v1}, Lsun1/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_71
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    if-eqz v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nThis Update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_91
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Next Update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b1
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10a

    const-string v0, "\nNO certificates have been revoked\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_be
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->extensions:Lsun1/security/x509/CRLExtensions;

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Lsun1/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nCRL Extensions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_dd
    array-length v1, v3

    if-lt v0, v1, :cond_156

    :cond_e0
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    if-eqz v0, :cond_1c3

    new-instance v0, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\nSignature:\n"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v0, v3}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nRevoked Certificates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_129
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_129

    :cond_156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "\n["

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, v3, v0

    check-cast v0, Lsun1/security/x509/Extension;

    :try_start_172
    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lsun1/security/x509/OIDMap;->getClass(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_1b7

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionValue()[B

    move-result-object v0

    if-eqz v0, :cond_1b4

    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v4, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v4}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v4, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v4}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Extension unknown: DER encoded OCTET string =\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b4
    :goto_1b4
    move v0, v1

    goto/16 :goto_dd

    :cond_1b7
    invoke-virtual {v0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_1ba} :catch_1bc

    move-result-object v0

    goto :goto_1b1

    :catch_1bc
    move-exception v0

    const-string v0, ", Error parsing this extension"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b4

    :cond_1c3
    const-string v0, "NOT signed yet\n"

    goto/16 :goto_102
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lsun1/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    :try_start_5
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_46

    move-result v0

    if-eqz v0, :cond_19

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->signedCRL:[B

    if-eqz v0, :cond_64

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_2d
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->tbsCertList:[B

    if-eqz v1, :cond_5c

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    iget-object v1, p0, Lsun1/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_54

    iput-object p1, p0, Lsun1/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lsun1/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_46

    goto :goto_17

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_49
    :try_start_49
    iget-object v0, p0, Lsun1/security/x509/X509CRLImpl;->sigAlgId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_2d

    :cond_54
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature does not match."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Uninitialized CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Uninitialized CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_49 .. :try_end_6c} :catchall_46
.end method
