.class public Lsun1/security/x509/PrivateKeyUsageExtension;
.super Lsun1/security/x509/Extension;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun1/security/x509/Extension;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v5, 0x18

    const/4 v1, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerInputStream;

    iget-object v2, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    invoke-direct {v0, v2}, Lsun1/security/util/DerInputStream;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3, v1}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-nez v4, :cond_1

    invoke-virtual {v3, v5}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v4, Lsun1/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Duplicate notBefore in PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v4, :cond_3

    invoke-virtual {v3, v5}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v4, Lsun1/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v4}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Duplicate notAfter in PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of PrivateKeyUsageExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    iput-object p1, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    iput-object p2, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, -0x80

    const/4 v4, 0x0

    iget-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-eqz v2, :cond_1

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    invoke-static {v5, v4, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_1
    iget-object v2, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-eqz v2, :cond_2

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    invoke-static {v5, v4, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_2
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    goto :goto_0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_0

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "PrivateKeyUsage"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "PrivateKeyUsage: [\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "From: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "To: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
