.class public Lsun1/security/x509/CertificatePolicyMap;
.super Ljava/lang/Object;


# instance fields
.field private issuerDomain:Lsun1/security/x509/CertificatePolicyId;

.field private subjectDomain:Lsun1/security/x509/CertificatePolicyId;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_24

    new-instance v0, Lsun1/security/x509/CertificatePolicyId;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificatePolicyId;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/CertificatePolicyMap;->issuerDomain:Lsun1/security/x509/CertificatePolicyId;

    new-instance v0, Lsun1/security/x509/CertificatePolicyId;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificatePolicyId;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/CertificatePolicyMap;->subjectDomain:Lsun1/security/x509/CertificatePolicyId;

    return-void

    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for CertificatePolicyMap"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/CertificatePolicyMap;->issuerDomain:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificatePolicyId;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun1/security/x509/CertificatePolicyMap;->subjectDomain:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v1, v0}, Lsun1/security/x509/CertificatePolicyId;->encode(Lsun1/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CertificatePolicyMap: [\nIssuerDomain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/CertificatePolicyMap;->issuerDomain:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v1}, Lsun1/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SubjectDomain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/CertificatePolicyMap;->subjectDomain:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v1}, Lsun1/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
