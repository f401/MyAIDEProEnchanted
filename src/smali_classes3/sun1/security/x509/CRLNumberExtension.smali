.class public Lsun1/security/x509/CRLNumberExtension;
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
.field private crlNumber:Ljava/math/BigInteger;

.field private extensionLabel:Ljava/lang/String;

.field private extensionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v2, 0x0

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const-string v4, "CRLNumber"

    const-string v5, "CRL Number"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun1/security/x509/CRLNumberExtension;-><init>(Lsun1/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

    const-string v4, "CRLNumber"

    const-string v5, "CRL Number"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lsun1/security/x509/CRLNumberExtension;-><init>(Lsun1/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v2, 0x0

    const-string v4, "CRLNumber"

    const-string v5, "CRL Number"

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lsun1/security/x509/CRLNumberExtension;-><init>(Lsun1/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lsun1/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    iput-object p1, p0, Lsun1/security/x509/CRLNumberExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/CRLNumberExtension;->critical:Z

    check-cast p3, [B

    iput-object p3, p0, Lsun1/security/x509/CRLNumberExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/CRLNumberExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    iput-object p4, p0, Lsun1/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    iput-object p5, p0, Lsun1/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lsun1/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    iput-object p1, p0, Lsun1/security/x509/CRLNumberExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iput-boolean p2, p0, Lsun1/security/x509/CRLNumberExtension;->critical:Z

    iput-object p3, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    iput-object p4, p0, Lsun1/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    iput-object p5, p0, Lsun1/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    invoke-direct {p0}, Lsun1/security/x509/CRLNumberExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->extensionValue:[B

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->extensionValue:[B

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

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lsun1/security/x509/CRLNumberExtension;->encode(Ljava/io/OutputStream;Lsun1/security/util/ObjectIdentifier;Z)V

    return-void
.end method

.method protected encode(Ljava/io/OutputStream;Lsun1/security/util/ObjectIdentifier;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/CRLNumberExtension;->extensionValue:[B

    if-nez v1, :cond_0

    iput-object p2, p0, Lsun1/security/x509/CRLNumberExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iput-boolean p3, p0, Lsun1/security/x509/CRLNumberExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/CRLNumberExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->extensionLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun1/security/x509/CRLNumberExtension;->crlNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
