.class public Lsun1/security/x509/Extension;
.super Ljava/lang/Object;


# instance fields
.field protected critical:Z

.field protected extensionId:Lsun1/security/util/ObjectIdentifier;

.field protected extensionValue:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iput-boolean v4, p0, Lsun1/security/x509/Extension;->critical:Z

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    iget-byte v2, v1, Lsun1/security/util/DerValue;->tag:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun1/security/x509/Extension;->critical:Z

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lsun1/security/x509/Extension;->critical:Z

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    goto :goto_0
.end method

.method public constructor <init>(Lsun1/security/util/ObjectIdentifier;Z[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    iput-object p1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iput-boolean p2, p0, Lsun1/security/x509/Extension;->critical:Z

    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, p3}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    return-void
.end method

.method public constructor <init>(Lsun1/security/x509/Extension;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    iput-object v1, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    iget-object v0, p1, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iget-boolean v0, p1, Lsun1/security/x509/Extension;->critical:Z

    iput-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    iget-object v0, p1, Lsun1/security/x509/Extension;->extensionValue:[B

    iput-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    return-void
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    if-eqz v0, :cond_1

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget-boolean v1, p0, Lsun1/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putBoolean(Z)V

    :cond_0
    iget-object v1, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No value to encode for the extension!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null OID to encode for the extension!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lsun1/security/x509/Extension;

    if-eqz v0, :cond_1

    check-cast p1, Lsun1/security/x509/Extension;

    iget-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    iget-boolean v1, p1, Lsun1/security/x509/Extension;->critical:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iget-object v1, p1, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    iget-object v1, p1, Lsun1/security/x509/Extension;->extensionValue:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionId()Lsun1/security/util/ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getExtensionValue()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Lsun1/security/x509/Extension;->extensionValue:[B

    if-eqz v3, :cond_0

    array-length v1, v3

    :goto_0
    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->hashCode()I

    move-result v2

    iget-boolean v1, p0, Lsun1/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    aget-byte v4, v3, v2

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public isCritical()Z
    .registers 2

    iget-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/Extension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lsun1/security/x509/Extension;->critical:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Criticality=true\n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Criticality=false\n"

    goto :goto_0
.end method
