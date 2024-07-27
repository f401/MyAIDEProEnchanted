.class public Lsun1/security/x509/NameConstraintsExtension;
.super Lsun1/security/x509/Extension;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun1/security/x509/Extension;",
        "Ljava/lang/Cloneable;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private excluded:Lsun1/security/x509/GeneralSubtrees;

.field private minMaxValid:Z

.field private permitted:Lsun1/security/x509/GeneralSubtrees;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v4, 0x30

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    iput-boolean v3, p0, Lsun1/security/x509/NameConstraintsExtension;->minMaxValid:Z

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/NameConstraintsExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v1, v4, :cond_6

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1, v3}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    if-nez v2, :cond_2

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun1/security/x509/GeneralSubtrees;

    invoke-direct {v2, v1}, Lsun1/security/x509/GeneralSubtrees;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    :cond_1
    :goto_1
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lsun1/security/x509/NameConstraintsExtension;->minMaxValid:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate permitted GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    if-nez v2, :cond_4

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun1/security/x509/GeneralSubtrees;

    invoke-direct {v2, v1}, Lsun1/security/x509/GeneralSubtrees;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v2, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate excluded GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/x509/GeneralSubtrees;Lsun1/security/x509/GeneralSubtrees;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/NameConstraintsExtension;->minMaxValid:Z

    iput-object p1, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    iput-object p2, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/NameConstraintsExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/NameConstraintsExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, -0x80

    const/4 v4, 0x1

    iput-boolean v6, p0, Lsun1/security/x509/NameConstraintsExtension;->minMaxValid:Z

    iget-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionValue:[B

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_1

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v2}, Lsun1/security/x509/GeneralSubtrees;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v5, v4, v6}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_1
    iget-object v2, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_2

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v2}, Lsun1/security/x509/GeneralSubtrees;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-static {v5, v4, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_2
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionValue:[B

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/NameConstraintsExtension;

    iget-object v1, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsun1/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/x509/GeneralSubtrees;

    iput-object v1, v0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    :cond_0
    iget-object v1, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsun1/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun1/security/x509/GeneralSubtrees;

    iput-object v1, v0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloneNotSupportedException while cloning NameConstraintsException. This should never happen."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_0

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/NameConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun1/security/x509/NameConstraintsExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/NameConstraintsExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "NameConstraints"

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

    const-string v0, "NameConstraints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   ]\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\n    Permitted:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsun1/security/x509/NameConstraintsExtension;->permitted:Lsun1/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lsun1/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n    Excluded:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/NameConstraintsExtension;->excluded:Lsun1/security/x509/GeneralSubtrees;

    invoke-virtual {v1}, Lsun1/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
