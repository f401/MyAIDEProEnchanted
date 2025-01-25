.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Labcd/nP;


# instance fields
.field private transient DW:Ljavax/crypto/spec/DHParameterSpec;

.field private transient FH:Labcd/mN;

.field private transient Hw:Labcd/fP;

.field private j6:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/fP;

    invoke-direct {v0}, Labcd/fP;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    return-void
.end method

.method constructor <init>(Labcd/UO;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/fP;

    invoke-direct {v0}, Labcd/fP;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-virtual {p1}, Labcd/UO;->FH()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->j6:Ljava/math/BigInteger;

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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>(Labcd/mN;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/fP;

    invoke-direct {v0}, Labcd/fP;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-virtual {p1}, Labcd/mN;->v5()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    invoke-virtual {p1}, Labcd/mN;->Zo()Labcd/qL;

    move-result-object v1

    check-cast v1, Labcd/wL;

    invoke-virtual {p1}, Labcd/mN;->v5()Labcd/wN;

    move-result-object v2

    invoke-virtual {v2}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->FH:Labcd/mN;

    invoke-virtual {v1}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->j6:Ljava/math/BigInteger;

    sget-object p1, Labcd/lN;->XL:Labcd/zL;

    invoke-virtual {v2, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-static {v0}, Labcd/kN;->j6(Ljava/lang/Object;)Labcd/kN;

    move-result-object p1

    invoke-virtual {p1}, Labcd/kN;->Zo()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_54

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

    goto :goto_83

    :cond_54
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Labcd/kN;->VH()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Labcd/kN;->v5()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_83

    :cond_62
    sget-object p1, Labcd/QN;->br:Labcd/zL;

    invoke-virtual {v2, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

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

    :goto_83
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    :cond_86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown algorithm type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/fP;

    invoke-direct {v0}, Labcd/fP;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->j6:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/fP;

    invoke-direct {v0}, Labcd/fP;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->j6:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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

.method public getBagAttribute(Labcd/oM;)Labcd/qL;
    .registers 3

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-virtual {v0, p1}, Labcd/fP;->j6(Labcd/oM;)Labcd/qL;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-virtual {v0}, Labcd/fP;->j6()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 9

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->FH:Labcd/mN;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_40

    const-string v1, "DER"

    if-eqz v0, :cond_b

    :try_start_6
    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Labcd/mN;

    new-instance v2, Labcd/wN;

    sget-object v3, Labcd/lN;->XL:Labcd/zL;

    new-instance v4, Labcd/kN;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Labcd/kN;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v4}, Labcd/kN;->DW()Labcd/EL;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    new-instance v3, Labcd/wL;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Labcd/mN;-><init>(Labcd/wN;Labcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3f} :catch_40

    return-object v0

    :catch_40
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->DW:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->j6:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Labcd/zL;Labcd/qL;)V
    .registers 4

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Hw:Labcd/fP;

    invoke-virtual {v0, p1, p2}, Labcd/fP;->j6(Labcd/zL;Labcd/qL;)V

    return-void
.end method
