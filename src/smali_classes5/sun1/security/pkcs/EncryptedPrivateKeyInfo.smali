.class public Lsun1/security/pkcs/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;


# instance fields
.field private algid:Lsun1/security/x509/AlgorithmId;

.field private encoded:[B

.field private encryptedData:[B


# direct methods
.method public constructor <init>(Lsun1/security/x509/AlgorithmId;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7e

    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun1/security/util/DerValue;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [Lsun1/security/util/DerValue;

    iget-object v2, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_64

    aget-object v0, v1, v3

    invoke-static {v0}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun1/security/x509/AlgorithmId;

    aget-object v0, v1, v3

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_5c

    aget-object v0, v1, v4

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    aget-object v0, v1, v4

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    return-void

    :cond_54
    new-instance v0, Ljava/io/IOException;

    const-string v1, "encryptedData field overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "encryptionAlgorithm field overrun"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overrun, bytes = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {p0}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v2

    check-cast p1, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {p1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v3

    array-length v1, v2

    array-length v4, v3

    if-ne v1, v4, :cond_4

    move v1, v0

    :goto_18
    array-length v4, v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_19} :catch_24

    if-ge v1, v4, :cond_3

    aget-byte v4, v2, v1

    aget-byte v5, v3, v1

    if-ne v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :catch_24
    move-exception v1

    goto :goto_4
.end method

.method public getAlgorithm()Lsun1/security/x509/AlgorithmId;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun1/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    :goto_8
    check-cast v0, [B

    return-object v0

    :cond_b
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v2, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public getEncryptedData()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget-object v1, p0, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v3, v1

    if-lt v0, v3, :cond_9

    return v2

    :cond_9
    aget-byte v1, v1, v0

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3
.end method
