.class public final Lcom/google/android/gms/internal/ads/Is;
.super Ljava/lang/Object;


# instance fields
.field private j6:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Is;->j6:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/Ns;)Lcom/google/android/gms/internal/ads/Js;
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Is;->j6:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ks;->j6(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Is;->j6:Ljava/security/interfaces/ECPublicKey;

    :try_start_18
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_52} :catch_1a2
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_52} :catch_1a0

    if-ne v3, v4, :cond_198

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Ks;->j6(Ljava/security/interfaces/ECPrivateKey;Ljava/security/spec/ECPoint;)[B

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ks;->j6(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ks;->j6(Ljava/security/spec/EllipticCurve;)I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/Ls;->j6:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_fd

    if-eq v3, v4, :cond_c8

    const/4 v7, 0x3

    if-ne v3, v7, :cond_a3

    add-int/2addr v2, v5

    new-array p5, v2, [B

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v8, v3

    sub-int/2addr v2, v8

    array-length v8, v3

    invoke-static {v3, v6, p5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto :goto_9e

    :cond_9d
    const/4 v7, 0x2

    :goto_9e
    int-to-byte v1, v7

    aput-byte v1, p5, v6

    goto/16 :goto_123

    :cond_a3
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0xf

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid format:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c8
    mul-int/lit8 p5, v2, 0x2

    new-array v3, p5, [B

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    array-length v8, v7

    if-le v8, v2, :cond_de

    array-length v8, v7

    sub-int/2addr v8, v2

    array-length v9, v7

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    :cond_de
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v8, v1

    if-le v8, v2, :cond_f0

    array-length v8, v1

    sub-int/2addr v8, v2

    array-length v9, v1

    invoke-static {v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :cond_f0
    array-length v8, v1

    sub-int/2addr p5, v8

    array-length v8, v1

    invoke-static {v1, v6, v3, p5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p5, v7

    sub-int/2addr v2, p5

    array-length p5, v7

    invoke-static {v7, v6, v3, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_122

    :cond_fd
    mul-int/lit8 p5, v2, 0x2

    add-int/2addr p5, v5

    new-array v3, p5, [B

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v8, v1

    sub-int/2addr p5, v8

    array-length v8, v1

    invoke-static {v1, v6, v3, p5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    array-length p5, v7

    sub-int/2addr v2, p5

    array-length p5, v7

    invoke-static {v7, v6, v3, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p5, 0x4

    aput-byte p5, v3, v6

    :goto_122
    move-object p5, v3

    :goto_123
    new-array v1, v4, [[B

    aput-object p5, v1, v6

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Ps;->Hw:Lcom/google/android/gms/internal/ads/Ps;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    if-gt p4, v2, :cond_190

    if-eqz p2, :cond_14c

    array-length v2, p2

    if-nez v2, :cond_143

    goto :goto_14c

    :cond_143
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_15a

    :cond_14c
    :goto_14c
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {p2, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_15a
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    new-array v0, p4, [B

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-array p1, v6, [B

    const/4 p2, 0x0

    :goto_16b
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v1, p3}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte p1, v5

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    array-length v2, p1

    add-int/2addr v2, p2

    if-ge v2, p4, :cond_186

    array-length v2, p1

    invoke-static {p1, v6, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr p2, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_16b

    :cond_186
    sub-int/2addr p4, p2

    invoke-static {p1, v6, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Js;

    invoke-direct {p1, p5, v0}, Lcom/google/android/gms/internal/ads/Js;-><init>([B[B)V

    return-object p1

    :cond_190
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "size too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_198
    :try_start_198
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid public key spec"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_198 .. :try_end_1a0} :catch_1a2
    .catch Ljava/lang/NullPointerException; {:try_start_198 .. :try_end_1a0} :catch_1a0

    :catch_1a0
    move-exception p1

    goto :goto_1a3

    :catch_1a2
    move-exception p1

    :goto_1a3
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_1ae

    :goto_1ad
    throw p2

    :goto_1ae
    goto :goto_1ad
.end method
