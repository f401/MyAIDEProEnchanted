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

    if-eqz v0, :cond_0

    const-string v0, "MD5"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/jN;->u7:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA1"

    goto :goto_0

    :cond_1
    sget-object v0, Labcd/hN;->v5:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SHA224"

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/hN;->DW:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SHA256"

    goto :goto_0

    :cond_3
    sget-object v0, Labcd/hN;->FH:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SHA384"

    goto :goto_0

    :cond_4
    sget-object v0, Labcd/hN;->Hw:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SHA512"

    goto :goto_0

    :cond_5
    sget-object v0, Labcd/oN;->FH:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "RIPEMD128"

    goto :goto_0

    :cond_6
    sget-object v0, Labcd/oN;->DW:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "RIPEMD160"

    goto :goto_0

    :cond_7
    sget-object v0, Labcd/oN;->Hw:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "RIPEMD256"

    goto :goto_0

    :cond_8
    sget-object v0, Labcd/_M;->j6:Labcd/zL;

    invoke-virtual {v0, p0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "GOST3411"

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static j6(Labcd/wN;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Labcd/uP;->j6:Labcd/xL;

    invoke-virtual {v1, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v1

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

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

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "withRSAandMGF1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v1

    sget-object v2, Labcd/QN;->we:Labcd/zL;

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/oM;

    invoke-static {v0}, Labcd/uP;->j6(Labcd/oM;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "withECDSA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static j6(Ljava/security/Signature;Labcd/qL;)V
    .registers 5

    if-eqz p1, :cond_0

    sget-object v0, Labcd/uP;->j6:Labcd/xL;

    invoke-virtual {v0, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    invoke-virtual {v1}, Labcd/yL;->Hw()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MGF1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    const-class v1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception extracting parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException decoding parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
