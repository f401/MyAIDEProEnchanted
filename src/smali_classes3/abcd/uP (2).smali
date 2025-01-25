.class Labcd/uP;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Labcd/xL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/mM;

    invoke-direct {v0}, Labcd/mM;-><init>()V

    sput-object v0, Labcd/uP;->j6:Labcd/xL;

    return-void
.end method

.method private static j6(Labcd/oM;)Ljava/lang/String;
    .registers 2

    sget-object v0, Labcd/lN;->SI:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "MD5"

    return-object p0

    :cond_b
    sget-object v0, Labcd/jN;->u7:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "SHA1"

    return-object p0

    :cond_16
    sget-object v0, Labcd/hN;->v5:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "SHA224"

    return-object p0

    :cond_21
    sget-object v0, Labcd/hN;->DW:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "SHA256"

    return-object p0

    :cond_2c
    sget-object v0, Labcd/hN;->FH:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "SHA384"

    return-object p0

    :cond_37
    sget-object v0, Labcd/hN;->Hw:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "SHA512"

    return-object p0

    :cond_42
    sget-object v0, Labcd/oN;->FH:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "RIPEMD128"

    return-object p0

    :cond_4d
    sget-object v0, Labcd/oN;->DW:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string p0, "RIPEMD160"

    return-object p0

    :cond_58
    sget-object v0, Labcd/oN;->Hw:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string p0, "RIPEMD256"

    return-object p0

    :cond_63
    sget-object v0, Labcd/_M;->j6:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string p0, "GOST3411"

    return-object p0

    :cond_6e
    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6(Labcd/wN;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-eqz v0, :cond_6b

    sget-object v1, Labcd/uP;->j6:Labcd/xL;

    invoke-virtual {v1, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual {p0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v1

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/nN;->j6(Ljava/lang/Object;)Labcd/nN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/nN;->v5()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v0

    invoke-static {v0}, Labcd/uP;->j6(Labcd/oM;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "withRSAandMGF1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    invoke-virtual {p0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v1

    sget-object v2, Labcd/QN;->we:Labcd/zL;

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/oM;

    invoke-static {v0}, Labcd/uP;->j6(Labcd/oM;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6b
    invoke-virtual {p0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object p0

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/security/Signature;Labcd/qL;)V
    .registers 4

    if-eqz p1, :cond_69

    sget-object v0, Labcd/uP;->j6:Labcd/xL;

    invoke-virtual {v0, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :try_start_16
    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-virtual {p1}, Labcd/yL;->Hw()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_50

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MGF1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_69

    :try_start_2d
    const-class p1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_36
    .catch Ljava/security/GeneralSecurityException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_69

    :catch_37
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception extracting parameters: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/SignatureException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_50
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IOException decoding parameters: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/SignatureException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    :goto_69
    return-void
.end method
