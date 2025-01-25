.class Labcd/NP;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/Map;

.field private static final FH:Ljava/util/Map;

.field private static final Hw:Ljava/util/Map;

.field private static final j6:Ljava/util/Map;


# instance fields
.field private v5:Labcd/aP;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/NP;->j6:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Labcd/NP;->DW:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Labcd/NP;->FH:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Labcd/NP;->Hw:Ljava/util/Map;

    new-instance v4, Labcd/zL;

    const-string v5, "1.2.840.113549.1.1.5"

    invoke-direct {v4, v5}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v5, "SHA1WITHRSA"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/lN;->Ws:Labcd/zL;

    const-string v6, "SHA224WITHRSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/lN;->we:Labcd/zL;

    const-string v6, "SHA256WITHRSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/lN;->J0:Labcd/zL;

    const-string v6, "SHA384WITHRSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/lN;->J8:Labcd/zL;

    const-string v6, "SHA512WITHRSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/_M;->v5:Labcd/zL;

    const-string v6, "GOST3411WITHGOST3410"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/_M;->Zo:Labcd/zL;

    const-string v6, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Labcd/zL;

    const-string v6, "1.2.840.113549.1.1.4"

    invoke-direct {v4, v6}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v6, "MD5WITHRSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Labcd/zL;

    const-string v6, "1.2.840.113549.1.1.2"

    invoke-direct {v4, v6}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v6, "MD2WITHRSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Labcd/zL;

    const-string v6, "1.2.840.10040.4.3"

    invoke-direct {v4, v6}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v6, "SHA1WITHDSA"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/QN;->u7:Labcd/zL;

    const-string v7, "SHA1WITHECDSA"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/QN;->J0:Labcd/zL;

    const-string v7, "SHA224WITHECDSA"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/QN;->J8:Labcd/zL;

    const-string v7, "SHA256WITHECDSA"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/QN;->Ws:Labcd/zL;

    const-string v7, "SHA384WITHECDSA"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/QN;->QX:Labcd/zL;

    const-string v7, "SHA512WITHECDSA"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/jN;->EQ:Labcd/zL;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/jN;->tp:Labcd/zL;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/hN;->vy:Labcd/zL;

    const-string v5, "SHA224WITHDSA"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Labcd/hN;->P8:Labcd/zL;

    const-string v5, "SHA256WITHDSA"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->DW:Labcd/zL;

    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->Lz:Labcd/zL;

    const-string v1, "DESEDEWrap"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->sT:Labcd/zL;

    const-string v1, "RC2Wrap"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->EQ:Labcd/zL;

    const-string v1, "AESWrap"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->aM:Labcd/zL;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->er:Labcd/zL;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/iN;->Hw:Labcd/zL;

    const-string v1, "CamelliaWrap"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/iN;->v5:Labcd/zL;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/iN;->Zo:Labcd/zL;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/cN;->DW:Labcd/zL;

    const-string v1, "SEEDWrap"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->BT:Labcd/zL;

    const-string v1, "DESede"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->Zo:Labcd/zL;

    const-string v2, "AES"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->gn:Labcd/zL;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->Ws:Labcd/zL;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->a8:Labcd/zL;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->BT:Labcd/zL;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->vy:Labcd/zL;

    const-string v1, "RC2"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Labcd/aP;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/NP;->v5:Labcd/aP;

    return-void
.end method

.method private static FH(Labcd/wN;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-eqz v0, :cond_3d

    sget-object v1, Labcd/mM;->j6:Labcd/mM;

    invoke-virtual {v1, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

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

    invoke-virtual {v0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    invoke-static {v0}, Labcd/NP;->j6(Labcd/zL;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "WITHRSAANDMGF1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object p0

    if-eqz v1, :cond_54

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_54
    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/zL;)Ljava/lang/String;
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


# virtual methods
.method DW(Labcd/wN;)Ljava/security/Signature;
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-static {p1}, Labcd/NP;->FH(Labcd/wN;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/aP;->j6(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_28

    :catch_b
    move-exception v0

    sget-object v1, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-interface {v0, p1}, Labcd/aP;->j6(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    :goto_28
    return-object p1

    :cond_29
    throw v0
.end method

.method j6(Labcd/wN;)Ljava/security/MessageDigest;
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-static {v1}, Labcd/NP;->j6(Labcd/zL;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/aP;->DW(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2c

    :catch_f
    move-exception v0

    sget-object v1, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-interface {v0, p1}, Labcd/aP;->DW(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    :goto_2c
    return-object p1

    :cond_2d
    throw v0
.end method
