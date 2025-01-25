.class public Lcom/jcraft/jsch/jce/SignatureRSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/SignatureRSA;


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

    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->j6:Ljava/security/Signature;

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->DW:Ljava/security/KeyFactory;

    return-void
.end method

.method public DW([B)V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method public DW([B[B)V
    .registers 5

    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, p2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->DW:Ljava/security/KeyFactory;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->j6:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public j6([B[B)V
    .registers 5

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->DW:Ljava/security/KeyFactory;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->j6:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public j6([B)Z
    .registers 11

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_4c

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    if-nez v3, :cond_4c

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    if-nez v4, :cond_4c

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    shl-int/lit8 v1, v1, 0x18

    const/high16 v6, -0x1000000

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    shl-int/lit8 v3, v4, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v8, v7, 0x1

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v5

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    aget-byte v3, p1, v7

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    new-array v3, v1, [B

    add-int/2addr v8, v2

    invoke-static {p1, v8, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    :cond_4c
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public j6()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->j6:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method
