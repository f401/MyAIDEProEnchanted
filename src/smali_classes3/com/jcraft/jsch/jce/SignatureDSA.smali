.class public Lcom/jcraft/jsch/jce/SignatureDSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/SignatureDSA;


# instance fields
.field DW:Ljava/security/KeyFactory;

.field j6:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

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
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method public DW([B[B[B[B)V
    .registers 7

    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->DW:Ljava/security/KeyFactory;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public j6([B[B[B[B)V
    .registers 7

    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->DW:Ljava/security/KeyFactory;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public j6([B)Z
    .registers 13

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_4c

    aget-byte v5, p1, v4

    if-nez v5, :cond_4c

    aget-byte v6, p1, v2

    if-nez v6, :cond_4c

    shl-int/lit8 v1, v1, 0x18

    const/high16 v7, -0x1000000

    and-int/2addr v1, v7

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    shl-int/lit8 v5, v6, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v1, v5

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p1, v5

    add-int/lit8 v10, v9, 0x1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v7

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    aget-byte v5, p1, v9

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v6

    or-int/2addr v1, v5

    aget-byte v5, p1, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    new-array v5, v1, [B

    add-int/2addr v10, v4

    invoke-static {p1, v10, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v5

    :cond_4c
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_54

    const/4 v1, 0x1

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    :goto_55
    const/16 v5, 0x14

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_60

    :cond_5f
    const/4 v6, 0x0

    :goto_60
    array-length v7, p1

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v7, v1

    add-int/2addr v7, v6

    new-array v7, v7, [B

    const/16 v8, 0x30

    aput-byte v8, v7, v0

    const/16 v8, 0x2c

    aput-byte v8, v7, v4

    add-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    add-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    aput-byte v2, v7, v2

    aput-byte v5, v7, v3

    add-int v4, v5, v1

    int-to-byte v4, v4

    aput-byte v4, v7, v3

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v0, v7, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v7, v3

    add-int/lit8 v0, v0, 0x4

    aput-byte v2, v7, v0

    aget-byte v0, v7, v3

    add-int/lit8 v0, v0, 0x5

    aput-byte v5, v7, v0

    aget-byte v0, v7, v3

    add-int/lit8 v0, v0, 0x5

    aget-byte v1, v7, v0

    add-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    aget-byte v0, v7, v3

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v6

    invoke-static {p1, v5, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {p1, v7}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public j6()[B
    .registers 11

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    new-array v2, v1, [B

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    new-array v7, v6, [B

    add-int/2addr v3, v5

    invoke-static {v0, v3, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x28

    new-array v0, v0, [B

    const/16 v3, 0x14

    if-le v1, v3, :cond_2a

    const/4 v8, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v8, 0x0

    :goto_2b
    if-le v1, v3, :cond_2f

    const/4 v9, 0x0

    goto :goto_31

    :cond_2f
    rsub-int/lit8 v9, v1, 0x14

    :goto_31
    if-le v1, v3, :cond_35

    const/16 v1, 0x14

    :cond_35
    invoke-static {v2, v8, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-le v6, v3, :cond_3b

    const/4 v4, 0x1

    :cond_3b
    if-le v6, v3, :cond_40

    const/16 v1, 0x14

    goto :goto_42

    :cond_40
    rsub-int/lit8 v1, v6, 0x28

    :goto_42
    if-le v6, v3, :cond_46

    const/16 v6, 0x14

    :cond_46
    invoke-static {v7, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
