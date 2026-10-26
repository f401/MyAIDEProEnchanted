.class public final Lcom/baidu/mobstat/av;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/baidu/mobstat/az;

.field private h:Lcom/baidu/mobstat/aw;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/as;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/av;->a:[B

    iput v1, p0, Lcom/baidu/mobstat/av;->d:I

    iput v1, p0, Lcom/baidu/mobstat/av;->e:I

    iput-object v0, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    iput-object v0, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/av;->i:I

    iput-boolean v1, p0, Lcom/baidu/mobstat/av;->j:Z

    iput p2, p0, Lcom/baidu/mobstat/av;->b:I

    iput p2, p0, Lcom/baidu/mobstat/av;->c:I

    iput p2, p0, Lcom/baidu/mobstat/av;->f:I

    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/av;->a:[B

    new-instance v0, Lcom/baidu/mobstat/au;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/au;-><init>(Lcom/baidu/mobstat/as;)V

    iput-object v0, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    new-instance v0, Lcom/baidu/mobstat/ay;

    iget v1, p0, Lcom/baidu/mobstat/av;->b:I

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ay;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    return-void
.end method

.method private a([BI[BII)I
    .locals 6

    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 p5, 0x0

    :goto_0
    return p5

    :cond_1
    iget v0, p0, Lcom/baidu/mobstat/av;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/baidu/mobstat/av;->c:I

    rem-int v1, p5, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input length (with padding) not multiple of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/av;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input length not multiple of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/av;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-boolean v0, p0, Lcom/baidu/mobstat/av;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    move-object v1, p1

    move v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/aw;->d([BII[BI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    move-object v1, p1

    move v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/aw;->c([BII[BI)V

    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 4

    iget v0, p0, Lcom/baidu/mobstat/av;->d:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/baidu/mobstat/av;->j:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/baidu/mobstat/av;->c:I

    iget v3, p0, Lcom/baidu/mobstat/av;->b:I

    if-eq v2, v3, :cond_3

    iget v1, p0, Lcom/baidu/mobstat/av;->f:I

    if-ge v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int v2, v0, v3

    sub-int/2addr v0, v1

    rem-int/2addr v0, v3

    sub-int v0, v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0}, Lcom/baidu/mobstat/az;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method a([BII[BI)I
    .locals 9

    iget v0, p0, Lcom/baidu/mobstat/av;->d:I

    add-int v5, v0, p3

    iget v0, p0, Lcom/baidu/mobstat/av;->c:I

    iget v1, p0, Lcom/baidu/mobstat/av;->b:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/baidu/mobstat/av;->f:I

    if-ge v5, v0, :cond_a

    sub-int/2addr v0, v5

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    iget v0, p0, Lcom/baidu/mobstat/av;->b:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/av;->j:Z

    if-nez v0, :cond_d

    :cond_0
    iget-boolean v1, p0, Lcom/baidu/mobstat/av;->j:Z

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v0, :cond_e

    add-int v0, v5, v2

    move v6, v0

    :goto_1
    if-eqz p4, :cond_16

    array-length v0, p4

    sub-int/2addr v0, p5

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-nez v3, :cond_2

    :cond_1
    if-lt v0, v6, :cond_15

    :cond_2
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/baidu/mobstat/av;->b:I

    sub-int v3, v6, v3

    if-lt v0, v3, :cond_15

    :cond_3
    iget v3, p0, Lcom/baidu/mobstat/av;->d:I

    if-nez v3, :cond_4

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v1, :cond_f

    :cond_4
    new-array v1, v6, [B

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/baidu/mobstat/av;->a:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-eqz p3, :cond_6

    iget v3, p0, Lcom/baidu/mobstat/av;->d:I

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-boolean v3, p0, Lcom/baidu/mobstat/av;->j:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v3, :cond_7

    invoke-interface {v3, v1, v5, v2}, Lcom/baidu/mobstat/az;->a([BII)V

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iget-boolean v3, p0, Lcom/baidu/mobstat/av;->j:Z

    if-eqz v3, :cond_12

    if-ge v0, v6, :cond_8

    iget-object v0, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    invoke-virtual {v0}, Lcom/baidu/mobstat/aw;->b()V

    :cond_8
    new-array v3, v5, [B

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/av;->a([BI[BII)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v1, :cond_9

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2, v0}, Lcom/baidu/mobstat/az;->b([BII)I

    move-result v0

    if-ltz v0, :cond_10

    :cond_9
    array-length v1, p4

    sub-int/2addr v1, p5

    if-lt v1, v0, :cond_11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_13

    add-int v2, p5, v1

    aget-byte v4, v3, v1

    aput-byte v4, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    sub-int v0, v5, v0

    rem-int/2addr v0, v1

    sub-int v0, v1, v0

    move v2, v0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v0, :cond_c

    invoke-interface {v0, v5}, Lcom/baidu/mobstat/az;->a(I)I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input length must be multiple of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/av;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when decrypting with padded cipher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move v6, v5

    goto/16 :goto_1

    :cond_f
    move v2, p2

    move-object v1, p1

    goto :goto_2

    :cond_10
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Given final block not properly padded"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v1, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    invoke-virtual {v1}, Lcom/baidu/mobstat/aw;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output buffer too short: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p4

    sub-int/2addr v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes given, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes needed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v0, p0

    move-object v3, p4

    move v4, p5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/av;->a([BI[BII)I

    move-result v0

    :cond_13
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/mobstat/av;->d:I

    iget v1, p0, Lcom/baidu/mobstat/av;->b:I

    iput v1, p0, Lcom/baidu/mobstat/av;->f:I

    iget v1, p0, Lcom/baidu/mobstat/av;->i:I

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    invoke-virtual {v1}, Lcom/baidu/mobstat/aw;->a()V

    :cond_14
    return v0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output buffer too short: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes given, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes needed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer is null"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I[B[BLjava/security/SecureRandom;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mobstat/av;->j:Z

    iget v2, p0, Lcom/baidu/mobstat/av;->i:I

    if-nez v2, :cond_4

    if-nez p3, :cond_3

    :cond_1
    :goto_1
    iput v1, p0, Lcom/baidu/mobstat/av;->d:I

    iget v0, p0, Lcom/baidu/mobstat/av;->b:I

    iput v0, p0, Lcom/baidu/mobstat/av;->f:I

    iget-object v0, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    iget-boolean v1, p0, Lcom/baidu/mobstat/av;->j:Z

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/baidu/mobstat/aw;->a(ZLjava/lang/String;[B[B)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ECB mode cannot use IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_1

    if-nez v0, :cond_6

    if-nez p4, :cond_5

    sget-object p4, Lcom/baidu/mobstat/at;->a:Ljava/security/SecureRandom;

    :cond_5
    iget v0, p0, Lcom/baidu/mobstat/av;->b:I

    new-array p3, v0, [B

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters missing"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BII)[B
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/baidu/mobstat/av;->a(I)I

    move-result v7

    new-array v4, v7, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/av;->a([BII[BI)I

    move-result v1

    if-ge v1, v7, :cond_1

    new-array v0, v1, [B
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object v4, v0

    :cond_1
    return-object v4

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
