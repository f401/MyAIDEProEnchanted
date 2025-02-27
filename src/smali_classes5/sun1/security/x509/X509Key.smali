.class public Lsun1/security/x509/X509Key;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field protected algid:Lsun1/security/x509/AlgorithmId;

.field private bitStringKey:Lsun1/security/util/BitArray;

.field protected encodedKey:[B

.field protected key:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private unusedBits:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/X509Key;->key:[B

    const/4 v0, 0x0

    iput v0, p0, Lsun1/security/x509/X509Key;->unusedBits:I

    iput-object v1, p0, Lsun1/security/x509/X509Key;->bitStringKey:Lsun1/security/util/BitArray;

    return-void
.end method

.method private constructor <init>(Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun1/security/x509/X509Key;->key:[B

    const/4 v0, 0x0

    iput v0, p0, Lsun1/security/x509/X509Key;->unusedBits:I

    iput-object v1, p0, Lsun1/security/x509/X509Key;->bitStringKey:Lsun1/security/util/BitArray;

    iput-object p1, p0, Lsun1/security/x509/X509Key;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {p0, p2}, Lsun1/security/x509/X509Key;->setKey(Lsun1/security/util/BitArray;)V

    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->encode()[B

    return-void
.end method

.method static buildX509Key(Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)Ljava/security/PublicKey;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-static {v1, p0, p1}, Lsun1/security/x509/X509Key;->encode(Lsun1/security/util/DerOutputStream;Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)V

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    :try_start_12
    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1d} :catch_2a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_12 .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2a
    move-exception v1

    const-string v1, ""

    :try_start_2d
    const-string v2, "SUN"

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_83

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PublicKey.X.509."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_4a} :catch_66
    .catch Ljava/lang/InstantiationException; {:try_start_2d .. :try_end_4a} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_4a} :catch_89

    move-result-object v1

    if-eqz v1, :cond_7b

    :try_start_4d
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_50} :catch_6d
    .catch Ljava/lang/InstantiationException; {:try_start_4d .. :try_end_50} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_50} :catch_89

    move-result-object v2

    :goto_51
    if-eqz v2, :cond_57

    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :cond_57
    instance-of v2, v0, Lsun1/security/x509/X509Key;

    if-eqz v2, :cond_67

    check-cast v0, Lsun1/security/x509/X509Key;

    iput-object p0, v0, Lsun1/security/x509/X509Key;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0, p1}, Lsun1/security/x509/X509Key;->setKey(Lsun1/security/util/BitArray;)V

    invoke-virtual {v0}, Lsun1/security/x509/X509Key;->parseKeyBits()V
    :try_end_65
    .catch Ljava/lang/ClassNotFoundException; {:try_start_53 .. :try_end_65} :catch_66
    .catch Ljava/lang/InstantiationException; {:try_start_53 .. :try_end_65} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_53 .. :try_end_65} :catch_89

    goto :goto_1e

    :catch_66
    move-exception v0

    :cond_67
    :goto_67
    new-instance v0, Lsun1/security/x509/X509Key;

    invoke-direct {v0, p0, p1}, Lsun1/security/x509/X509Key;-><init>(Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)V

    goto :goto_1e

    :catch_6d
    move-exception v2

    :try_start_6e
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_51

    :cond_79
    move-object v2, v0

    goto :goto_51

    :cond_7b
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0

    :catch_81
    move-exception v0

    goto :goto_67

    :cond_83
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_89
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6e .. :try_end_89} :catch_66
    .catch Ljava/lang/InstantiationException; {:try_start_6e .. :try_end_89} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_6e .. :try_end_89} :catch_89

    :catch_89
    move-exception v0

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " [internal error]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encode(Lsun1/security/util/DerOutputStream;Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0, p2}, Lsun1/security/util/DerOutputStream;->putUnalignedBitString(Lsun1/security/util/BitArray;)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public static parse(Lsun1/security/util/DerValue;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    :try_start_10
    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v1

    invoke-static {v0, v1}, Lsun1/security/x509/X509Key;->buildX509Key(Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)Ljava/security/PublicKey;
    :try_end_19
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_19} :catch_2b

    move-result-object v0

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_23

    return-object v0

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "excess subject key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subject key, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupt subject key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final encode(Lsun1/security/util/DerOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509Key;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->getKey()Lsun1/security/util/BitArray;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lsun1/security/x509/X509Key;->encode(Lsun1/security/util/DerOutputStream;Lsun1/security/x509/AlgorithmId;Lsun1/security/util/BitArray;)V

    return-void
.end method

.method public encode()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Ljava/security/Key;

    if-eqz v0, :cond_23

    :try_start_8
    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v1

    instance-of v0, p1, Lsun1/security/x509/X509Key;

    if-eqz v0, :cond_1b

    check-cast p1, Lsun1/security/x509/X509Key;

    invoke-virtual {p1}, Lsun1/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    :goto_16
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_3

    :cond_1b
    check-cast p1, Ljava/security/Key;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B
    :try_end_20
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_16

    :catch_22
    move-exception v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509Key;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getEncodedInternal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/X509Key;->encodedKey:[B

    if-nez v0, :cond_12

    :try_start_4
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/x509/X509Key;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_13

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509Key;->encodedKey:[B

    :cond_12
    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "X.509"

    return-object v0
.end method

.method protected getKey()Lsun1/security/util/BitArray;
    .registers 5

    iget-object v0, p0, Lsun1/security/x509/X509Key;->key:[B

    new-instance v1, Lsun1/security/util/BitArray;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lsun1/security/x509/X509Key;->unusedBits:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, v0}, Lsun1/security/util/BitArray;-><init>(I[B)V

    iput-object v1, p0, Lsun1/security/x509/X509Key;->bitStringKey:Lsun1/security/util/BitArray;

    invoke-virtual {v1}, Lsun1/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/BitArray;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v3

    array-length v0, v3

    move v2, v1

    :goto_7
    array-length v4, v3
    :try_end_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_8} :catch_15

    if-lt v2, v4, :cond_b

    :goto_a
    return v0

    :cond_b
    aget-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v4, v4, 0x25

    add-int/2addr v0, v4

    goto :goto_7

    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_a
.end method

.method protected parseKeyBits()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/x509/X509Key;->encode()[B

    return-void
.end method

.method protected setKey(Lsun1/security/util/BitArray;)V
    .registers 3

    invoke-virtual {p1}, Lsun1/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/util/BitArray;

    iput-object v0, p0, Lsun1/security/x509/X509Key;->bitStringKey:Lsun1/security/util/BitArray;

    invoke-virtual {p1}, Lsun1/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509Key;->key:[B

    invoke-virtual {p1}, Lsun1/security/util/BitArray;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_17
    iput v0, p0, Lsun1/security/x509/X509Key;->unusedBits:I

    return-void

    :cond_1a
    rsub-int/lit8 v0, v0, 0x8

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun1/misc/HexDumpEncoder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "algorithm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/x509/X509Key;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun1/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", unparsed keybits = \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun1/security/x509/X509Key;->key:[B

    invoke-virtual {v0, v2}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
