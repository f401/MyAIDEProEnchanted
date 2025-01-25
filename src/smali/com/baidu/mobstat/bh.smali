.class public final Lcom/baidu/mobstat/bh;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/mobstat/bk;

.field private e:Ljavax/crypto/spec/OAEPParameterSpec;

.field private f:[B

.field private g:I

.field private h:I

.field private i:Lcom/baidu/mobstat/bi;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/mobstat/bh;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->e:Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v0, "SHA-1"

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->j:Ljava/lang/String;

    const-string v0, "PKCS1Padding"

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    return-void
.end method

.method private a(ILcom/baidu/mobstat/bi;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_24

    if-eq p1, v3, :cond_22

    if-eq p1, v1, :cond_24

    if-ne p1, v2, :cond_e

    goto :goto_22

    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown mode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    :goto_22
    const/4 p1, 0x0

    goto :goto_25

    :cond_24
    const/4 p1, 0x1

    :goto_25
    instance-of v5, p2, Lcom/baidu/mobstat/bi;

    if-eqz v5, :cond_c3

    if-eqz p1, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x4

    :goto_2e
    iput v5, p0, Lcom/baidu/mobstat/bh;->b:I

    iput-object p2, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    invoke-interface {p2}, Lcom/baidu/mobstat/bi;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mobstat/bg;->a(Ljava/math/BigInteger;)I

    move-result p2

    iput p2, p0, Lcom/baidu/mobstat/bh;->h:I

    iput v0, p0, Lcom/baidu/mobstat/bh;->g:I

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    const-string v5, "NoPadding"

    const-string v6, "Parameters not supported"

    if-ne v0, v5, :cond_59

    if-nez p4, :cond_53

    invoke-static {v1, p2, p3}, Lcom/baidu/mobstat/bk;->a(IILjava/security/SecureRandom;)Lcom/baidu/mobstat/bk;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_ba

    :cond_53
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    const-string v5, "PKCS1Padding"

    if-ne v0, v5, :cond_81

    if-nez p4, :cond_7b

    iget p4, p0, Lcom/baidu/mobstat/bh;->b:I

    if-gt p4, v3, :cond_64

    goto :goto_65

    :cond_64
    const/4 v3, 0x1

    :goto_65
    invoke-static {v3, p2, p3}, Lcom/baidu/mobstat/bk;->a(IILjava/security/SecureRandom;)Lcom/baidu/mobstat/bk;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    if-eqz p1, :cond_76

    invoke-virtual {p3}, Lcom/baidu/mobstat/bk;->a()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_ba

    :cond_76
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_ba

    :cond_7b
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_81
    iget v0, p0, Lcom/baidu/mobstat/bh;->b:I

    if-eq v0, v1, :cond_bb

    if-eq v0, v2, :cond_bb

    if-eqz p4, :cond_98

    instance-of v0, p4, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_90

    check-cast p4, Ljavax/crypto/spec/OAEPParameterSpec;

    goto :goto_a5

    :cond_90
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Wrong Parameters for OAEP Padding"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    new-instance p4, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->j:Ljava/lang/String;

    sget-object v1, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "MGF1"

    invoke-direct {p4, v0, v4, v1, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    :goto_a5
    invoke-static {v2, p2, p3, p4}, Lcom/baidu/mobstat/bk;->a(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lcom/baidu/mobstat/bk;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    if-eqz p1, :cond_b6

    invoke-virtual {p3}, Lcom/baidu/mobstat/bk;->a()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_ba

    :cond_b6
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->f:[B

    :goto_ba
    return-void

    :cond_bb
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "OAEP cannot be used to sign or verify signatures"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c3
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "only support helios key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()[B
    .registers 7

    iget v0, p0, Lcom/baidu/mobstat/bh;->g:I

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->f:[B

    array-length v2, v1

    if-gt v0, v2, :cond_52

    const/4 v2, 0x0

    :try_start_8
    iget v3, p0, Lcom/baidu/mobstat/bh;->b:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_4e

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x2

    const-string v5, "only verify supported"

    if-eq v3, v4, :cond_39

    const/4 v4, 0x3

    if-eq v3, v4, :cond_33

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2b

    :try_start_18
    invoke-static {v1, v2, v0}, Lcom/baidu/mobstat/bg;->a([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bg;->a([BLcom/baidu/mobstat/bi;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bk;->b([B)[B

    move-result-object v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_4e

    iput v2, p0, Lcom/baidu/mobstat/bh;->g:I

    return-object v0

    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v3, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    invoke-virtual {v3, v1, v2, v0}, Lcom/baidu/mobstat/bk;->a([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bg;->a([BLcom/baidu/mobstat/bi;)[B

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_4e

    iput v2, p0, Lcom/baidu/mobstat/bh;->g:I

    return-object v0

    :catchall_4e
    move-exception v0

    iput v2, p0, Lcom/baidu/mobstat/bh;->g:I

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data must not be longer than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->f:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b([BII)V
    .registers 8

    if-eqz p3, :cond_1a

    if-nez p1, :cond_5

    goto :goto_1a

    :cond_5
    iget v0, p0, Lcom/baidu/mobstat/bh;->g:I

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->f:[B

    add-int v2, v0, p3

    array-length v3, v1

    if-le v2, v3, :cond_12

    array-length p1, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_12
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/baidu/mobstat/bh;->g:I

    add-int/2addr p1, p3

    :goto_18
    iput p1, p0, Lcom/baidu/mobstat/bh;->g:I

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public a(ILcom/baidu/mobstat/bi;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/bh;->a(ILcom/baidu/mobstat/bi;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    const-string p3, "Wrong parameters"

    invoke-direct {p2, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_11

    :cond_9
    const-string v0, "PKCS1Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_11
    iput-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    goto :goto_26

    :cond_14
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaeppadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "OAEP"

    if-eqz v1, :cond_27

    iput-object v2, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    :goto_26
    return-void

    :cond_27
    const-string v1, "oaepwith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "andmgf1padding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iput-object v2, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xe

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageDigest not available for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Padding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([BII)[B
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/bh;->b([BII)V

    invoke-direct {p0}, Lcom/baidu/mobstat/bh;->a()[B

    move-result-object p1

    return-object p1
.end method
