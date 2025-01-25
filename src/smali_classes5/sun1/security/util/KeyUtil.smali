.class public final Lsun1/security/util/KeyUtil;
.super Ljava/lang/Object;


# direct methods
.method public static final getKeySize(Ljava/security/Key;)I
    .registers 5

    const/4 v2, -0x1

    instance-of v1, p0, Lsun1/security/util/Length;

    if-eqz v1, :cond_13

    :try_start_5
    move-object v0, p0

    check-cast v0, Lsun1/security/util/Length;

    move-object v1, v0

    invoke-interface {v1}, Lsun1/security/util/Length;->length()I
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_c} :catch_10

    move-result v1

    :goto_d
    if-ltz v1, :cond_14

    :cond_f
    :goto_f
    return v1

    :catch_10
    move-exception v1

    move v1, v2

    goto :goto_d

    :cond_13
    move v1, v2

    :cond_14
    instance-of v3, p0, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_34

    check-cast p0, Ljavax/crypto/SecretKey;

    const-string v2, "RAW"

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    goto :goto_f

    :cond_34
    instance-of v3, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v3, :cond_43

    check-cast p0, Ljava/security/interfaces/RSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    :goto_3e
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_f

    :cond_43
    instance-of v3, p0, Ljava/security/interfaces/ECKey;

    if-eqz v3, :cond_52

    check-cast p0, Ljava/security/interfaces/ECKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3e

    :cond_52
    instance-of v3, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_63

    check-cast p0, Ljava/security/interfaces/DSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3e

    :cond_63
    instance-of v2, p0, Ljavax/crypto/interfaces/DHKey;

    if-eqz v2, :cond_f

    check-cast p0, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3e

    :cond_72
    move v1, v2

    goto :goto_f
.end method
