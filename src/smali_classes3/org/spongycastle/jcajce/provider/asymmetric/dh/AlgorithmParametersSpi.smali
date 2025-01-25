.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;


# instance fields
.field j6:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 5

    new-instance v0, Labcd/kN;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/kN;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    :try_start_17
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding DHParameters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "argument to getParameterSpec must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_9

    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    :cond_9
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit([B)V
    .registers 6

    const-string v0, "Not a valid DH Parameter encoding."

    :try_start_2
    invoke-static {p1}, Labcd/kN;->j6(Ljava/lang/Object;)Labcd/kN;

    move-result-object p1

    invoke-virtual {p1}, Labcd/kN;->Zo()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_24

    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/kN;->VH()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Labcd/kN;->v5()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Labcd/kN;->Zo()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    :goto_21
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_32

    :cond_24
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/kN;->VH()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Labcd/kN;->v5()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_31} :catch_3a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_31} :catch_33

    goto :goto_21

    :goto_32
    return-void

    :catch_33
    move-exception p1

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3a
    move-exception p1

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineInit([B)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown parameter format "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    const-string v0, "Diffie-Hellman Parameters"

    return-object v0
.end method

.method protected j6(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->j6:Ljavax/crypto/spec/DHParameterSpec;

    return-object p1

    :cond_7
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "unknown parameter spec passed to DH parameters object."

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected j6(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method
