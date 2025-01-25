.class public Lsun1/security/x509/X509CertImpl;
.super Ljava/security/cert/X509Certificate;

# interfaces
.implements Lsun1/security/util/DerEncoder;


# instance fields
.field protected algId:Lsun1/security/x509/AlgorithmId;

.field private extKeyUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprints:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Lsun1/security/x509/X509CertInfo;

.field private issuerAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected signature:[B

.field private signedCert:[B

.field private subjectAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private verificationResult:Z

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    :try_start_17
    invoke-direct {p0, p1}, Lsun1/security/x509/X509CertImpl;->parse(Lsun1/security/util/DerValue;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to initialize, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method public constructor <init>(Lsun1/security/x509/X509CertInfo;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    :try_start_17
    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v0}, Lsun1/security/x509/X509CertImpl;->parse(Lsun1/security/util/DerValue;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    iput-object v2, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to initialize, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method private static cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    if-eqz v1, :cond_22

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    :cond_22
    return-object p0

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, [B

    if-eqz v5, :cond_44

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_44
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_7
.end method

.method private static makeAltNames(Lsun1/security/x509/GeneralNames;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun1/security/x509/GeneralNames;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    const/4 v6, 0x2

    invoke-virtual {p0}, Lsun1/security/x509/GeneralNames;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lsun1/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_b

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun1/security/x509/GeneralName;->getName()Lsun1/security/x509/GeneralNameInterface;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_aa

    if-eq v4, v6, :cond_a3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9c

    const/4 v5, 0x6

    if-eq v4, v5, :cond_95

    const/4 v5, 0x7

    if-eq v4, v5, :cond_82

    const/16 v5, 0x8

    if-eq v4, v5, :cond_74

    new-instance v4, Lsun1/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun1/security/util/DerOutputStream;-><init>()V

    :try_start_59
    invoke-interface {v0, v4}, Lsun1/security/x509/GeneralNameInterface;->encode(Lsun1/security/util/DerOutputStream;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_6b

    invoke-virtual {v4}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_63
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :catch_6b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "name cannot be encoded"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_74
    check-cast v0, Lsun1/security/x509/OIDName;

    invoke-virtual {v0}, Lsun1/security/x509/OIDName;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_82
    :try_start_82
    check-cast v0, Lsun1/security/x509/IPAddressName;

    invoke-virtual {v0}, Lsun1/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8b} :catch_8c

    goto :goto_63

    :catch_8c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IPAddress cannot be parsed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_95
    check-cast v0, Lsun1/security/x509/URIName;

    invoke-virtual {v0}, Lsun1/security/x509/URIName;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_9c
    check-cast v0, Lsun1/security/x509/X500Name;

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_a3
    check-cast v0, Lsun1/security/x509/DNSName;

    invoke-virtual {v0}, Lsun1/security/x509/DNSName;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_aa
    check-cast v0, Lsun1/security/x509/RFC822Name;

    invoke-virtual {v0}, Lsun1/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e
.end method

.method private parse(Lsun1/security/util/DerValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x30

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    if-nez v0, :cond_c2

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eqz v0, :cond_ba

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v5, :cond_ba

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    const/4 v0, 0x3

    new-array v0, v0, [Lsun1/security/util/DerValue;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_a0

    aget-object v1, v0, v3

    iget-byte v1, v1, Lsun1/security/util/DerValue;->tag:B

    if-ne v1, v5, :cond_98

    aget-object v1, v0, v2

    invoke-static {v1}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    aget-object v1, v0, v4

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBitString()[B

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    aget-object v1, v0, v2

    iget-object v1, v1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_90

    aget-object v1, v0, v4

    iget-object v1, v1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_88

    new-instance v1, Lsun1/security/x509/X509CertInfo;

    aget-object v0, v0, v3

    invoke-direct {v1, v0}, Lsun1/security/x509/X509CertInfo;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    const-string v0, "algorithmID.algorithm"

    invoke-virtual {v1, v0}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/AlgorithmId;

    iget-object v1, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/AlgorithmId;->equals(Lsun1/security/x509/AlgorithmId;)Z

    move-result v0

    if-eqz v0, :cond_80

    iput-boolean v2, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    return-void

    :cond_80
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Signature algorithm mismatch"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "signed fields overrun"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "algid field overrun"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "signed fields invalid"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signed overrun, bytes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ba
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "invalid DER-encoded certificate data"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c2
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "cannot over-write existing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    const-string v1, "validity"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateValidity;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_18

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lsun1/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    return-void

    :cond_10
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    const-string v1, "Null validity period"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    const-string v1, "Incorrect validity period"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_e

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    new-instance v0, Lsun1/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun1/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun1/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    new-instance v1, Lsun1/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun1/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun1/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsun1/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_2c

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return-object v0

    :cond_2c
    invoke-virtual {v1}, Lsun1/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    :try_start_32
    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun1/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_48
    .catch Ljava/security/cert/CertificateException; {:try_start_32 .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_2b

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_48
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    goto :goto_2b

    :cond_56
    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    goto :goto_2b

    :cond_61
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    :cond_72
    const-string v1, "signed_cert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attribute name not recognized or get() not allowed for the same: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid root of attribute name, expected [x509], received ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBasicConstraints()I
    .registers 3

    :try_start_0
    sget-object v0, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v0}, Lsun1/security/x509/OIDMap;->getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/BasicConstraintsExtension;

    if-eqz v0, :cond_8

    const-string v1, "is_ca"

    invoke-virtual {v0, v1}, Lsun1/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "path_len"

    invoke-virtual {v0, v1}, Lsun1/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result v0

    goto :goto_9

    :catch_2d
    move-exception v0

    goto :goto_8
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

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "extensions"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateExtensions;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3b

    goto :goto_1d

    :catch_3b
    move-exception v0

    goto :goto_4

    :cond_3d
    move-object v0, v1

    goto :goto_5
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/x509/X509CertImpl;->getEncodedInternal()[B

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
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lsun1/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun1/security/x509/ExtendedKeyUsageExtension;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Lsun1/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1e

    goto :goto_9

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtendedKeyUsageExtension()Lsun1/security/x509/ExtendedKeyUsageExtension;
    .registers 2

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CertImpl;->getExtension(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/ExtendedKeyUsageExtension;

    return-object v0
.end method

.method public getExtension(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/x509/Extension;
    .registers 5

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "extensions"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateExtensions;
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_e} :catch_39
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_3b

    if-eqz v0, :cond_4

    :try_start_10
    invoke-virtual {p1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificateExtensions;->getExtension(Ljava/lang/String;)Lsun1/security/x509/Extension;

    move-result-object v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_35} :catch_3b

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_5

    :catch_39
    move-exception v0

    goto :goto_4

    :catch_3b
    move-exception v0

    goto :goto_4

    :cond_3d
    move-object v0, v1

    goto :goto_5
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lsun1/security/util/ObjectIdentifier;

    invoke-direct {v3, p1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lsun1/security/x509/OIDMap;->getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    const-string v4, "extensions"

    invoke-virtual {v0, v4}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateExtensions;

    if-nez v1, :cond_4c

    if-nez v0, :cond_1a

    move-object v0, v2

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3b

    :goto_28
    move-object v1, v2

    :goto_29
    if-nez v1, :cond_53

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    :goto_37
    if-nez v0, :cond_54

    move-object v0, v2

    goto :goto_19

    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/x509/Extension;

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5, v3}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_69

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_29

    :cond_4c
    :try_start_4c
    invoke-virtual {p0, v1}, Lsun1/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/x509/Extension;
    :try_end_52
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_52} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_52} :catch_69

    goto :goto_29

    :cond_53
    move-object v0, v1

    :cond_54
    :try_start_54
    invoke-virtual {v0}, Lsun1/security/x509/Extension;->getExtensionValue()[B

    move-result-object v0

    if-nez v0, :cond_5c

    move-object v0, v2

    goto :goto_19

    :cond_5c
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_67} :catch_69

    move-result-object v0

    goto :goto_19

    :catch_69
    move-exception v0

    move-object v0, v2

    goto :goto_19

    :catch_6c
    move-exception v1

    goto :goto_28

    :cond_6e
    move-object v0, v1

    goto :goto_37
.end method

.method public getIssuerAlternativeNameExtension()Lsun1/security/x509/IssuerAlternativeNameExtension;
    .registers 2

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CertImpl;->getExtension(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/IssuerAlternativeNameExtension;

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lsun1/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    move-result-object v0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lsun1/security/x509/X509CertImpl;->getIssuerAlternativeNameExtension()Lsun1/security/x509/IssuerAlternativeNameExtension;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_24

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_d

    :cond_17
    :try_start_17
    const-string v1, "issuer_name"

    invoke-virtual {v0, v1}, Lsun1/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun1/security/x509/GeneralNames;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_27
    .catchall {:try_start_17 .. :try_end_1c} :catchall_24

    move-result-object v0

    :try_start_1d
    invoke-static {v0}, Lsun1/security/x509/X509CertImpl;->makeAltNames(Lsun1/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_24

    goto :goto_d

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_27
    move-exception v0

    :try_start_28
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_24

    move-result-object v0

    goto :goto_d
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "issuer.dname"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getIssuerUniqueID()[Z
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "issuerID.id"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/UniqueIdentity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsun1/security/x509/UniqueIdentity;->getId()[Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_5

    :catch_15
    move-exception v0

    goto :goto_4
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "issuer.x500principal"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getKeyUsage()[Z
    .registers 6

    const/16 v2, 0x9

    :try_start_2
    sget-object v0, Lsun1/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v0}, Lsun1/security/x509/OIDMap;->getName(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/KeyUsageExtension;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lsun1/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v1

    array-length v0, v1

    if-ge v0, v2, :cond_28

    const/16 v0, 0x9

    new-array v0, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_b

    :catch_26
    move-exception v0

    goto :goto_a

    :cond_28
    move-object v0, v1

    goto :goto_b
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "extensions"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateExtensions;

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    goto :goto_5

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/x509/Extension;

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->isCritical()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_48

    goto :goto_1d

    :catch_48
    move-exception v0

    goto :goto_4
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "validity.notAfter"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "validity.notBefore"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "key.value"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    invoke-virtual {p0}, Lsun1/security/x509/X509CertImpl;->getSerialNumberObject()Lsun1/security/x509/SerialNumber;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lsun1/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSerialNumberObject()Lsun1/security/x509/SerialNumber;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "serialNumber.number"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/SerialNumber;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

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

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

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

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

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

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

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

.method public getSubjectAlternativeNameExtension()Lsun1/security/x509/SubjectAlternativeNameExtension;
    .registers 2

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509CertImpl;->getExtension(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/SubjectAlternativeNameExtension;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lsun1/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    move-result-object v0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lsun1/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun1/security/x509/SubjectAlternativeNameExtension;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_24

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_d

    :cond_17
    :try_start_17
    const-string v1, "subject_name"

    invoke-virtual {v0, v1}, Lsun1/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun1/security/x509/GeneralNames;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_27
    .catchall {:try_start_17 .. :try_end_1c} :catchall_24

    move-result-object v0

    :try_start_1d
    invoke-static {v0}, Lsun1/security/x509/X509CertImpl;->makeAltNames(Lsun1/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_24

    goto :goto_d

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_27
    move-exception v0

    :try_start_28
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_24

    move-result-object v0

    goto :goto_d
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "subject.dname"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Principal;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getSubjectUniqueID()[Z
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "subjectID.id"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/UniqueIdentity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsun1/security/x509/UniqueIdentity;->getId()[Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_5

    :catch_15
    move-exception v0

    goto :goto_4
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "subject.x500principal"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lsun1/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :goto_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    :try_start_6
    const-string v1, "version.number"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_15

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_15
    move-exception v0

    goto :goto_4
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-nez v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    :try_start_6
    const-string v1, "extensions"

    invoke-virtual {v0, v1}, Lsun1/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/CertificateExtensions;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->hasUnsupportedCriticalExtension()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_5

    :catch_15
    move-exception v0

    goto :goto_4
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun1/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    if-nez v0, :cond_57

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_52

    :cond_c
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_10
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun1/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    invoke-virtual {v3, v2}, Lsun1/security/x509/X509CertInfo;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v4, v2}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v2, v0}, Lsun1/security/util/DerOutputStream;->putBitString([B)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->readOnly:Z

    return-void

    :cond_52
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_10

    :cond_57
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "cannot over-write existing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    if-nez v0, :cond_f

    :cond_c
    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun1/security/x509/X509CertInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Algorithm: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun1/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Signature:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v3}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lsun1/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
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
    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_25

    if-eqz v0, :cond_1d

    :cond_1b
    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature does not match."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_28
    :try_start_28
    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v0, :cond_6b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_3c
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertImpl;->info:Lsun1/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun1/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    iget-object v1, p0, Lsun1/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/X509CertImpl;->verificationResult:Z

    iput-object p1, p0, Lsun1/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lsun1/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature does not match."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-object v0, p0, Lsun1/security/x509/X509CertImpl;->algId:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_3c

    :cond_6b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_28 .. :try_end_73} :catchall_25
.end method
