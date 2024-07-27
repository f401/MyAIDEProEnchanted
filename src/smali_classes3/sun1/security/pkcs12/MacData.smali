.class Lsun1/security/pkcs12/MacData;
.super Ljava/lang/Object;


# instance fields
.field private digest:[B

.field private digestAlgorithmName:Ljava/lang/String;

.field private digestAlgorithmParams:Ljava/security/AlgorithmParameters;

.field private encoded:[B

.field private iterations:I

.field private macSalt:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun1/security/pkcs12/MacData;->encoded:[B

    if-eqz p1, :cond_2

    invoke-static {p1}, Lsun1/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/pkcs12/MacData;->digestAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs12/MacData;->digestAlgorithmParams:Ljava/security/AlgorithmParameters;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun1/security/pkcs12/MacData;->digest:[B

    iput-object p3, p0, Lsun1/security/pkcs12/MacData;->macSalt:[B

    iput p4, p0, Lsun1/security/pkcs12/MacData;->iterations:I

    iput-object v2, p0, Lsun1/security/pkcs12/MacData;->encoded:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the digest parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the digest parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the algName parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lsun1/security/util/DerInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun1/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/pkcs12/MacData;->encoded:[B

    invoke-virtual {p1, v4}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v0

    new-instance v1, Lsun1/security/util/DerInputStream;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun1/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Lsun1/security/util/DerInputStream;->getSequence(I)[Lsun1/security/util/DerValue;

    move-result-object v1

    aget-object v2, v1, v3

    invoke-static {v2}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v2

    invoke-virtual {v2}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun1/security/pkcs12/MacData;->digestAlgorithmName:Ljava/lang/String;

    invoke-virtual {v2}, Lsun1/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lsun1/security/pkcs12/MacData;->digestAlgorithmParams:Ljava/security/AlgorithmParameters;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun1/security/pkcs12/MacData;->digest:[B

    aget-object v1, v0, v5

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun1/security/pkcs12/MacData;->macSalt:[B

    array-length v1, v0

    if-le v1, v4, :cond_0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v0

    iput v0, p0, Lsun1/security/pkcs12/MacData;->iterations:I

    :goto_0
    return-void

    :cond_0
    iput v5, p0, Lsun1/security/pkcs12/MacData;->iterations:I

    goto :goto_0
.end method


# virtual methods
.method getDigest()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs12/MacData;->digest:[B

    return-object v0
.end method

.method getDigestAlgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs12/MacData;->digestAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x30

    iget-object v0, p0, Lsun1/security/pkcs12/MacData;->encoded:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, [B

    return-object v0

    :cond_0
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun1/security/pkcs12/MacData;->digestAlgorithmName:Ljava/lang/String;

    invoke-static {v3}, Lsun1/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun1/security/x509/AlgorithmId;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v3, p0, Lsun1/security/pkcs12/MacData;->digest:[B

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v1, v4, v2}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    iget-object v2, p0, Lsun1/security/pkcs12/MacData;->macSalt:[B

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    iget v2, p0, Lsun1/security/pkcs12/MacData;->iterations:I

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v0, v4, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs12/MacData;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getIterations()I
    .registers 2

    iget v0, p0, Lsun1/security/pkcs12/MacData;->iterations:I

    return v0
.end method

.method getSalt()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs12/MacData;->macSalt:[B

    return-object v0
.end method
