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
    .registers 13

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :goto_0
    instance-of v3, p2, Lcom/baidu/mobstat/bi;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    move v3, v1

    :goto_1
    iput v3, p0, Lcom/baidu/mobstat/bh;->b:I

    iput-object p2, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    iget-object v3, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    invoke-interface {v3}, Lcom/baidu/mobstat/bi;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bg;->a(Ljava/math/BigInteger;)I

    move-result v3

    iput v3, p0, Lcom/baidu/mobstat/bh;->h:I

    iput v2, p0, Lcom/baidu/mobstat/bh;->g:I

    iget-object v2, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    const-string v6, "NoPadding"

    if-ne v2, v6, :cond_3

    if-eqz p4, :cond_2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "only support helios key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v7, v3, p3}, Lcom/baidu/mobstat/bk;->a(IILjava/security/SecureRandom;)Lcom/baidu/mobstat/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    const-string v6, "PKCS1Padding"

    if-ne v2, v6, :cond_7

    if-eqz p4, :cond_4

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v2, p0, Lcom/baidu/mobstat/bh;->b:I

    if-gt v2, v5, :cond_5

    move v1, v5

    :cond_5
    invoke-static {v1, v3, p3}, Lcom/baidu/mobstat/bk;->a(IILjava/security/SecureRandom;)Lcom/baidu/mobstat/bk;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bk;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_2

    :cond_6
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/baidu/mobstat/bh;->b:I

    if-eq v1, v7, :cond_8

    iget v1, p0, Lcom/baidu/mobstat/bh;->b:I

    if-ne v1, v4, :cond_9

    :cond_8
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "OAEP cannot be used to sign or verify signatures"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz p4, :cond_b

    instance-of v1, p4, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v1, :cond_a

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong Parameters for OAEP Padding"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    check-cast p4, Ljavax/crypto/spec/OAEPParameterSpec;

    :goto_3
    invoke-static {v4, v3, p3, p4}, Lcom/baidu/mobstat/bk;->a(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lcom/baidu/mobstat/bk;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bk;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_2

    :cond_b
    new-instance p4, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->j:Ljava/lang/String;

    const-string v2, "MGF1"

    sget-object v5, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v6, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p4, v1, v2, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto :goto_3

    :cond_c
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()[B
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/baidu/mobstat/bh;->g:I

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->f:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data must not be longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bh;->f:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/baidu/mobstat/bh;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iput v4, p0, Lcom/baidu/mobstat/bh;->g:I

    throw v0

    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "only verify supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/mobstat/bh;->g:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/bg;->a([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bg;->a([BLcom/baidu/mobstat/bi;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bk;->b([B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iput v4, p0, Lcom/baidu/mobstat/bh;->g:I

    :goto_0
    return-object v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/bh;->d:Lcom/baidu/mobstat/bk;

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->f:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/mobstat/bh;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/bk;->a([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->i:Lcom/baidu/mobstat/bi;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bg;->a([BLcom/baidu/mobstat/bi;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    iput v4, p0, Lcom/baidu/mobstat/bh;->g:I

    goto :goto_0

    :pswitch_3
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "only verify supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b([BII)V
    .registers 6

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/baidu/mobstat/bh;->g:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->f:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/bh;->g:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/bh;->f:[B

    iget v1, p0, Lcom/baidu/mobstat/bh;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/baidu/mobstat/bh;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/baidu/mobstat/bh;->g:I

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/baidu/mobstat/bi;Ljava/security/SecureRandom;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/bh;->a(ILcom/baidu/mobstat/bi;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Wrong parameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NoPadding"

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "PKCS1Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PKCS1Padding"

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaeppadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "OAEP"

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "oaepwith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "andmgf1padding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OAEP"

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->c:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bh;->j:Ljava/lang/String;

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageDigest not available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BII)[B
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/bh;->b([BII)V

    invoke-direct {p0}, Lcom/baidu/mobstat/bh;->a()[B

    move-result-object v0

    return-object v0
.end method
