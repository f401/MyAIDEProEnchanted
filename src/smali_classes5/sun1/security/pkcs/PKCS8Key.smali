.class public Lsun1/security/pkcs/PKCS8Key;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field public static final version:Ljava/math/BigInteger;


# instance fields
.field protected algid:Lsun1/security/x509/AlgorithmId;

.field protected encodedKey:[B

.field protected key:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lsun1/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildPKCS8Key(Lsun1/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
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

    invoke-static {v1, p0, p1}, Lsun1/security/pkcs/PKCS8Key;->encode(Lsun1/security/util/DerOutputStream;Lsun1/security/x509/AlgorithmId;[B)V

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :try_start_12
    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1d} :catch_1f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_12 .. :try_end_1d} :catch_9b

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v1

    :goto_20
    const-string v1, ""

    :try_start_22
    const-string v2, "JKS"

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_7b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PrivateKey.PKCS#8."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_3f} :catch_5a
    .catch Ljava/lang/InstantiationException; {:try_start_22 .. :try_end_3f} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_3f} :catch_81

    move-result-object v1

    if-eqz v1, :cond_73

    :try_start_42
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_45} :catch_65
    .catch Ljava/lang/InstantiationException; {:try_start_42 .. :try_end_45} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_45} :catch_81

    move-result-object v2

    :goto_46
    if-eqz v2, :cond_4c

    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :cond_4c
    instance-of v2, v0, Lsun1/security/pkcs/PKCS8Key;

    if-eqz v2, :cond_5b

    check-cast v0, Lsun1/security/pkcs/PKCS8Key;

    iput-object p0, v0, Lsun1/security/pkcs/PKCS8Key;->algid:Lsun1/security/x509/AlgorithmId;

    iput-object p1, v0, Lsun1/security/pkcs/PKCS8Key;->key:[B

    invoke-virtual {v0}, Lsun1/security/pkcs/PKCS8Key;->parseKeyBits()V
    :try_end_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_59} :catch_5a
    .catch Ljava/lang/InstantiationException; {:try_start_48 .. :try_end_59} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_59} :catch_81

    goto :goto_1e

    :catch_5a
    move-exception v0

    :cond_5b
    :goto_5b
    new-instance v0, Lsun1/security/pkcs/PKCS8Key;

    invoke-direct {v0}, Lsun1/security/pkcs/PKCS8Key;-><init>()V

    iput-object p0, v0, Lsun1/security/pkcs/PKCS8Key;->algid:Lsun1/security/x509/AlgorithmId;

    iput-object p1, v0, Lsun1/security/pkcs/PKCS8Key;->key:[B

    goto :goto_1e

    :catch_65
    move-exception v2

    :try_start_66
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_46

    :cond_71
    move-object v2, v0

    goto :goto_46

    :cond_73
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0

    :catch_79
    move-exception v0

    goto :goto_5b

    :cond_7b
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_81
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_81} :catch_5a
    .catch Ljava/lang/InstantiationException; {:try_start_66 .. :try_end_81} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_81} :catch_81

    :catch_81
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

    :catch_9b
    move-exception v1

    goto :goto_20
.end method

.method static encode(Lsun1/security/util/DerOutputStream;Lsun1/security/x509/AlgorithmId;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    sget-object v1, Lsun1/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    invoke-virtual {p1, v0}, Lsun1/security/x509/AlgorithmId;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0, p2}, Lsun1/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void
.end method

.method public static parseKey(Lsun1/security/util/DerValue;)Ljava/security/PrivateKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_66

    iget-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lsun1/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    :try_start_1e
    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getOctetString()[B

    move-result-object v1

    invoke-static {v0, v1}, Lsun1/security/pkcs/PKCS8Key;->buildPKCS8Key(Lsun1/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    :try_end_27
    .catch Ljava/security/InvalidKeyException; {:try_start_1e .. :try_end_27} :catch_39

    move-result-object v0

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_31

    return-object v0

    :cond_31
    new-instance v0, Ljava/io/IOException;

    const-string v1, "excess private key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_39
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupt private key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version mismatch: (supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parsed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupt private key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun1/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_73

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lsun1/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-static {v1}, Lsun1/security/x509/AlgorithmId;->parse(Lsun1/security/util/DerValue;)Lsun1/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/pkcs/PKCS8Key;->algid:Lsun1/security/x509/AlgorithmId;

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun1/security/pkcs/PKCS8Key;->key:[B

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS8Key;->parseKeyBits()V

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    return-void

    :cond_36
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "version mismatch: (supported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", parsed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lsun1/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_5a

    :catch_5a
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

    :cond_73
    :try_start_73
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "invalid key format"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_5a
.end method

.method public final encode(Lsun1/security/util/DerOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/PKCS8Key;->algid:Lsun1/security/x509/AlgorithmId;

    iget-object v1, p0, Lsun1/security/pkcs/PKCS8Key;->key:[B

    invoke-static {p1, v0, v1}, Lsun1/security/pkcs/PKCS8Key;->encode(Lsun1/security/util/DerOutputStream;Lsun1/security/x509/AlgorithmId;[B)V

    return-void
.end method

.method public encode()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/pkcs/PKCS8Key;->encodedKey:[B

    if-nez v0, :cond_12

    :try_start_4
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/pkcs/PKCS8Key;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/pkcs/PKCS8Key;->encodedKey:[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_1b

    :cond_12
    iget-object v0, p0, Lsun1/security/pkcs/PKCS8Key;->encodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :catch_1b
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

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Ljava/security/Key;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lsun1/security/pkcs/PKCS8Key;->encodedKey:[B

    if-eqz v0, :cond_17

    :goto_c
    check-cast p1, Ljava/security/Key;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    goto :goto_3

    :cond_17
    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v0

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/pkcs/PKCS8Key;->algid:Lsun1/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS8Key;->encode()[B
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_4} :catch_a
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    :goto_5
    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_6
    array-length v3, v2

    if-lt v0, v3, :cond_a

    return v1

    :cond_a
    aget-byte v3, v2, v0

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method protected parseKeyBits()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun1/security/pkcs/PKCS8Key;->encode()[B

    return-void
.end method
