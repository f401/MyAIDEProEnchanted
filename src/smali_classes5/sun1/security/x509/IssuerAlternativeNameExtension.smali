.class public Lsun1/security/x509/IssuerAlternativeNameExtension;
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
.field names:Lsun1/security/x509/GeneralNames;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->critical:Z

    new-instance v0, Lsun1/security/x509/GeneralNames;

    invoke-direct {v0}, Lsun1/security/x509/GeneralNames;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-nez v1, :cond_27

    new-instance v0, Lsun1/security/x509/GeneralNames;

    invoke-direct {v0}, Lsun1/security/x509/GeneralNames;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    :goto_26
    return-void

    :cond_27
    new-instance v1, Lsun1/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun1/security/x509/GeneralNames;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    goto :goto_26
.end method

.method public constructor <init>(Lsun1/security/x509/GeneralNames;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    iput-object p1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lsun1/security/x509/GeneralNames;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun1/security/x509/GeneralNames;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    goto :goto_d
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

    iget-object v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/IssuerAlternativeNameExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Lsun1/security/x509/GeneralNames;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "issuer_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    return-object v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:IssuerAlternativeName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "IssuerAlternativeName"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "IssuerAlternativeName [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun1/security/x509/IssuerAlternativeNameExtension;->names:Lsun1/security/x509/GeneralNames;

    if-nez v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "  null\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    invoke-virtual {v1}, Lsun1/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/GeneralName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_48
.end method
