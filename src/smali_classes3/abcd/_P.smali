.class Labcd/_P;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/util/Hashtable;

.field private static FH:Ljava/util/Set;

.field private static j6:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Labcd/_P;->DW:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->FH:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSA"

    sget-object v2, Labcd/lN;->FH:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->v5:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSA"

    sget-object v2, Labcd/lN;->v5:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSA"

    sget-object v2, Labcd/lN;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->Ws:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSA"

    sget-object v2, Labcd/lN;->Ws:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->we:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSA"

    sget-object v2, Labcd/lN;->we:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->J0:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSA"

    sget-object v2, Labcd/lN;->J0:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->J8:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSA"

    sget-object v2, Labcd/lN;->J8:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    sget-object v1, Labcd/lN;->EQ:Labcd/zL;

    const-string v2, "SHA1WITHRSAANDMGF1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    sget-object v1, Labcd/lN;->EQ:Labcd/zL;

    const-string v3, "SHA224WITHRSAANDMGF1"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    sget-object v1, Labcd/lN;->EQ:Labcd/zL;

    const-string v4, "SHA256WITHRSAANDMGF1"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    sget-object v1, Labcd/lN;->EQ:Labcd/zL;

    const-string v5, "SHA384WITHRSAANDMGF1"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    sget-object v1, Labcd/lN;->EQ:Labcd/zL;

    const-string v6, "SHA512WITHRSAANDMGF1"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v7, Labcd/oN;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    sget-object v7, Labcd/oN;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v7, Labcd/oN;->VH:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128WITHRSA"

    sget-object v7, Labcd/oN;->VH:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v7, Labcd/oN;->gn:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256WITHRSA"

    sget-object v7, Labcd/oN;->gn:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    sget-object v7, Labcd/QN;->x9:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    sget-object v7, Labcd/QN;->x9:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHDSA"

    sget-object v7, Labcd/hN;->vy:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHDSA"

    sget-object v7, Labcd/hN;->P8:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHDSA"

    sget-object v7, Labcd/hN;->ei:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHDSA"

    sget-object v7, Labcd/hN;->nw:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    sget-object v7, Labcd/QN;->u7:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    sget-object v7, Labcd/QN;->u7:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHECDSA"

    sget-object v7, Labcd/QN;->J0:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHECDSA"

    sget-object v7, Labcd/QN;->J8:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHECDSA"

    sget-object v7, Labcd/QN;->Ws:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHECDSA"

    sget-object v7, Labcd/QN;->QX:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410"

    sget-object v7, Labcd/_M;->v5:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410-94"

    sget-object v7, Labcd/_M;->v5:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHECGOST3410"

    sget-object v7, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHECGOST3410-2001"

    sget-object v7, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410-2001"

    sget-object v7, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/QN;->u7:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/QN;->J0:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/QN;->J8:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/QN;->Ws:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/QN;->QX:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/QN;->x9:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/hN;->vy:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/hN;->P8:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/hN;->ei:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/hN;->nw:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/_M;->v5:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    sget-object v1, Labcd/_M;->Zo:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/jN;->u7:Labcd/zL;

    new-instance v7, Labcd/mM;

    invoke-direct {v7}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v7}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const/16 v7, 0x14

    invoke-static {v0, v7}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->v5:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const/16 v2, 0x1c

    invoke-static {v0, v2}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->DW:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->FH:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const/16 v2, 0x30

    invoke-static {v0, v2}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->Hw:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const/16 v2, 0x40

    invoke-static {v0, v2}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static j6(Labcd/wN;I)Labcd/nN;
    .registers 6

    new-instance v0, Labcd/nN;

    new-instance v1, Labcd/wN;

    sget-object v2, Labcd/lN;->u7:Labcd/zL;

    invoke-direct {v1, v2, p0}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    new-instance v2, Labcd/wL;

    invoke-direct {v2, p1}, Labcd/wL;-><init>(I)V

    new-instance p1, Labcd/wL;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Labcd/wL;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, p1}, Labcd/nN;-><init>(Labcd/wN;Labcd/wN;Labcd/wL;Labcd/wL;)V

    return-object v0
.end method

.method static j6(Ljava/lang/String;)Labcd/oM;
    .registers 2

    invoke-static {p0}, Labcd/TP;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/oM;

    return-object p0

    :cond_15
    new-instance v0, Labcd/oM;

    invoke-direct {v0, p0}, Labcd/oM;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static j6(Labcd/oM;Ljava/lang/String;)Labcd/wN;
    .registers 4

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Labcd/wN;

    invoke-direct {p1, p0}, Labcd/wN;-><init>(Labcd/oM;)V

    return-object p1

    :cond_e
    invoke-static {p1}, Labcd/TP;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Labcd/_P;->DW:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/qL;

    invoke-direct {v0, p0, p1}, Labcd/wN;-><init>(Labcd/oM;Labcd/qL;)V

    return-object v0

    :cond_28
    new-instance p1, Labcd/wN;

    new-instance v0, Labcd/mM;

    invoke-direct {v0}, Labcd/mM;-><init>()V

    invoke-direct {p1, p0, v0}, Labcd/wN;-><init>(Labcd/oM;Labcd/qL;)V

    return-object p1
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method static j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Labcd/qL;)[B
    .registers 6

    if-eqz p0, :cond_21

    invoke-static {p1, p2}, Labcd/_P;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    if-eqz p4, :cond_c

    invoke-virtual {p0, p3, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_f

    :cond_c
    invoke-virtual {p0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_f
    invoke-interface {p5}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    const-string p2, "DER"

    invoke-virtual {p1, p2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no signature algorithm specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
