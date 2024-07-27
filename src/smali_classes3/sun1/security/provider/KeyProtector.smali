.class final Lsun1/security/provider/KeyProtector;
.super Ljava/lang/Object;


# instance fields
.field private md:Ljava/security/MessageDigest;

.field private passwdBytes:[B


# direct methods
.method public constructor <init>([C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p1

    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    add-int/lit8 v3, v0, 0x1

    aget-char v4, p1, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    aget-char v4, p1, v2

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    iget-object v0, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    :cond_0
    return-void
.end method

.method public protect(Ljava/security/Key;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/16 v11, 0x14

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const-string v0, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v0, v7

    div-int/lit8 v0, v0, 0x14

    array-length v1, v7

    rem-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v6, v11, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v8, v7

    new-array v9, v8, [B

    move v3, v2

    move v4, v2

    move-object v5, v6

    :goto_0
    if-lt v4, v0, :cond_2

    array-length v1, v7

    new-array v3, v1, [B

    move v0, v2

    :goto_1
    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v1, 0x14

    add-int/lit8 v4, v0, 0x14

    new-array v4, v4, [B

    invoke-static {v6, v2, v4, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v2, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    iget-object v3, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    iput-object v1, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget-object v3, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    array-length v3, v1

    invoke-static {v1, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v0, Lsun1/security/x509/AlgorithmId;

    new-instance v1, Lsun1/security/util/ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.42.2.17.1.1"

    invoke-direct {v1, v2}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun1/security/x509/AlgorithmId;-><init>(Lsun1/security/util/ObjectIdentifier;)V

    new-instance v1, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v1, v0, v4}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;-><init>(Lsun1/security/x509/AlgorithmId;[B)V

    invoke-virtual {v1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-byte v4, v7, v0

    aget-byte v5, v9, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    iget-object v10, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    iget-object v1, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v1, v0, -0x1

    if-ge v4, v1, :cond_3

    array-length v1, v5

    :goto_2
    invoke-static {v5, v2, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v3, 0x14

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_3
    sub-int v1, v8, v3

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Cannot get key bytes, encoding not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Cannot get key bytes, not PKCS#8 encoded"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plaintext key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recover(Lsun1/security/pkcs/EncryptedPrivateKeyInfo;)Ljava/security/Key;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/16 v4, 0x14

    const/4 v1, 0x0

    invoke-virtual {p1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getAlgorithm()Lsun1/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/x509/AlgorithmId;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.3.6.1.4.1.42.2.17.1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lsun1/security/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    new-array v2, v4, [B

    invoke-static {v6, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v6

    add-int/lit8 v0, v0, -0x14

    add-int/lit8 v7, v0, -0x14

    div-int/lit8 v0, v7, 0x14

    rem-int/lit8 v3, v7, 0x14

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v8, v7, [B

    invoke-static {v6, v4, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v9, v7, [B

    move v3, v1

    move v4, v1

    move-object v5, v2

    :goto_0
    if-lt v3, v0, :cond_4

    new-array v2, v7, [B

    move v0, v1

    :goto_1
    if-lt v0, v7, :cond_3

    iget-object v0, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    iget-object v3, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    iget-object v0, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v0, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    move v0, v1

    :goto_2
    array-length v1, v3

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lsun1/security/util/DerValue;

    invoke-direct {v0, v2}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-static {v0}, Lsun1/security/pkcs/PKCS8Key;->parseKey(Lsun1/security/util/DerValue;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-byte v1, v3, v0

    add-int/lit8 v4, v7, 0x14

    add-int/2addr v4, v0

    aget-byte v4, v6, v4

    if-ne v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Cannot recover key"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-byte v3, v8, v0

    aget-byte v4, v9, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    iget-object v10, p0, Lsun1/security/provider/KeyProtector;->passwdBytes:[B

    invoke-virtual {v2, v10}, Ljava/security/MessageDigest;->update([B)V

    iget-object v2, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    iget-object v2, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    iget-object v2, p0, Lsun1/security/provider/KeyProtector;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v2, v0, -0x1

    if-ge v3, v2, :cond_5

    array-length v2, v5

    :goto_3
    invoke-static {v5, v1, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v4, 0x14

    move v3, v2

    goto/16 :goto_0

    :cond_5
    sub-int v2, v7, v4

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Unsupported key protection algorithm"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
