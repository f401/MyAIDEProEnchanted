.class public Lsun1/security/x509/CertificateValidity;
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
.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    iput-object p2, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

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

    invoke-direct {p0, v0}, Lsun1/security/x509/CertificateValidity;->construct(Lsun1/security/util/DerValue;)V

    return-void
.end method

.method private construct(Lsun1/security/util/DerValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x18

    const/16 v5, 0x17

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7c

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_74

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    array-length v0, v1

    if-ne v0, v4, :cond_6c

    aget-object v0, v1, v2

    iget-byte v0, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v5, :cond_42

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v0

    :goto_31
    iput-object v0, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    aget-object v0, v1, v3

    iget-byte v0, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v5, :cond_4f

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v0

    :goto_3f
    iput-object v0, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    return-void

    :cond_42
    aget-object v0, v1, v2

    iget-byte v0, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v6, :cond_64

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_31

    :cond_4f
    aget-object v0, v1, v3

    iget-byte v0, v0, Lsun1/security/util/DerValue;->tag:B

    if-ne v0, v6, :cond_5c

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_3f

    :cond_5c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for CertificateValidity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for CertificateValidity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for CertificateValidity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data encoded for CertificateValidity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoded CertificateValidity, starting sequence tag missing."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNotAfter()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private getNotBefore()Ljava/util/Date;
    .registers 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v4, 0x24bd0146400L

    iget-object v0, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-eqz v0, :cond_4a

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    cmp-long v2, v2, v4

    if-gez v2, :cond_42

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    :goto_21
    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    cmp-long v2, v2, v4

    if-gez v2, :cond_46

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    :goto_30
    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_42
    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_21

    :cond_46
    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_30

    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CertAttrSet:CertificateValidity: null values to encode.\n"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lsun1/security/x509/CertificateValidity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lsun1/security/x509/CertificateValidity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    goto :goto_c

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "validity"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_26

    const-string v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    check-cast p2, Ljava/util/Date;

    iput-object p2, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    :goto_10
    return-void

    :cond_11
    const-string v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    check-cast p2, Ljava/util/Date;

    iput-object p2, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    goto :goto_10

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Date."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validity: [From: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n               To: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public valid(Ljava/util/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotAfter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotBefore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
