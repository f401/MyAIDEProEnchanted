.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# instance fields
.field private transient DW:Ljavax/crypto/spec/DHParameterSpec;

.field private transient FH:Labcd/CN;

.field private j6:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Labcd/CN;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->FH:Labcd/CN;

    :try_start_5
    invoke-virtual {p1}, Labcd/CN;->Zo()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/wL;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_9a

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    invoke-virtual {p1}, Labcd/CN;->v5()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    invoke-virtual {p1}, Labcd/CN;->v5()Labcd/wN;

    move-result-object p1

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object p1

    sget-object v1, Labcd/lN;->XL:Labcd/zL;

    invoke-virtual {p1, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6(Labcd/FL;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_6a

    :cond_34
    sget-object v1, Labcd/QN;->br:Labcd/zL;

    invoke-virtual {p1, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-static {v0}, Labcd/ON;->j6(Ljava/lang/Object;)Labcd/ON;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/ON;->Zo()Labcd/wL;

    move-result-object v1

    invoke-virtual {v1}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Labcd/ON;->v5()Labcd/wL;

    move-result-object p1

    invoke-virtual {p1}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_97

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown algorithm type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    :goto_6a
    invoke-static {v0}, Labcd/kN;->j6(Ljava/lang/Object;)Labcd/kN;

    move-result-object p1

    invoke-virtual {p1}, Labcd/kN;->Zo()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_8a

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/kN;->VH()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Labcd/kN;->v5()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Labcd/kN;->Zo()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    goto :goto_97

    :cond_8a
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/kN;->VH()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Labcd/kN;->v5()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_97
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    :catch_9a
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in DH public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Labcd/VO;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/VO;->FH()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/SO;->DW()Labcd/TO;

    move-result-object v1

    invoke-virtual {v1}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Labcd/SO;->DW()Labcd/TO;

    move-result-object v2

    invoke-virtual {v2}, Labcd/TO;->j6()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Labcd/SO;->DW()Labcd/TO;

    move-result-object p1

    invoke-virtual {p1}, Labcd/TO;->DW()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private j6(Labcd/FL;)Z
    .registers 7

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v0, v3, :cond_12

    return v4

    :cond_12
    invoke-virtual {p1, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    invoke-virtual {p1, v4}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-static {p1}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object p1

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_3a

    return v4

    :cond_3a
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne v0, p1, :cond_56

    const/4 p1, 0x1

    return p1

    :cond_56
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 7

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->FH:Labcd/CN;

    if-eqz v0, :cond_9

    invoke-static {v0}, Labcd/eP;->j6(Labcd/CN;)[B

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/lN;->XL:Labcd/zL;

    new-instance v2, Labcd/kN;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Labcd/kN;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v2}, Labcd/kN;->DW()Labcd/EL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    new-instance v1, Labcd/wL;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Labcd/eP;->j6(Labcd/wN;Labcd/qL;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->j6:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
