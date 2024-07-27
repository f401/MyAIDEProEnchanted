.class Labcd/eO;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/Map;

.field private static final FH:Ljava/util/Map;

.field private static final Hw:Ljava/util/Map;

.field static final j6:Labcd/eO;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Labcd/eO;

    invoke-direct {v0}, Labcd/eO;-><init>()V

    sput-object v0, Labcd/eO;->j6:Labcd/eO;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/eO;->DW:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/eO;->FH:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/eO;->Hw:Ljava/util/Map;

    sget-object v0, Labcd/hN;->vy:Labcd/zL;

    const-string v1, "SHA224"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/hN;->P8:Labcd/zL;

    const-string v1, "SHA256"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/hN;->ei:Labcd/zL;

    const-string v1, "SHA384"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/hN;->nw:Labcd/zL;

    const-string v1, "SHA512"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/jN;->tp:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/jN;->j6:Labcd/zL;

    const-string v1, "MD4"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/jN;->FH:Labcd/zL;

    const-string v1, "MD4"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/jN;->DW:Labcd/zL;

    const-string v1, "MD5"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/jN;->EQ:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->FH:Labcd/zL;

    const-string v1, "MD2"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->Hw:Labcd/zL;

    const-string v1, "MD4"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->v5:Labcd/zL;

    const-string v1, "MD5"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->Zo:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->Ws:Labcd/zL;

    const-string v1, "SHA224"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->we:Labcd/zL;

    const-string v1, "SHA256"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->J0:Labcd/zL;

    const-string v1, "SHA384"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->J8:Labcd/zL;

    const-string v1, "SHA512"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/QN;->u7:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/QN;->J0:Labcd/zL;

    const-string v1, "SHA224"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/QN;->J8:Labcd/zL;

    const-string v1, "SHA256"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/QN;->Ws:Labcd/zL;

    const-string v1, "SHA384"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/QN;->QX:Labcd/zL;

    const-string v1, "SHA512"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/QN;->x9:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->j3:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->Mr:Labcd/zL;

    const-string v1, "SHA224"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->U2:Labcd/zL;

    const-string v1, "SHA256"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->a8:Labcd/zL;

    const-string v1, "SHA384"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->lg:Labcd/zL;

    const-string v1, "SHA512"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->we:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->J0:Labcd/zL;

    const-string v1, "SHA256"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->J8:Labcd/zL;

    const-string v1, "SHA1"

    const-string v2, "RSAandMGF1"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/aN;->Ws:Labcd/zL;

    const-string v1, "SHA256"

    const-string v2, "RSAandMGF1"

    invoke-static {v0, v1, v2}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/QN;->ca:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/lN;->DW:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/oN;->v5:Labcd/zL;

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/NN;->we:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/dO;->Ws:Ljava/lang/String;

    const-string v2, "RSAandMGF1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/_M;->FH:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/_M;->Hw:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    const-string v1, "1.3.6.1.4.1.5849.1.6.2"

    const-string v2, "ECGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    const-string v1, "1.3.6.1.4.1.5849.1.1.5"

    const-string v2, "GOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    sget-object v1, Labcd/_M;->v5:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/lN;->ei:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/lN;->nw:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/lN;->SI:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/jN;->u7:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->v5:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->DW:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->FH:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/hN;->Hw:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/oN;->FH:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIPEMD128"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/oN;->DW:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIPEMD160"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/oN;->Hw:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIPEMD256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    sget-object v1, Labcd/_M;->j6:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOST3411"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    const-string v1, "1.3.6.1.4.1.5849.1.2.1"

    const-string v2, "GOST3411"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->Hw:Ljava/util/Map;

    const-string v1, "SHA1"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-1"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->Hw:Ljava/util/Map;

    const-string v1, "SHA224"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-224"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->Hw:Ljava/util/Map;

    const-string v1, "SHA256"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-256"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->Hw:Ljava/util/Map;

    const-string v1, "SHA384"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-384"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->Hw:Ljava/util/Map;

    const-string v1, "SHA512"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-512"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method j6(Labcd/wN;)Labcd/wN;
    .registers 5

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/wN;

    invoke-virtual {p1}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v1

    sget-object v2, Labcd/mM;->j6:Labcd/mM;

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
