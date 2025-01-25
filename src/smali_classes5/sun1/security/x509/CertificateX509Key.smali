.class public Lsun1/security/x509/CertificateX509Key;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/X509Key;->parse(Lsun1/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-void
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

    iget-object v1, p0, Lsun1/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->write([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsun1/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-object v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "key"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    check-cast p2, Ljava/security/PublicKey;

    iput-object p2, p0, Lsun1/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
