.class public Lsun1/security/x509/PolicyInformation;
.super Ljava/lang/Object;


# instance fields
.field private policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

.field private policyQualifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x30

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v2, :cond_6c

    new-instance v0, Lsun1/security/x509/CertificatePolicyId;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/CertificatePolicyId;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v1, v2, :cond_5d

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_55

    :goto_37
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_40

    :goto_3f
    return-void

    :cond_40
    iget-object v1, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    new-instance v2, Ljava/security/cert/PolicyQualifierInfo;

    iget-object v3, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v3

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data available in policyQualifiers"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of PolicyInformation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    goto :goto_3f

    :cond_6c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of PolicyInformation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x30

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificatePolicyId;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v1, v4, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    :cond_28
    invoke-virtual {p1, v4, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v0}, Ljava/security/cert/PolicyQualifierInfo;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    goto :goto_1f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lsun1/security/x509/PolicyInformation;

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lsun1/security/x509/PolicyInformation;

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {p1}, Lsun1/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun1/security/x509/CertificatePolicyId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/x509/CertificatePolicyId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-virtual {p1}, Lsun1/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public getPolicyIdentifier()Lsun1/security/x509/CertificatePolicyId;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/PolicyInformation;->policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v0}, Lsun1/security/x509/CertificatePolicyId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/PolicyInformation;->policyIdentifier:Lsun1/security/x509/CertificatePolicyId;

    invoke-virtual {v1}, Lsun1/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/PolicyInformation;->policyQualifiers:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  ]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
