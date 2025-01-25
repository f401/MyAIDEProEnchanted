.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;
.super Ljava/security/AlgorithmParameterGeneratorSpi;


# instance fields
.field protected DW:I

.field private FH:I

.field protected j6:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->FH:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    new-instance v0, Labcd/NO;

    invoke-direct {v0}, Labcd/NO;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->j6:Ljava/security/SecureRandom;

    const/16 v2, 0x14

    if-eqz v1, :cond_11

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->DW:I

    invoke-virtual {v0, v3, v2, v1}, Labcd/NO;->j6(IILjava/security/SecureRandom;)V

    goto :goto_1b

    :cond_11
    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->DW:I

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Labcd/NO;->j6(IILjava/security/SecureRandom;)V

    :goto_1b
    invoke-virtual {v0}, Labcd/NO;->j6()Labcd/TO;

    move-result-object v0

    :try_start_1f
    const-string v1, "DH"

    sget-object v2, Labcd/pP;->DW:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Labcd/TO;->j6()Ljava/math/BigInteger;

    move-result-object v0

    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->FH:I

    invoke-direct {v2, v3, v0, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_39} :catch_3a

    return-object v1

    :catch_3a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 3

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->DW:I

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->j6:Ljava/security/SecureRandom;

    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4

    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-eqz v0, :cond_15

    check-cast p1, Ljavax/crypto/spec/DHGenParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->DW:I

    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->FH:I

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->j6:Ljava/security/SecureRandom;

    return-void

    :cond_15
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
