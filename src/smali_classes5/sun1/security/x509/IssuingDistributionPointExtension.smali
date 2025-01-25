.class public Lsun1/security/x509/IssuingDistributionPointExtension;
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
.field private distributionPoint:Lsun1/security/x509/DistributionPointName;

.field private hasOnlyAttributeCerts:Z

.field private hasOnlyCACerts:Z

.field private hasOnlyUserCerts:Z

.field private isIndirectCRL:Z

.field private revocationReasons:Lsun1/security/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    iput-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    iput-boolean v3, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    iput-boolean v3, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    iput-boolean v3, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    iput-boolean v3, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->critical:Z

    instance-of v0, p2, [B

    if-eqz v0, :cond_e7

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_df

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_3e

    :cond_3d
    return-void

    :cond_3e
    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    :goto_40
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_66

    new-instance v2, Lsun1/security/x509/DistributionPointName;

    iget-object v1, v1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v2, v1}, Lsun1/security/x509/DistributionPointName;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    goto :goto_40

    :cond_66
    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_40

    :cond_7c
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_93

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_40

    :cond_93
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_a8

    new-instance v2, Lsun1/security/x509/ReasonFlags;

    invoke-direct {v2, v1}, Lsun1/security/x509/ReasonFlags;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    goto :goto_40

    :cond_a8
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_bf

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_40

    :cond_bf
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_d7

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_40

    :cond_d7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of IssuingDistributionPoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for IssuingDistributionPointExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Illegal argument type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/x509/DistributionPointName;Lsun1/security/x509/ReasonFlags;ZZZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    iput-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    iput-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    iput-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    iput-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    iput-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz p3, :cond_17

    if-nez p4, :cond_3a

    if-nez p5, :cond_3a

    :cond_17
    if-eqz p4, :cond_1d

    if-nez p3, :cond_3a

    if-nez p5, :cond_3a

    :cond_1d
    if-eqz p5, :cond_23

    if-nez p3, :cond_3a

    if-nez p4, :cond_3a

    :cond_23
    sget-object v0, Lsun1/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->critical:Z

    iput-object p1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    iput-object p2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    iput-boolean p3, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    iput-boolean p4, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    iput-boolean p5, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    iput-boolean p6, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-direct {p0}, Lsun1/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    return-void

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of hasOnlyUserCerts, hasOnlyCACerts, hasOnlyAttributeCerts may be set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeThis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x80

    iget-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    if-nez v0, :cond_20

    iget-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-nez v0, :cond_20

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    :goto_1f
    return-void

    :cond_20
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    if-eqz v1, :cond_3a

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    invoke-virtual {v2, v1}, Lsun1/security/x509/DistributionPointName;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v3, v5, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_3a
    iget-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v1, :cond_4f

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-boolean v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putBoolean(Z)V

    invoke-static {v3, v4, v5}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_4f
    iget-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v1, :cond_65

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-boolean v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putBoolean(Z)V

    const/4 v2, 0x2

    invoke-static {v3, v4, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_65
    iget-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    if-eqz v1, :cond_7b

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    invoke-virtual {v2, v1}, Lsun1/security/x509/ReasonFlags;->encode(Lsun1/security/util/DerOutputStream;)V

    const/4 v2, 0x3

    invoke-static {v3, v4, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_7b
    iget-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v1, :cond_91

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-boolean v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putBoolean(Z)V

    const/4 v2, 0x4

    invoke-static {v3, v4, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_91
    iget-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v1, :cond_a7

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-boolean v2, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putBoolean(Z)V

    const/4 v2, 0x5

    invoke-static {v3, v4, v2}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_a7
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    goto/16 :goto_1f
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

    iget-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "IssuingDistributionPoint"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "IssuingDistributionPoint [\n  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun1/security/x509/DistributionPointName;

    if-eqz v0, :cond_15

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun1/security/x509/ReasonFlags;

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v0, :cond_5e

    const-string v0, "  Only contains user certs: true"

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v0, :cond_61

    const-string v0, "  Only contains CA certs: true"

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v0, :cond_64

    const-string v0, "  Only contains attribute certs: true"

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lsun1/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v0, :cond_67

    const-string v0, "  Indirect CRL: true"

    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5e
    const-string v0, "  Only contains user certs: false"

    goto :goto_22

    :cond_61
    const-string v0, "  Only contains CA certs: false"

    goto :goto_30

    :cond_64
    const-string v0, "  Only contains attribute certs: false"

    goto :goto_3e

    :cond_67
    const-string v0, "  Indirect CRL: false"

    goto :goto_4c
.end method
