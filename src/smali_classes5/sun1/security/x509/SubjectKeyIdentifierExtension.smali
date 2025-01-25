.class public Lsun1/security/x509/SubjectKeyIdentifierExtension;
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


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/x509/KeyIdentifier;

    new-instance v1, Lsun1/security/util/DerValue;

    iget-object v2, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-direct {v0, v1}, Lsun1/security/x509/KeyIdentifier;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    new-instance v0, Lsun1/security/x509/KeyIdentifier;

    invoke-direct {v0, p1}, Lsun1/security/x509/KeyIdentifier;-><init>([B)V

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    invoke-virtual {v1, v0}, Lsun1/security/x509/KeyIdentifier;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    goto :goto_7
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

    iget-object v1, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/SubjectKeyIdentifierExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "SubjectKeyIdentifier"

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

    const-string v1, "SubjectKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/SubjectKeyIdentifierExtension;->id:Lsun1/security/x509/KeyIdentifier;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
