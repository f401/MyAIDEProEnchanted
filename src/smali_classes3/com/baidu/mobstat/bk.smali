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
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/bk;->h:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/bk;->a:I

    iput p2, p0, Lcom/baidu/mobstat/bk;->b:I

    iput-object p3, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    const/16 v0, 0x40

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Padded size must be at least 64"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v0, p2, -0xb

    iput v0, p0, Lcom/baidu/mobstat/bk;->d:I

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iput p2, p0, Lcom/baidu/mobstat/bk;->d:I

    goto :goto_0

    :pswitch_2
    const-string v2, "SHA-1"

    const-string v1, "SHA-1"

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MGF1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported MGF algo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Digest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PSpecified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported pSource algo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v0

    :cond_4
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/mobstat/bk;->e:Ljava/security/MessageDigest;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, p0, Lcom/baidu/mobstat/bk;->e:Ljava/security/MessageDigest;

    invoke-static {v3, v0}, Lcom/baidu/mobstat/bk;->a(Ljava/security/MessageDigest;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bk;->g:[B

    add-int/lit8 v0, p2, -0x2

    iget-object v3, p0, Lcom/baidu/mobstat/bk;->g:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/baidu/mobstat/bk;->d:I

    iget v0, p0, Lcom/baidu/mobstat/bk;->d:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key is too short for encryption using OAEPPadding with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and MGF1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(IILjava/security/SecureRandom;)Lcom/baidu/mobstat/bk;
    .registers 5

    new-instance v0, Lcom/baidu/mobstat/bk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/baidu/mobstat/bk;-><init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-object v0
.end method

.method public static a(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lcom/baidu/mobstat/bk;
    .registers 5

    new-instance v0, Lcom/baidu/mobstat/bk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;-><init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-object v0
.end method

.method private a([BII[BII)V
    .registers 15

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v4, v0, [B

    const/16 v0, 0x14

    new-array v5, v0, [B

    move v2, p5

    move v3, p6

    :cond_0
    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    if-lez v3, :cond_1

    aget-byte v6, p4, v2

    aget-byte v7, v5, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/security/DigestException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-lez v3, :cond_0

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_1
    aget-byte v6, v4, v0

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    if-nez v6, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static a(Ljava/security/MessageDigest;[B)[B
    .registers 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/baidu/mobstat/bk;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/bk;->h:Ljava/util/Map;

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
    .registers 9

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/baidu/mobstat/bk;->b:I

    new-array v4, v2, [B

    iget v2, p0, Lcom/baidu/mobstat/bk;->b:I

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/baidu/mobstat/bk;->b:I

    add-int/lit8 v2, v2, -0x3

    array-length v3, p1

    sub-int v3, v2, v3

    aput-byte v5, v4, v5

    iget v2, p0, Lcom/baidu/mobstat/bk;->a:I

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    iget v2, p0, Lcom/baidu/mobstat/bk;->a:I

    if-ne v2, v6, :cond_0

    :goto_0
    if-lez v3, :cond_4

    aput-byte v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

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
    if-lez v3, :cond_4

    :goto_2
    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v0, -0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_3

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method private d([B)[B
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget-byte v0, p1, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Data must start with zero"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    aget-byte v1, p1, v3

    iget v2, p0, Lcom/baidu/mobstat/bk;->a:I

    if-eq v1, v2, :cond_2

    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocktype mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_3

    array-length v0, p1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/bk;->d:I

    if-le v0, v1, :cond_5

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string too short"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v2, p1

    if-ne v1, v2, :cond_4

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string not terminated"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v2, p0, Lcom/baidu/mobstat/bk;->a:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    new-instance v1, Ljavax/crypto/BadPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding byte not 0xff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private e([B)[B
    .registers 16

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

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    new-array v1, v1, [B

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v3, 0x1

    array-length v0, v1

    sub-int v6, v0, v5

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
    .registers 16

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->g:[B

    array-length v6, v0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Data must start with zero"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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
    if-ge v0, v6, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->g:[B

    aget-byte v1, v1, v0

    add-int v3, v2, v0

    aget-byte v3, p1, v3

    if-eq v1, v3, :cond_1

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "lHash mismatch"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int v0, v2, v6

    :cond_3
    aget-byte v1, p1, v0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-lt v0, v1, :cond_3

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string not terminated"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Padding string not terminated by 0x01 byte"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/bk;->d:I

    return v0
.end method

.method public a([B)[B
    .registers 5

    array-length v0, p1

    iget v1, p0, Lcom/baidu/mobstat/bk;->d:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data must be shorter than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/bk;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/bk;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->c([B)[B

    move-result-object p1

    :goto_0
    :pswitch_1
    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->e([B)[B

    move-result-object p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a([BII)[B
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/baidu/mobstat/bg;->a([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/bk;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([B)[B
    .registers 5

    array-length v0, p1

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padded length must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/bk;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/bk;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->d([B)[B

    move-result-object p1

    :goto_0
    :pswitch_1
    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->f([B)[B

    move-result-object p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
