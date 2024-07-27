.class Labcd/_P;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/util/Hashtable;

.field private static FH:Ljava/util/Set;

.field private static j6:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

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

    const-string v1, "SHA1WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v2, Labcd/oN;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    sget-object v2, Labcd/oN;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v2, Labcd/oN;->VH:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128WITHRSA"

    sget-object v2, Labcd/oN;->VH:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v2, Labcd/oN;->gn:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256WITHRSA"

    sget-object v2, Labcd/oN;->gn:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    sget-object v2, Labcd/QN;->x9:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    sget-object v2, Labcd/QN;->x9:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHDSA"

    sget-object v2, Labcd/hN;->vy:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHDSA"

    sget-object v2, Labcd/hN;->P8:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHDSA"

    sget-object v2, Labcd/hN;->ei:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHDSA"

    sget-object v2, Labcd/hN;->nw:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    sget-object v2, Labcd/QN;->u7:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    sget-object v2, Labcd/QN;->u7:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHECDSA"

    sget-object v2, Labcd/QN;->J0:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHECDSA"

    sget-object v2, Labcd/QN;->J8:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHECDSA"

    sget-object v2, Labcd/QN;->Ws:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHECDSA"

    sget-object v2, Labcd/QN;->QX:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410"

    sget-object v2, Labcd/_M;->v5:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410-94"

    sget-object v2, Labcd/_M;->v5:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHECGOST3410"

    sget-object v2, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHECGOST3410-2001"

    sget-object v2, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410-2001"

    sget-object v2, Labcd/_M;->Zo:Labcd/zL;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const-string v2, "SHA1WITHRSAANDMGF1"

    const/16 v3, 0x14

    invoke-static {v0, v3}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->v5:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const-string v2, "SHA224WITHRSAANDMGF1"

    const/16 v3, 0x1c

    invoke-static {v0, v3}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->DW:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const-string v2, "SHA256WITHRSAANDMGF1"

    const/16 v3, 0x20

    invoke-static {v0, v3}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->FH:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const-string v2, "SHA384WITHRSAANDMGF1"

    const/16 v3, 0x30

    invoke-static {v0, v3}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->Hw:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    const-string v2, "SHA512WITHRSAANDMGF1"

    const/16 v3, 0x40

    invoke-static {v0, v3}, Labcd/_P;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static j6(Labcd/wN;I)Labcd/nN;
    .registers 7

    new-instance v0, Labcd/nN;

    new-instance v1, Labcd/wN;

    sget-object v2, Labcd/lN;->u7:Labcd/zL;

    invoke-direct {v1, v2, p0}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    new-instance v2, Labcd/wL;

    invoke-direct {v2, p1}, Labcd/wL;-><init>(I)V

    new-instance v3, Labcd/wL;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Labcd/wL;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, v3}, Labcd/nN;-><init>(Labcd/wN;Labcd/wN;Labcd/wL;Labcd/wL;)V

    return-object v0
.end method

.method static j6(Ljava/lang/String;)Labcd/oM;
    .registers 3

    invoke-static {p0}, Labcd/TP;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/_P;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oM;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/oM;

    invoke-direct {v0, v1}, Labcd/oM;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static j6(Labcd/oM;Ljava/lang/String;)Labcd/wN;
    .registers 5

    sget-object v0, Labcd/_P;->FH:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/wN;

    invoke-direct {v0, p0}, Labcd/wN;-><init>(Labcd/oM;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Labcd/TP;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Labcd/_P;->DW:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Labcd/wN;

    sget-object v2, Labcd/_P;->DW:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-direct {v1, p0, v0}, Labcd/wN;-><init>(Labcd/oM;Labcd/qL;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/wN;

    new-instance v1, Labcd/mM;

    invoke-direct {v1}, Labcd/mM;-><init>()V

    invoke-direct {v0, p0, v1}, Labcd/wN;-><init>(Labcd/oM;Labcd/qL;)V

    goto :goto_0
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 3

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0
.end method

.method static j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Labcd/qL;)[B
    .registers 9

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Labcd/_P;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p3, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    :goto_0
    invoke-interface {p5}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no signature algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
