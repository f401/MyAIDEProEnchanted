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
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/NP;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/NP;->DW:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/NP;->FH:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    new-instance v1, Labcd/zL;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Ws:Labcd/zL;

    const-string v2, "SHA224WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->we:Labcd/zL;

    const-string v2, "SHA256WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->J0:Labcd/zL;

    const-string v2, "SHA384WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->J8:Labcd/zL;

    const-string v2, "SHA512WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/_M;->v5:Labcd/zL;

    const-string v2, "GOST3411WITHGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/_M;->Zo:Labcd/zL;

    const-string v2, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    new-instance v1, Labcd/zL;

    const-string v2, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v2}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v2, "MD5WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    new-instance v1, Labcd/zL;

    const-string v2, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v2}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v2, "MD2WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    new-instance v1, Labcd/zL;

    const-string v2, "1.2.840.10040.4.3"

    invoke-direct {v1, v2}, Labcd/zL;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->u7:Labcd/zL;

    const-string v2, "SHA1WITHECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->J0:Labcd/zL;

    const-string v2, "SHA224WITHECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->J8:Labcd/zL;

    const-string v2, "SHA256WITHECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->Ws:Labcd/zL;

    const-string v2, "SHA384WITHECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->QX:Labcd/zL;

    const-string v2, "SHA512WITHECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/jN;->EQ:Labcd/zL;

    const-string v2, "SHA1WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/jN;->tp:Labcd/zL;

    const-string v2, "SHA1WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/hN;->vy:Labcd/zL;

    const-string v2, "SHA224WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/hN;->P8:Labcd/zL;

    const-string v2, "SHA256WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->DW:Ljava/util/Map;

    sget-object v1, Labcd/lN;->DW:Labcd/zL;

    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Lz:Labcd/zL;

    const-string v2, "DESEDEWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/lN;->sT:Labcd/zL;

    const-string v2, "RC2Wrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->EQ:Labcd/zL;

    const-string v2, "AESWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->aM:Labcd/zL;

    const-string v2, "AESWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->er:Labcd/zL;

    const-string v2, "AESWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/iN;->Hw:Labcd/zL;

    const-string v2, "CamelliaWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/iN;->v5:Labcd/zL;

    const-string v2, "CamelliaWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/iN;->Zo:Labcd/zL;

    const-string v2, "CamelliaWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/cN;->DW:Labcd/zL;

    const-string v2, "SEEDWrap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->FH:Ljava/util/Map;

    sget-object v1, Labcd/lN;->BT:Labcd/zL;

    const-string v2, "DESede"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v1, Labcd/hN;->Zo:Labcd/zL;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v1, Labcd/hN;->gn:Labcd/zL;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v1, Labcd/hN;->Ws:Labcd/zL;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v1, Labcd/hN;->a8:Labcd/zL;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v1, Labcd/lN;->BT:Labcd/zL;

    const-string v2, "DESede"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/NP;->Hw:Ljava/util/Map;

    sget-object v1, Labcd/lN;->vy:Labcd/zL;

    const-string v2, "RC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    if-eqz v0, :cond_0

    sget-object v1, Labcd/mM;->j6:Labcd/mM;

    invoke-virtual {v1, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

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

    invoke-virtual {v0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    invoke-static {v0}, Labcd/NP;->j6(Labcd/zL;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "WITHRSAANDMGF1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(Labcd/zL;)Ljava/lang/String;
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


# virtual methods
.method DW(Labcd/wN;)Ljava/security/Signature;
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-static {p1}, Labcd/NP;->FH(Labcd/wN;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/aP;->j6(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-interface {v1, v0}, Labcd/aP;->j6(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
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
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Labcd/NP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Labcd/NP;->v5:Labcd/aP;

    invoke-interface {v1, v0}, Labcd/aP;->DW(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    goto :goto_0

    :cond_0
    throw v0
.end method
