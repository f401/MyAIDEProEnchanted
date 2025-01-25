.class public final Lcom/baidu/mobstat/bk;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/bk;->a:I

    iput p2, p0, Lcom/baidu/mobstat/bk;->b:I

    iput-object p3, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    const/16 p3, 0x40

    if-lt p2, p3, :cond_e6

    const/4 p3, 0x1

    if-eq p1, p3, :cond_e1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_e1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_cd

    const-string p1, "SHA-1"

    if-eqz p4, :cond_78

    :try_start_1d
    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MGF1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p4

    invoke-virtual {p4}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSpecified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    check-cast p4, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object p4

    goto :goto_7a

    :cond_4e
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported pSource algo: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_62
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported MGF algo: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_76
    move-exception p2

    goto :goto_b4

    :cond_78
    const/4 p4, 0x0

    move-object v0, p1

    :goto_7a
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bk;->e:Ljava/security/MessageDigest;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;
    :try_end_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_86} :catch_76

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->e:Ljava/security/MessageDigest;

    invoke-static {v1, p4}, Lcom/baidu/mobstat/bk;->a(Ljava/security/MessageDigest;[B)[B

    move-result-object p4

    iput-object p4, p0, Lcom/baidu/mobstat/bk;->g:[B

    sub-int/2addr p2, p3

    array-length p4, p4

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/baidu/mobstat/bk;->d:I

    if-lez p2, :cond_98

    goto :goto_e5

    :cond_98
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Key is too short for encryption using OAEPPadding with "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and MGF1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_b4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Digest "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not available"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_cd
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid padding: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e1
    add-int/lit8 p2, p2, -0xb

    :cond_e3
    iput p2, p0, Lcom/baidu/mobstat/bk;->d:I

    :goto_e5
    return-void

    :cond_e6
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Padded size must be at least 64"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 13

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x14

    new-array v2, v1, [B

    :cond_7
    if-lez p6, :cond_48

    iget-object v3, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v3, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    :try_start_13
    iget-object v3, p0, Lcom/baidu/mobstat/bk;->f:Ljava/security/MessageDigest;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_19
    .catch Ljava/security/DigestException; {:try_start_13 .. :try_end_19} :catch_3d

    :goto_19
    if-ge v4, v1, :cond_2c

    if-lez p6, :cond_2c

    aget-byte v3, p4, p5

    aget-byte v5, v2, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    add-int/lit8 p6, p6, -0x1

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2c
    if-lez p6, :cond_7

    const/4 v3, 0x3

    :goto_2f
    aget-byte v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    if-nez v4, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    :catch_3d
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/security/DigestException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_48
    return-void
.end method

.method private static a(Ljava/security/MessageDigest;[B)[B
    .registers 4

    if-eqz p1, :cond_b

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    goto :goto_22

    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/baidu/mobstat/bk;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_21

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_21
    move-object p0, v1

    :goto_22
    return-object p0
.end method

.method private c([B)[B
    .registers 8

    iget v0, p0, Lcom/baidu/mobstat/bk;->b:I

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/baidu/mobstat/bk;->b:I

    add-int/lit8 v0, v0, -0x3

    array-length p1, p1

    sub-int/2addr v0, p1

    aput-byte v3, v1, v3

    iget p1, p0, Lcom/baidu/mobstat/bk;->a:I

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, -0x1

    const/4 v4, 0x2

    if-ne p1, v3, :cond_25

    :goto_1d
    if-lez v0, :cond_4e

    aput-byte v2, v1, v4

    add-int/2addr v4, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_25
    iget-object p1, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    if-nez p1, :cond_2d

    sget-object p1, Lcom/baidu/mobstat/bg;->a:Ljava/security/SecureRandom;

    iput-object p1, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    :cond_2d
    const/16 p1, 0x40

    new-array p1, p1, [B

    :goto_31
    if-lez v0, :cond_4e

    :goto_33
    if-gez v2, :cond_3c

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v2, 0x3f

    :cond_3c
    add-int/lit8 v5, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_4c

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v4, v3

    move v2, v5

    goto :goto_31

    :cond_4c
    move v2, v5

    goto :goto_33

    :cond_4e
    return-object v1
.end method

.method private d([B)[B
    .registers 8

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_6a

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    iget v3, p0, Lcom/baidu/mobstat/bk;->a:I

    if-ne v2, v3, :cond_54

    const/4 v2, 0x2

    :goto_d
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-nez v2, :cond_2c

    array-length v1, p1

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/baidu/mobstat/bk;->d:I

    if-gt v1, v2, :cond_24

    new-array v2, v1, [B

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_24
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string too short"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    array-length v5, p1

    if-eq v3, v5, :cond_4c

    iget v5, p0, Lcom/baidu/mobstat/bk;->a:I

    if-ne v5, v1, :cond_4a

    if-ne v2, v4, :cond_36

    goto :goto_4a

    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Padding byte not 0xff: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    :goto_4a
    move v2, v3

    goto :goto_d

    :cond_4c
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string not terminated"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Blocktype mismatch: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Data must start with zero"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    goto :goto_73

    :goto_72
    throw p1

    :goto_73
    goto :goto_72
.end method

.method private e([B)[B
    .registers 13

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_8

    sget-object v0, Lcom/baidu/mobstat/bg;->a:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/bk;->g:[B

    array-length v0, v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, p0, Lcom/baidu/mobstat/bk;->b:I

    new-array v8, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v8, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v0, 0x1

    sub-int v10, v2, v9

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    array-length v2, p1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->g:[B

    invoke-static {v2, v3, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, -0x1

    aput-byte v4, v8, v2

    array-length v2, p1

    invoke-static {p1, v3, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v8

    move v4, v0

    move-object v5, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    const/4 v6, 0x1

    move v3, v9

    move v4, v10

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    return-object v8
.end method

.method private f([B)[B
    .registers 13

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->g:[B

    array-length v0, v0

    const/4 v8, 0x0

    aget-byte v1, p1, v8

    if-nez v1, :cond_5d

    add-int/lit8 v9, v0, 0x1

    array-length v1, p1

    sub-int v10, v1, v9

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v10

    move-object v5, p1

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    const/4 v3, 0x1

    move v4, v0

    move v6, v9

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/bk;->a([BII[BII)V

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_36

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->g:[B

    aget-byte v2, v2, v1

    add-int v3, v9, v1

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2e
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "lHash mismatch"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    add-int/2addr v9, v0

    :goto_37
    aget-byte v0, p1, v9

    if-nez v0, :cond_49

    add-int/lit8 v9, v9, 0x1

    array-length v0, p1

    if-ge v9, v0, :cond_41

    goto :goto_37

    :cond_41
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string not terminated"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    const/4 v1, 0x1

    add-int/2addr v9, v1

    if-ne v0, v1, :cond_55

    array-length v0, p1

    sub-int/2addr v0, v9

    new-array v1, v0, [B

    invoke-static {p1, v9, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_55
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string not terminated by 0x01 byte"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Data must start with zero"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
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

    const/4 v2, 0x1

    if-gt v0, v1, :cond_24

    iget v0, p0, Lcom/baidu/mobstat/bk;->a:I

    if-eq v0, v2, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->e([B)[B

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1e
    return-object p1

    :cond_1f
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->c([B)[B

    move-result-object p1

    return-object p1

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Data must be shorter than "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/mobstat/bk;->d:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BII)[B
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/baidu/mobstat/bg;->a([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/bk;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b([B)[B
    .registers 4

    array-length v0, p1

    iget v1, p0, Lcom/baidu/mobstat/bk;->b:I

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/baidu/mobstat/bk;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->f([B)[B

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1e
    return-object p1

    :cond_1f
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bk;->d([B)[B

    move-result-object p1

    return-object p1

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Padded length must be "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/mobstat/bk;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
