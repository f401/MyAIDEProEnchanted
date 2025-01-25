.class public Lsun1/security/x509/CertificatePolicyId;
.super Ljava/lang/Object;


# instance fields
.field private id:Lsun1/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/CertificatePolicyId;->id:Lsun1/security/util/ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/CertificatePolicyId;->id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lsun1/security/x509/CertificatePolicyId;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lsun1/security/x509/CertificatePolicyId;->id:Lsun1/security/util/ObjectIdentifier;

    check-cast p1, Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {p1}, Lsun1/security/x509/CertificatePolicyId;->getIdentifier()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getIdentifier()Lsun1/security/util/ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/CertificatePolicyId;->id:Lsun1/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/CertificatePolicyId;->id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CertificatePolicyId: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/CertificatePolicyId;->id:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
