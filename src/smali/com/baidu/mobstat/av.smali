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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/av;->a:[B

    const/4 v1, 0x0

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

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/baidu/mobstat/av;->a:[B

    new-instance p2, Lcom/baidu/mobstat/au;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/au;-><init>(Lcom/baidu/mobstat/as;)V

    iput-object p2, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    new-instance p1, Lcom/baidu/mobstat/ay;

    iget p2, p0, Lcom/baidu/mobstat/av;->b:I

    invoke-direct {p1, p2}, Lcom/baidu/mobstat/ay;-><init>(I)V

    iput-object p1, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    return-void
.end method

.method private a([BI[BII)I
    .registers 14

    if-eqz p1, :cond_69

    if-nez p5, :cond_6

    goto/16 :goto_69

    :cond_6
    iget v0, p0, Lcom/baidu/mobstat/av;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    iget v1, p0, Lcom/baidu/mobstat/av;->c:I

    rem-int v1, p5, v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4f

    iget-object p1, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    const-string p2, " bytes"

    if-eqz p1, :cond_36

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Input length (with padding) not multiple of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/baidu/mobstat/av;->c:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Input length not multiple of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/baidu/mobstat/av;->c:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4f
    iget-boolean v0, p0, Lcom/baidu/mobstat/av;->j:Z

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    move-object v2, p1

    move v3, p2

    move v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/aw;->d([BII[BI)V

    goto :goto_68

    :cond_5e
    iget-object v2, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    move-object v3, p1

    move v4, p2

    move v5, p5

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/mobstat/aw;->c([BII[BI)V

    :goto_68
    return p5

    :cond_69
    :goto_69
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(I)I
    .registers 5

    iget v0, p0, Lcom/baidu/mobstat/av;->d:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-nez p1, :cond_8

    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/baidu/mobstat/av;->j:Z

    if-eqz v1, :cond_d

    return v0

    :cond_d
    iget v1, p0, Lcom/baidu/mobstat/av;->c:I

    iget v2, p0, Lcom/baidu/mobstat/av;->b:I

    if-eq v1, v2, :cond_1e

    iget p1, p0, Lcom/baidu/mobstat/av;->f:I

    if-ge v0, p1, :cond_18

    return p1

    :cond_18
    add-int v1, v0, v2

    sub-int/2addr v0, p1

    rem-int/2addr v0, v2

    sub-int/2addr v1, v0

    return v1

    :cond_1e
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/az;->a(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method a([BII[BI)I
    .registers 21

    move-object v6, p0

    move/from16 v0, p3

    move-object/from16 v7, p4

    iget v1, v6, Lcom/baidu/mobstat/av;->d:I

    add-int v5, v1, v0

    iget v1, v6, Lcom/baidu/mobstat/av;->c:I

    iget v2, v6, Lcom/baidu/mobstat/av;->b:I

    const/4 v8, 0x0

    if-eq v1, v2, :cond_1c

    iget v1, v6, Lcom/baidu/mobstat/av;->f:I

    if-ge v5, v1, :cond_16

    sub-int/2addr v1, v5

    goto :goto_26

    :cond_16
    sub-int v1, v5, v1

    rem-int/2addr v1, v2

    sub-int v1, v2, v1

    goto :goto_26

    :cond_1c
    iget-object v1, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v1, :cond_25

    invoke-interface {v1, v5}, Lcom/baidu/mobstat/az;->a(I)I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-lez v1, :cond_50

    iget v2, v6, Lcom/baidu/mobstat/av;->b:I

    if-eq v1, v2, :cond_50

    iget-object v2, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v2, :cond_50

    iget-boolean v2, v6, Lcom/baidu/mobstat/av;->j:Z

    if-nez v2, :cond_35

    goto :goto_50

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input length must be multiple of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/baidu/mobstat/av;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when decrypting with padded cipher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    :goto_50
    iget-boolean v2, v6, Lcom/baidu/mobstat/av;->j:Z

    if-nez v2, :cond_5c

    iget-object v3, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v3, :cond_5c

    add-int v3, v5, v1

    move v9, v3

    goto :goto_5d

    :cond_5c
    move v9, v5

    :goto_5d
    if-eqz v7, :cond_139

    array-length v3, v7

    sub-int v3, v3, p5

    const-string v10, " bytes needed"

    const-string v11, " bytes given, "

    const-string v12, "Output buffer too short: "

    if-eqz v2, :cond_6e

    iget-object v4, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-nez v4, :cond_70

    :cond_6e
    if-lt v3, v9, :cond_11e

    :cond_70
    if-eqz v2, :cond_78

    iget v4, v6, Lcom/baidu/mobstat/av;->b:I

    sub-int v4, v9, v4

    if-lt v3, v4, :cond_11e

    :cond_78
    iget v4, v6, Lcom/baidu/mobstat/av;->d:I

    if-nez v4, :cond_88

    if-nez v2, :cond_83

    iget-object v2, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v2, :cond_83

    goto :goto_88

    :cond_83
    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_a9

    :cond_88
    :goto_88
    new-array v2, v9, [B

    if-eqz v4, :cond_91

    iget-object v13, v6, Lcom/baidu/mobstat/av;->a:[B

    invoke-static {v13, v8, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_91
    if-eqz v0, :cond_9c

    iget v4, v6, Lcom/baidu/mobstat/av;->d:I

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-static {v13, v14, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9c
    iget-boolean v0, v6, Lcom/baidu/mobstat/av;->j:Z

    if-nez v0, :cond_a7

    iget-object v0, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v0, :cond_a7

    invoke-interface {v0, v2, v5, v1}, Lcom/baidu/mobstat/az;->a([BII)V

    :cond_a7
    move-object v1, v2

    const/4 v2, 0x0

    :goto_a9
    iget-boolean v0, v6, Lcom/baidu/mobstat/av;->j:Z

    if-eqz v0, :cond_104

    if-ge v3, v9, :cond_b4

    iget-object v0, v6, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    invoke-virtual {v0}, Lcom/baidu/mobstat/aw;->b()V

    :cond_b4
    new-array v9, v5, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/av;->a([BI[BII)I

    move-result v0

    iget-object v1, v6, Lcom/baidu/mobstat/av;->g:Lcom/baidu/mobstat/az;

    if-eqz v1, :cond_d0

    invoke-interface {v1, v9, v8, v0}, Lcom/baidu/mobstat/az;->b([BII)I

    move-result v0

    if-ltz v0, :cond_c8

    goto :goto_d0

    :cond_c8
    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Given final block not properly padded"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    :goto_d0
    array-length v1, v7

    sub-int v1, v1, p5

    if-lt v1, v0, :cond_e1

    const/4 v1, 0x0

    :goto_d6
    if-ge v1, v0, :cond_10e

    add-int v2, p5, v1

    aget-byte v3, v9, v1

    aput-byte v3, v7, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_e1
    iget-object v1, v6, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    invoke-virtual {v1}, Lcom/baidu/mobstat/aw;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v7

    sub-int v2, v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    move-object v0, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/av;->a([BI[BII)I

    move-result v0

    :cond_10e
    iput v8, v6, Lcom/baidu/mobstat/av;->d:I

    iget v1, v6, Lcom/baidu/mobstat/av;->b:I

    iput v1, v6, Lcom/baidu/mobstat/av;->f:I

    iget v1, v6, Lcom/baidu/mobstat/av;->i:I

    if-eqz v1, :cond_11d

    iget-object v1, v6, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    invoke-virtual {v1}, Lcom/baidu/mobstat/aw;->a()V

    :cond_11d
    return v0

    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_139
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer is null"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    goto :goto_142

    :goto_141
    throw v0

    :goto_142
    goto :goto_141
.end method

.method public a(I[B[BLjava/security/SecureRandom;)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p1, 0x1

    :goto_b
    iput-boolean p1, p0, Lcom/baidu/mobstat/av;->j:Z

    iget v0, p0, Lcom/baidu/mobstat/av;->i:I

    if-nez v0, :cond_1c

    if-nez p3, :cond_14

    goto :goto_34

    :cond_14
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ECB mode cannot use IV"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    if-nez p3, :cond_34

    if-nez p1, :cond_2c

    if-nez p4, :cond_24

    sget-object p4, Lcom/baidu/mobstat/at;->a:Ljava/security/SecureRandom;

    :cond_24
    iget p1, p0, Lcom/baidu/mobstat/av;->b:I

    new-array p3, p1, [B

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_34

    :cond_2c
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Parameters missing"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    :goto_34
    iput v1, p0, Lcom/baidu/mobstat/av;->d:I

    iget p1, p0, Lcom/baidu/mobstat/av;->b:I

    iput p1, p0, Lcom/baidu/mobstat/av;->f:I

    iget-object p1, p0, Lcom/baidu/mobstat/av;->h:Lcom/baidu/mobstat/aw;

    iget-boolean p4, p0, Lcom/baidu/mobstat/av;->j:Z

    const-string v0, ""

    invoke-virtual {p1, p4, v0, p2, p3}, Lcom/baidu/mobstat/aw;->a(ZLjava/lang/String;[B[B)V

    return-void
.end method

.method public a([BII)[B
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/baidu/mobstat/av;->a(I)I

    move-result v1

    new-array v8, v1, [B

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/mobstat/av;->a([BII[BI)I

    move-result p1

    if-ge p1, v1, :cond_1e

    new-array v0, p1, [B

    if-eqz p1, :cond_1d

    const/4 p2, 0x0

    invoke-static {v8, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception p1

    :cond_1d
    :goto_1d
    move-object v8, v0

    :cond_1e
    return-object v8
.end method
