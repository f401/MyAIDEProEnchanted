.class Labcd/eO;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/Map;

.field private static final FH:Ljava/util/Map;

.field private static final Hw:Ljava/util/Map;

.field static final j6:Labcd/eO;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Labcd/eO;

    invoke-direct {v0}, Labcd/eO;-><init>()V

    sput-object v0, Labcd/eO;->j6:Labcd/eO;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/eO;->DW:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Labcd/eO;->FH:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Labcd/eO;->Hw:Ljava/util/Map;

    sget-object v3, Labcd/hN;->vy:Labcd/zL;

    const-string v4, "SHA224"

    const-string v5, "DSA"

    invoke-static {v3, v4, v5}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/hN;->P8:Labcd/zL;

    const-string v6, "SHA256"

    invoke-static {v3, v6, v5}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/hN;->ei:Labcd/zL;

    const-string v7, "SHA384"

    invoke-static {v3, v7, v5}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/hN;->nw:Labcd/zL;

    const-string v8, "SHA512"

    invoke-static {v3, v8, v5}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/jN;->tp:Labcd/zL;

    const-string v9, "SHA1"

    invoke-static {v3, v9, v5}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/jN;->j6:Labcd/zL;

    const-string v10, "MD4"

    const-string v11, "RSA"

    invoke-static {v3, v10, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/jN;->FH:Labcd/zL;

    invoke-static {v3, v10, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/jN;->DW:Labcd/zL;

    const-string v12, "MD5"

    invoke-static {v3, v12, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/jN;->EQ:Labcd/zL;

    invoke-static {v3, v9, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->FH:Labcd/zL;

    const-string v13, "MD2"

    invoke-static {v3, v13, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->Hw:Labcd/zL;

    invoke-static {v3, v10, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->v5:Labcd/zL;

    invoke-static {v3, v12, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->Zo:Labcd/zL;

    invoke-static {v3, v9, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->Ws:Labcd/zL;

    invoke-static {v3, v4, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->we:Labcd/zL;

    invoke-static {v3, v6, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->J0:Labcd/zL;

    invoke-static {v3, v7, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/lN;->J8:Labcd/zL;

    invoke-static {v3, v8, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->u7:Labcd/zL;

    const-string v14, "ECDSA"

    invoke-static {v3, v9, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->J0:Labcd/zL;

    invoke-static {v3, v4, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->J8:Labcd/zL;

    invoke-static {v3, v6, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->Ws:Labcd/zL;

    invoke-static {v3, v7, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->QX:Labcd/zL;

    invoke-static {v3, v8, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->x9:Labcd/zL;

    invoke-static {v3, v9, v5}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->j3:Labcd/zL;

    invoke-static {v3, v9, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->Mr:Labcd/zL;

    invoke-static {v3, v4, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->U2:Labcd/zL;

    invoke-static {v3, v6, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->a8:Labcd/zL;

    invoke-static {v3, v7, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->lg:Labcd/zL;

    invoke-static {v3, v8, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->we:Labcd/zL;

    invoke-static {v3, v9, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->J0:Labcd/zL;

    invoke-static {v3, v6, v11}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->J8:Labcd/zL;

    const-string v14, "RSAandMGF1"

    invoke-static {v3, v9, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/aN;->Ws:Labcd/zL;

    invoke-static {v3, v6, v14}, Labcd/eO;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Labcd/QN;->ca:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/lN;->DW:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/oN;->v5:Labcd/zL;

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/NN;->we:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/dO;->Ws:Ljava/lang/String;

    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/_M;->FH:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GOST3410"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/_M;->Hw:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    const-string v11, "ECGOST3410"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "1.3.6.1.4.1.5849.1.6.2"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "1.3.6.1.4.1.5849.1.1.5"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/_M;->v5:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->ei:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->nw:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/lN;->SI:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/jN;->u7:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->v5:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->DW:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->FH:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/hN;->Hw:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/oN;->FH:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RIPEMD128"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/oN;->DW:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RIPEMD160"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/oN;->Hw:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RIPEMD256"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_M;->j6:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GOST3411"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1.3.6.1.4.1.5849.1.2.1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "SHA-1"

    const/4 v5, 0x0

    aput-object v3, v1, v5

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "SHA-224"

    aput-object v3, v1, v5

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "SHA-256"

    aput-object v3, v1, v5

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "SHA-384"

    aput-object v3, v1, v5

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SHA-512"

    aput-object v1, v0, v5

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    sget-object p1, Labcd/eO;->DW:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Labcd/eO;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    return-object p1
.end method

.method j6(Labcd/wN;)Labcd/wN;
    .registers 4

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Labcd/wN;

    invoke-virtual {p1}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object p1

    sget-object v1, Labcd/mM;->j6:Labcd/mM;

    invoke-direct {v0, p1, v1}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    return-object v0

    :cond_12
    return-object p1
.end method

.method j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Labcd/eO;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    return-object p1
.end method
