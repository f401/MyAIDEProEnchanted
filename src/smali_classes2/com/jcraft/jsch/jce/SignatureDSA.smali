.class public Lcom/jcraft/jsch/jce/SignatureDSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/SignatureDSA;


# instance fields
.field DW:Ljava/security/KeyFactory;

.field j6:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .locals 1

    const-string v0, "SHA1withDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->DW:Ljava/security/KeyFactory;

    return-void
.end method

.method public DW([B)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method public DW([B[B[B[B)V
    .locals 5

    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->DW:Ljava/security/KeyFactory;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public j6([B[B[B[B)V
    .locals 5

    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->DW:Ljava/security/KeyFactory;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public j6([B)Z
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0x14

    const/4 v1, 0x1

    const/4 v7, 0x3

    const/4 v2, 0x0

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    aget-byte v3, p1, v1

    if-nez v3, :cond_0

    aget-byte v4, p1, v9

    if-nez v4, :cond_0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v0, v5

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    shl-int/lit8 v3, v4, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v6, -0x1000000

    and-int/2addr v0, v6

    shl-int/lit8 v3, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v3, v6

    or-int/2addr v0, v3

    aget-byte v3, p1, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v0

    new-array v0, v3, [B

    add-int/lit8 v4, v5, 0x1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    array-length v4, p1

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [B

    const/16 v5, 0x30

    aput-byte v5, v4, v2

    const/16 v5, 0x2c

    aput-byte v5, v4, v1

    add-int/lit8 v5, v0, 0x2c

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    aput-byte v9, v4, v9

    aput-byte v8, v4, v7

    add-int/lit8 v1, v0, 0x14

    int-to-byte v1, v1

    aput-byte v1, v4, v7

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v2, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v4, v7

    add-int/lit8 v0, v0, 0x4

    aput-byte v9, v4, v0

    aget-byte v0, v4, v7

    add-int/lit8 v0, v0, 0x5

    aput-byte v8, v4, v0

    aget-byte v0, v4, v7

    add-int/lit8 v0, v0, 0x5

    aget-byte v1, v4, v0

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    aget-byte v0, v4, v7

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v3

    invoke-static {p1, v8, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public j6()[B
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x14

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    const/4 v0, 0x3

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    new-array v7, v0, [B

    const/4 v2, 0x4

    invoke-static {v5, v2, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v5, v6

    and-int/lit16 v2, v2, 0xff

    new-array v8, v2, [B

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x28

    new-array v9, v5, [B

    if-le v0, v1, :cond_1

    move v6, v3

    :goto_0
    if-le v0, v1, :cond_2

    move v5, v4

    :goto_1
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v7, v6, v9, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-le v2, v1, :cond_5

    :goto_2
    if-le v2, v1, :cond_3

    move v0, v1

    :goto_3
    if-le v2, v1, :cond_4

    :goto_4
    invoke-static {v8, v3, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v9

    :cond_1
    move v6, v4

    goto :goto_0

    :cond_2
    rsub-int/lit8 v5, v0, 0x14

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v2, 0x28

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v3, v4

    goto :goto_2
.end method
