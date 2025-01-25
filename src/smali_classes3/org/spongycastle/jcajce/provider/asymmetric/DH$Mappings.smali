.class public Lorg/spongycastle/jcajce/provider/asymmetric/DH$Mappings;
.super Labcd/kP;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/kP;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Labcd/gP;)V
    .registers 5

    const-string v0, "KeyPairGenerator.DH"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyAgreement.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi"

    invoke-interface {p1, v0, v2}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.DH"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameterGenerator.DH"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v1}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
