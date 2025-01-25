.class public Lsun1/security/x509/KeyIdentifier;
.super Ljava/lang/Object;


# instance fields
.field private octetString:[B


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/util/DerValue;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3e

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    :try_start_25
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2a} :catch_35

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    return-void

    :catch_35
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA1 not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PublicKey value is not a valid X.509 public key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    return-void
.end method


# virtual methods
.method encode(Lsun1/security/util/DerOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/KeyIdentifier;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lsun1/security/x509/KeyIdentifier;

    iget-object v0, p1, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    iget-object v1, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_3
.end method

.method public getIdentifier()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

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
    iget-object v1, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    array-length v3, v1

    if-lt v2, v3, :cond_9

    return v0

    :cond_9
    aget-byte v1, v1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyIdentifier [\n"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v0, v2}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
