.class public Lsun1/security/x509/X509CertInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected algId:Lsun1/security/x509/CertificateAlgorithmId;

.field protected extensions:Lsun1/security/x509/CertificateExtensions;

.field protected interval:Lsun1/security/x509/CertificateValidity;

.field protected issuer:Lsun1/security/x509/CertificateIssuerName;

.field protected issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

.field protected pubKey:Lsun1/security/x509/CertificateX509Key;

.field private rawCertInfo:[B

.field protected serialNum:Lsun1/security/x509/CertificateSerialNumber;

.field protected subject:Lsun1/security/x509/CertificateSubjectName;

.field protected subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

.field protected version:Lsun1/security/x509/CertificateVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun1/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const-string v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serialNumber"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "algorithmID"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "issuer"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "validity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subject"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "issuerID"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subjectID"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extensions"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun1/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun1/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    :try_start_1f
    invoke-direct {p0, p1}, Lsun1/security/x509/X509CertInfo;->parse(Lsun1/security/util/DerValue;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun1/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    :try_start_1f
    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v0}, Lsun1/security/x509/X509CertInfo;->parse(Lsun1/security/util/DerValue;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private attributeMap(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lsun1/security/x509/X509CertInfo;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method private emit(Lsun1/security/util/DerOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateVersion;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateSerialNumber;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateAlgorithmId;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1, v2}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    invoke-virtual {v1}, Lsun1/security/x509/CertificateIssuerName;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    :cond_25
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateIssuerName;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateValidity;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1, v2}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    invoke-virtual {v1}, Lsun1/security/x509/CertificateSubjectName;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    :cond_3f
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateSubjectName;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateX509Key;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v1, :cond_50

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateIssuerUniqueIdentity;->encode(Ljava/io/OutputStream;)V

    :cond_50
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v1, :cond_57

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->encode(Ljava/io/OutputStream;)V

    :cond_57
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    if-eqz v1, :cond_5e

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;)V

    :cond_5e
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_64
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Null issuer DN not allowed in v1 certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Null subject DN not allowed in v1 certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse(Lsun1/security/util/DerValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_fb

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Lsun1/security/x509/CertificateVersion;

    invoke-direct {v2, v0}, Lsun1/security/x509/CertificateVersion;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    :cond_25
    new-instance v2, Lsun1/security/x509/CertificateSerialNumber;

    invoke-direct {v2, v0}, Lsun1/security/x509/CertificateSerialNumber;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    new-instance v0, Lsun1/security/x509/CertificateAlgorithmId;

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificateAlgorithmId;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    new-instance v0, Lsun1/security/x509/CertificateIssuerName;

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificateIssuerName;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    const-string v2, "dname"

    invoke-virtual {v0, v2}, Lsun1/security/x509/CertificateIssuerName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/X500Name;

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f3

    new-instance v0, Lsun1/security/x509/CertificateValidity;

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificateValidity;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    new-instance v0, Lsun1/security/x509/CertificateSubjectName;

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificateSubjectName;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    const-string v2, "dname"

    invoke-virtual {v0, v2}, Lsun1/security/x509/CertificateSubjectName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/X500Name;

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v2, v3}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-nez v2, :cond_6c

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    :cond_6c
    new-instance v0, Lsun1/security/x509/CertificateX509Key;

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificateX509Key;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v0, v3}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-eqz v0, :cond_eb

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_a6

    new-instance v2, Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    invoke-direct {v2, v0}, Lsun1/security/x509/CertificateIssuerUniqueIdentity;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_a2

    :cond_99
    :goto_99
    return-void

    :cond_9a
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Empty subject DN not allowed in v1 certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    :cond_a6
    invoke-virtual {v0, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_bd

    new-instance v2, Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    invoke-direct {v2, v0}, Lsun1/security/x509/CertificateSubjectUniqueIdentity;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    :cond_bd
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1, v4}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_e3

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_db

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_db

    new-instance v1, Lsun1/security/x509/CertificateExtensions;

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun1/security/x509/CertificateExtensions;-><init>(Lsun1/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    :cond_db
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    invoke-direct {p0, v0, v1}, Lsun1/security/x509/X509CertInfo;->verifyCert(Lsun1/security/x509/CertificateSubjectName;Lsun1/security/x509/CertificateExtensions;)V

    goto :goto_99

    :cond_e3
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Extensions not allowed in v2 certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_eb
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "no more data allowed for version 1 certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Empty issuer DN not allowed in X509Certificates"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fb
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "signed fields invalid"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setAlgorithmId(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateAlgorithmId;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateAlgorithmId;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "AlgorithmId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setExtensions(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-ltz v0, :cond_1a

    instance-of v0, p1, Lsun1/security/x509/CertificateExtensions;

    if-eqz v0, :cond_12

    check-cast p1, Lsun1/security/x509/CertificateExtensions;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    return-void

    :cond_12
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Extensions class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIssuer(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateIssuerName;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateIssuerName;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Issuer class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIssuerUniqueId(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-ltz v0, :cond_1a

    instance-of v0, p1, Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v0, :cond_12

    check-cast p1, Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    return-void

    :cond_12
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "IssuerUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setKey(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateX509Key;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateX509Key;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Key class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSerialNumber(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateSerialNumber;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateSerialNumber;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "SerialNumber class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSubject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateSubjectName;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateSubjectName;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Subject class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSubjectUniqueId(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-ltz v0, :cond_1a

    instance-of v0, p1, Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v0, :cond_12

    check-cast p1, Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    return-void

    :cond_12
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "SubjectUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setValidity(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateValidity;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateValidity;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "CertificateValidity class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setVersion(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p1, Lsun1/security/x509/CertificateVersion;

    if-eqz v0, :cond_9

    check-cast p1, Lsun1/security/x509/CertificateVersion;

    iput-object p1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    return-void

    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Version class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyCert(Lsun1/security/x509/CertificateSubjectName;Lsun1/security/x509/CertificateExtensions;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dname"

    invoke-virtual {p1, v0}, Lsun1/security/x509/CertificateSubjectName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/X500Name;

    invoke-virtual {v0}, Lsun1/security/x509/X500Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p2, :cond_46

    :try_start_10
    const-string v0, "SubjectAlternativeName"

    invoke-virtual {p2, v0}, Lsun1/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Lsun1/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/SubjectAlternativeNameExtension;

    const-string v1, "subject_name"

    invoke-virtual {v0, v1}, Lsun1/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun1/security/x509/GeneralNames;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_3d

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lsun1/security/x509/GeneralNames;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Lsun1/security/x509/SubjectAlternativeNameExtension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    return-void

    :cond_2d
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "X.509 Certificate is incomplete: SubjectAlternativeName extension MUST be marked critical when subject field is empty"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is empty"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3d
    move-exception v0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is absent"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "X.509 Certificate is incomplete: subject field is empty, and certificate has no extensions"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v0, :cond_12

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lsun1/security/x509/X509CertInfo;->emit(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    :cond_12
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lsun1/security/x509/X509CertInfo;

    if-eqz v0, :cond_b

    check-cast p1, Lsun1/security/x509/X509CertInfo;

    invoke-virtual {p0, p1}, Lsun1/security/x509/X509CertInfo;->equals(Lsun1/security/x509/X509CertInfo;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Lsun1/security/x509/X509CertInfo;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    if-eqz v0, :cond_4

    iget-object v2, p1, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    if-eqz v2, :cond_4

    array-length v0, v0

    array-length v2, v2

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_12
    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-byte v2, v2, v0

    iget-object v3, p1, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun1/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun1/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun1/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {v0}, Lsun1/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_aa

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0

    :pswitch_18  #0xa
    if-nez v0, :cond_1d

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    goto :goto_17

    :cond_1d
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Lsun1/security/x509/Extension;

    move-result-object v0

    goto :goto_17

    :pswitch_26  #0x9
    if-nez v0, :cond_2b

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    goto :goto_17

    :cond_2b
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->get(Ljava/lang/String;)Lsun1/security/x509/UniqueIdentity;

    move-result-object v0

    goto :goto_17

    :pswitch_34  #0x8
    if-nez v0, :cond_39

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    goto :goto_17

    :cond_39
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateIssuerUniqueIdentity;->get(Ljava/lang/String;)Lsun1/security/x509/UniqueIdentity;

    move-result-object v0

    goto :goto_17

    :pswitch_42  #0x7
    if-nez v0, :cond_47

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    goto :goto_17

    :cond_47
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_17

    :pswitch_4e  #0x6
    if-nez v0, :cond_53

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    goto :goto_17

    :cond_53
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateSubjectName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :pswitch_5a  #0x5
    if-nez v0, :cond_5f

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    goto :goto_17

    :cond_5f
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_17

    :pswitch_66  #0x4
    if-nez v0, :cond_6b

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    goto :goto_17

    :cond_6b
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateIssuerName;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :pswitch_72  #0x3
    if-nez v0, :cond_77

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    goto :goto_17

    :cond_77
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateAlgorithmId;->get(Ljava/lang/String;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    goto :goto_17

    :pswitch_7e  #0x2
    if-nez v0, :cond_83

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    goto :goto_17

    :cond_83
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Lsun1/security/x509/SerialNumber;

    move-result-object v0

    goto :goto_17

    :pswitch_8a  #0x1
    if-nez v0, :cond_8f

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    goto :goto_17

    :cond_8f
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17

    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attribute name not recognized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_8a  #00000001
        :pswitch_7e  #00000002
        :pswitch_72  #00000003
        :pswitch_66  #00000004
        :pswitch_5a  #00000005
        :pswitch_4e  #00000006
        :pswitch_42  #00000007
        :pswitch_34  #00000008
        :pswitch_26  #00000009
        :pswitch_18  #0000000a
    .end packed-switch
.end method

.method public getEncodedInfo()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v0, :cond_12

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lsun1/security/x509/X509CertInfo;->emit(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    :cond_12
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "info"

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v2

    if-lt v1, v3, :cond_8

    return v0

    :cond_8
    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun1/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun1/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun1/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9e

    const/4 v2, 0x0

    iput-object v2, p0, Lsun1/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v0}, Lsun1/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_b2

    :goto_19
    return-void

    :pswitch_1a  #0xa
    if-nez v0, :cond_20

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setExtensions(Ljava/lang/Object;)V

    goto :goto_19

    :cond_20
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    if-nez v1, :cond_2b

    new-instance v1, Lsun1/security/x509/CertificateExtensions;

    invoke-direct {v1}, Lsun1/security/x509/CertificateExtensions;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    :cond_2b
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_31  #0x9
    if-nez v0, :cond_37

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setSubjectUniqueId(Ljava/lang/Object;)V

    goto :goto_19

    :cond_37
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_3d  #0x8
    if-nez v0, :cond_43

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setIssuerUniqueId(Ljava/lang/Object;)V

    goto :goto_19

    :cond_43
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateIssuerUniqueIdentity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_49  #0x7
    if-nez v0, :cond_4f

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setKey(Ljava/lang/Object;)V

    goto :goto_19

    :cond_4f
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateX509Key;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_55  #0x6
    if-nez v0, :cond_5b

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setSubject(Ljava/lang/Object;)V

    goto :goto_19

    :cond_5b
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateSubjectName;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_61  #0x5
    if-nez v0, :cond_67

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setValidity(Ljava/lang/Object;)V

    goto :goto_19

    :cond_67
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateValidity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_6d  #0x4
    if-nez v0, :cond_73

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setIssuer(Ljava/lang/Object;)V

    goto :goto_19

    :cond_73
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateIssuerName;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_79  #0x3
    if-nez v0, :cond_7f

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setAlgorithmId(Ljava/lang/Object;)V

    goto :goto_19

    :cond_7f
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateAlgorithmId;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_85  #0x2
    if-nez v0, :cond_8b

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setSerialNumber(Ljava/lang/Object;)V

    goto :goto_19

    :cond_8b
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateSerialNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_91  #0x1
    if-nez v0, :cond_97

    invoke-direct {p0, p2}, Lsun1/security/x509/X509CertInfo;->setVersion(Ljava/lang/Object;)V

    goto :goto_19

    :cond_97
    iget-object v1, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v1, v0, p2}, Lsun1/security/x509/CertificateVersion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attribute name not recognized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_91  #00000001
        :pswitch_85  #00000002
        :pswitch_79  #00000003
        :pswitch_6d  #00000004
        :pswitch_61  #00000005
        :pswitch_55  #00000006
        :pswitch_49  #00000007
        :pswitch_3d  #00000008
        :pswitch_31  #00000009
        :pswitch_1a  #0000000a
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    if-eqz v0, :cond_215

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->version:Lsun1/security/x509/CertificateVersion;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Subject: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->subject:Lsun1/security/x509/CertificateSubjectName;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateSubjectName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Signature Algorithm: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->algId:Lsun1/security/x509/CertificateAlgorithmId;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateAlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Key:  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->pubKey:Lsun1/security/x509/CertificateX509Key;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateX509Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->interval:Lsun1/security/x509/CertificateValidity;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateValidity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Issuer: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->issuer:Lsun1/security/x509/CertificateIssuerName;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateIssuerName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->serialNum:Lsun1/security/x509/CertificateSerialNumber;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateSerialNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    if-eqz v0, :cond_107

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Issuer Id:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->issuerUniqueId:Lsun1/security/x509/CertificateIssuerUniqueIdentity;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateIssuerUniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_107
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    if-eqz v0, :cond_127

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Subject Id:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509CertInfo;->subjectUniqueId:Lsun1/security/x509/CertificateSubjectUniqueIdentity;

    invoke-virtual {v2}, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_127
    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    if-eqz v0, :cond_17d

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    new-array v2, v1, [Lsun1/security/x509/Extension;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun1/security/x509/Extension;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\nCertificate Extensions: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_149
    array-length v2, v0

    if-lt v1, v2, :cond_1aa

    iget-object v0, p0, Lsun1/security/x509/X509CertInfo;->extensions:Lsun1/security/x509/CertificateExtensions;

    invoke-virtual {v0}, Lsun1/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nUnparseable certificate extensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v0

    :goto_177
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_187

    :cond_17d
    const-string v0, "\n]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/Extension;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_177

    :cond_1aa
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "\n["

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    :try_start_1c4
    invoke-virtual {v1}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lsun1/security/x509/OIDMap;->getClass(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_209

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsun1/security/x509/Extension;->getExtensionValue()[B

    move-result-object v1

    if-eqz v1, :cond_206

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

    :goto_203
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_206
    :goto_206
    move v1, v2

    goto/16 :goto_149

    :cond_209
    invoke-virtual {v1}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_20c} :catch_20e

    move-result-object v1

    goto :goto_203

    :catch_20e
    move-exception v1

    const-string v1, ", Error parsing this extension"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_206

    :cond_215
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "X.509 cert is incomplete"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
