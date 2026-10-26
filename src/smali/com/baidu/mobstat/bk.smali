.class public final Lcom/baidu/mobstat/bk;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/security/SecureRandom;

.field private final d:I

.field private e:Ljava/security/MessageDigest;

.field private f:Ljava/security/MessageDigest;

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/bk;->h:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/bk;->a:I

    iput p2, p0, Lcom/baidu/mobstat/bk;->b:I

    iput-object p3, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    const/16 v0, 0x40

    if-lt p2, v0, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string v3, "SHA-1"

    if-eqz p4, :cond_2

    :try_start_0
    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MGF1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PSpecified"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v2

    move-object v0, v1

    :goto_0
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bk;->e:Ljava/security/MessageDigest;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->e:Ljava/security/MessageDigest;

    invoke-static {v1, v2}, Lcom/baidu/mobstat/bk;->a(Ljava/security/MessageDigest;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bk;->g:[B

    add-int/lit8 v2, p2, -0x2

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/baidu/mobstat/bk;->d:I

    if-lez v1, :cond_3

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported pSource algo: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Digest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :try_start_2
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported MGF algo: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    const/4 v1, 0x0

    const-string v0, "SHA-1"

    move-object v2, v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key is too short for encryption using OAEPPadding with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and MGF1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid padding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    add-int/lit8 p2, p2, -0xb

    :cond_6
    iput p2, p0, Lcom/baidu/mobstat/bk;->d:I

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Padded size must be at least 64"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(IILjava/security/SecureRandom;)Lcom/baidu/mobstat/bk;
    .locals 2

    new-instance v0, Lcom/baidu/mobstat/bk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/baidu/mobstat/bk;-><init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-object v0
.end method

.method public static a(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lcom/baidu/mobstat/bk;
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/bk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;-><init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-object v0
.end method

.method private a([BII[BII)V
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x14

    const/4 v0, 0x4

    new-array v4, v0, [B

    new-array v5, v8, [B

    move v3, p5

    move v2, p6

    :cond_0
    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-virtual {v0, v5, v6, v7}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_1

    if-lez v2, :cond_1

    aget-byte v6, p4, v3

    aget-byte v7, v5, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_0

    const/4 v0, 0x3

    :goto_1
    aget-byte v6, v4, v0

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    if-nez v6, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/security/DigestException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private static a(Ljava/security/MessageDigest;[B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/bk;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private c([B)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    new-array v4, v1, [B

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    add-int/lit8 v1, v1, -0x3

    array-length v2, p1

    sub-int/2addr v1, v2

    aput-byte v3, v4, v3

    iget v2, p0, Lcom/baidu/mobstat/bk;->a:I

    int-to-byte v3, v2

    aput-byte v3, v4, v5

    const/4 v3, 0x2

    if-ne v2, v5, :cond_0

    :goto_0
    if-lez v1, :cond_4

    aput-byte v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    if-nez v2, :cond_1

    sget-object v2, Lcom/baidu/mobstat/bg;->a:Ljava/security/SecureRandom;

    iput-object v2, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    :cond_1
    const/16 v2, 0x40

    new-array v5, v2, [B

    move v2, v1

    :goto_1
    if-lez v2, :cond_4

    :goto_2
    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0x3f

    :cond_2
    add-int/lit8 v1, v0, -0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_3

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method private d([B)[B
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget-byte v0, p1, v4

    if-nez v0, :cond_6

    aget-byte v0, p1, v3

    iget v1, p0, Lcom/baidu/mobstat/bk;->a:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/bk;->d:I

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string too short"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v2, p1

    if-eq v1, v2, :cond_4

    iget v2, p0, Lcom/baidu/mobstat/bk;->a:I

    if-ne v2, v3, :cond_2

    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Padding byte not 0xff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string not terminated"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blocktype mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Data must start with zero"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e([B)[B
    .locals 14

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/mobstat/bg;->a:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bk;->g:[B

    array-length v3, v0

    new-array v0, v3, [B

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v4, p0, Lcom/baidu/mobstat/bk;->b:I

    new-array v1, v4, [B

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v5

    iget v0, p0, Lcom/baidu/mobstat/bk;->b:I

    array-length v4, p1

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/baidu/mobstat/bk;->g:[B

    invoke-static {v4, v7, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, -0x1

    aput-byte v2, v1, v4

    array-length v4, p1

    invoke-static {p1, v7, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    move-object v7, p0

    move-object v8, v1

    move v9, v5

    move v10, v6

    move-object v11, v1

    move v12, v2

    move v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    return-object v1
.end method

.method private f([B)[B
    .locals 14

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->g:[B

    array-length v6, v0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_5

    add-int/lit8 v2, v6, 0x1

    array-length v0, p1

    sub-int v3, v0, v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    const/4 v9, 0x1

    move-object v7, p0

    move-object v8, p1

    move v10, v6

    move-object v11, p1

    move v12, v2

    move v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->g:[B

    aget-byte v1, v1, v0

    add-int v3, v2, v0

    aget-byte v3, p1, v3

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "lHash mismatch"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, v2, v6

    :cond_2
    aget-byte v1, p1, v0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-lt v0, v1, :cond_2

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string not terminated"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_4
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string not terminated by 0x01 byte"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Data must start with zero"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/bk;->d:I

    return v0
.end method

.method public a([B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcom/baidu/mobstat/bk;->d:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/baidu/mobstat/bk;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->e([B)[B

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->c([B)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data must be shorter than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/bk;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a([BII)[B
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/baidu/mobstat/bg;->a([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/bk;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/baidu/mobstat/bk;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->f([B)[B

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->d([B)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Padded length must be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
