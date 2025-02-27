.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;
.super Labcd/dP;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/dP;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 3

    instance-of v0, p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    check-cast p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V

    return-object v0

    :cond_c
    invoke-super {p0, p1}, Labcd/dP;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 3

    instance-of v0, p1, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    check-cast p1, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljavax/crypto/spec/DHPublicKeySpec;)V

    return-object v0

    :cond_c
    invoke-super {p0, p1}, Labcd/dP;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    const-class v0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_28

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    new-instance p2, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_28
    const-class v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_50

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_50

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    new-instance p2, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_50
    invoke-super {p0, p1, p2}, Labcd/dP;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    return-object p1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 3

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    return-object v0

    :cond_c
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_18

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    return-object v0

    :cond_18
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key type unknown"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePrivate(Labcd/mN;)Ljava/security/PrivateKey;
    .registers 4

    invoke-virtual {p1}, Labcd/mN;->v5()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->XL:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Labcd/mN;)V

    return-object v0

    :cond_16
    sget-object v1, Labcd/QN;->br:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Labcd/mN;)V

    return-object v0

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "algorithm identifier "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognised"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generatePublic(Labcd/CN;)Ljava/security/PublicKey;
    .registers 4

    invoke-virtual {p1}, Labcd/CN;->v5()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->XL:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Labcd/CN;)V

    return-object v0

    :cond_16
    sget-object v1, Labcd/QN;->br:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Labcd/CN;)V

    return-object v0

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "algorithm identifier "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognised"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
