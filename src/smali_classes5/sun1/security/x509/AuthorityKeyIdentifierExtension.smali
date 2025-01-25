.class public Lsun1/security/x509/AuthorityKeyIdentifierExtension;
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
.field private id:Lsun1/security/x509/KeyIdentifier;

.field private names:Lsun1/security/x509/GeneralNames;

.field private serialNum:Lsun1/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x30

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v1, v4, :cond_ad

    :goto_26
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eqz v1, :cond_32

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    return-void

    :cond_33
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    if-nez v2, :cond_56

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun1/security/x509/KeyIdentifier;

    invoke-direct {v2, v1}, Lsun1/security/x509/KeyIdentifier;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    goto :goto_26

    :cond_56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate KeyIdentifier in AuthorityKeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    if-nez v2, :cond_7a

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun1/security/x509/GeneralNames;

    invoke-direct {v2, v1}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    goto :goto_26

    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate GeneralNames in AuthorityKeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    invoke-virtual {v1, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    if-nez v2, :cond_9d

    invoke-virtual {v1, v3}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun1/security/x509/SerialNumber;

    invoke-direct {v2, v1}, Lsun1/security/x509/SerialNumber;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    goto :goto_26

    :cond_9d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate SerialNumber in AuthorityKeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of AuthorityKeyIdentifierExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ad
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for AuthorityKeyIdentifierExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/x509/KeyIdentifier;Lsun1/security/x509/GeneralNames;Lsun1/security/x509/SerialNumber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    iput-object p1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    iput-object p2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    iput-object p3, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v6, -0x80

    iget-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    if-nez v0, :cond_13

    iget-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    if-nez v0, :cond_13

    iget-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    :goto_12
    return-void

    :cond_13
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    if-eqz v2, :cond_32

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    invoke-virtual {v3, v2}, Lsun1/security/x509/KeyIdentifier;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v6, v7, v7}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_32
    :try_start_32
    iget-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    if-eqz v2, :cond_4b

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v3, v2}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    const/16 v3, -0x80

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4b} :catch_6d

    :cond_4b
    iget-object v2, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    if-eqz v2, :cond_61

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    invoke-virtual {v3, v2}, Lsun1/security/x509/SerialNumber;->encode(Lsun1/security/util/DerOutputStream;)V

    const/4 v3, 0x2

    invoke-static {v6, v7, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_61
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    goto :goto_12

    :catch_6d
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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

    iget-object v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "AuthorityKeyIdentifier"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AuthorityKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    invoke-virtual {v0}, Lsun1/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    iget-object v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v0}, Lsun1/security/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_54
    iget-object v1, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    if-eqz v1, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun1/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun1/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
