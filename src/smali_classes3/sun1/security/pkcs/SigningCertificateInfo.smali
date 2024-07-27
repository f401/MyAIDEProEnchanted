.class public Lsun1/security/pkcs/SigningCertificateInfo;
.super Ljava/lang/Object;


# instance fields
.field private ber:[B

.field private certId:[Lsun1/security/pkcs/ESSCertId;


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/pkcs/SigningCertificateInfo;->ber:[B

    iput-object v0, p0, Lsun1/security/pkcs/SigningCertificateInfo;->certId:[Lsun1/security/pkcs/ESSCertId;

    invoke-virtual {p0, p1}, Lsun1/security/pkcs/SigningCertificateInfo;->parse([B)V

    return-void
.end method


# virtual methods
.method public parse([B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Lsun1/security/util/DerValue;

    invoke-direct {v2, p1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v0, v2, Lsun1/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    iget-object v0, v2, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0, v7}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v3

    array-length v0, v3

    new-array v0, v0, [Lsun1/security/pkcs/ESSCertId;

    iput-object v0, p0, Lsun1/security/pkcs/SigningCertificateInfo;->certId:[Lsun1/security/pkcs/ESSCertId;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_2

    iget-object v0, v2, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v2, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0, v7}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lsun1/security/pkcs/SigningCertificateInfo;->certId:[Lsun1/security/pkcs/ESSCertId;

    new-instance v5, Lsun1/security/pkcs/ESSCertId;

    aget-object v6, v3, v0

    invoke-direct {v5, v6}, Lsun1/security/pkcs/ESSCertId;-><init>(Lsun1/security/util/DerValue;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad encoding for signingCertificate"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "[\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun1/security/pkcs/SigningCertificateInfo;->certId:[Lsun1/security/pkcs/ESSCertId;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    const-string v0, "\n]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun1/security/pkcs/ESSCertId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
