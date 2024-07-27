.class public Labcd/xP;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/util/Set;

.field private static final EQ:Labcd/zL;

.field private static FH:Ljava/util/Map;

.field private static Hw:Ljava/util/Set;

.field private static final VH:Labcd/zL;

.field private static final Zo:Labcd/zL;

.field private static final gn:Labcd/zL;

.field private static j6:Ljava/util/Map;

.field private static final tp:Labcd/zL;

.field private static final u7:Labcd/zL;

.field private static v5:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/xP;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Labcd/xP;->DW:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/xP;->FH:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v0, Labcd/lN;->DW:Labcd/zL;

    sput-object v0, Labcd/xP;->Zo:Labcd/zL;

    sget-object v0, Labcd/QN;->x9:Labcd/zL;

    sput-object v0, Labcd/xP;->VH:Labcd/zL;

    sget-object v0, Labcd/QN;->u7:Labcd/zL;

    sput-object v0, Labcd/xP;->gn:Labcd/zL;

    sget-object v0, Labcd/lN;->EQ:Labcd/zL;

    sput-object v0, Labcd/xP;->u7:Labcd/zL;

    sget-object v0, Labcd/_M;->FH:Labcd/zL;

    sput-object v0, Labcd/xP;->tp:Labcd/zL;

    sget-object v0, Labcd/_M;->Hw:Labcd/zL;

    sput-object v0, Labcd/xP;->EQ:Labcd/zL;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "MD2WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "MD2WITHRSA"

    sget-object v2, Labcd/lN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "MD5WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "MD5WITHRSA"

    sget-object v2, Labcd/lN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA1WITHRSA"

    sget-object v2, Labcd/lN;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA224WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->Ws:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA224WITHRSA"

    sget-object v2, Labcd/lN;->Ws:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA256WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->we:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA256WITHRSA"

    sget-object v2, Labcd/lN;->we:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA384WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->J0:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA384WITHRSA"

    sget-object v2, Labcd/lN;->J0:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA512WITHRSAENCRYPTION"

    sget-object v2, Labcd/lN;->J8:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA512WITHRSA"

    sget-object v2, Labcd/lN;->J8:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA1WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA224WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA256WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA384WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA512WITHRSAANDMGF1"

    sget-object v2, Labcd/lN;->EQ:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v2, Labcd/oN;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "RIPEMD160WITHRSA"

    sget-object v2, Labcd/oN;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v2, Labcd/oN;->VH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "RIPEMD128WITHRSA"

    sget-object v2, Labcd/oN;->VH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v2, Labcd/oN;->gn:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "RIPEMD256WITHRSA"

    sget-object v2, Labcd/oN;->gn:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA1WITHDSA"

    sget-object v2, Labcd/QN;->x9:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "DSAWITHSHA1"

    sget-object v2, Labcd/QN;->x9:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA224WITHDSA"

    sget-object v2, Labcd/hN;->vy:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA256WITHDSA"

    sget-object v2, Labcd/hN;->P8:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA384WITHDSA"

    sget-object v2, Labcd/hN;->ei:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA512WITHDSA"

    sget-object v2, Labcd/hN;->nw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA1WITHECDSA"

    sget-object v2, Labcd/QN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "ECDSAWITHSHA1"

    sget-object v2, Labcd/QN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA224WITHECDSA"

    sget-object v2, Labcd/QN;->J0:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA256WITHECDSA"

    sget-object v2, Labcd/QN;->J8:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA384WITHECDSA"

    sget-object v2, Labcd/QN;->Ws:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "SHA512WITHECDSA"

    sget-object v2, Labcd/QN;->QX:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "GOST3411WITHGOST3410"

    sget-object v2, Labcd/_M;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "GOST3411WITHGOST3410-94"

    sget-object v2, Labcd/_M;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "GOST3411WITHECGOST3410"

    sget-object v2, Labcd/_M;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "GOST3411WITHECGOST3410-2001"

    sget-object v2, Labcd/_M;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    const-string v1, "GOST3411WITHGOST3410-2001"

    sget-object v2, Labcd/_M;->Zo:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/QN;->u7:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/QN;->J0:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/QN;->J8:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/QN;->Ws:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/QN;->QX:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/QN;->x9:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/hN;->vy:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/hN;->P8:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/hN;->ei:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/hN;->nw:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/_M;->v5:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->DW:Ljava/util/Set;

    sget-object v1, Labcd/_M;->Zo:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/lN;->Zo:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/lN;->Ws:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/lN;->we:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/lN;->J0:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/lN;->J8:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/oN;->VH:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/oN;->Zo:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/xP;->Hw:Ljava/util/Set;

    sget-object v1, Labcd/oN;->gn:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/jN;->u7:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/xP;->FH:Ljava/util/Map;

    const-string v2, "SHA1WITHRSAANDMGF1"

    const/16 v3, 0x14

    invoke-static {v0, v3}, Labcd/xP;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->v5:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/xP;->FH:Ljava/util/Map;

    const-string v2, "SHA224WITHRSAANDMGF1"

    const/16 v3, 0x1c

    invoke-static {v0, v3}, Labcd/xP;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->DW:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/xP;->FH:Ljava/util/Map;

    const-string v2, "SHA256WITHRSAANDMGF1"

    const/16 v3, 0x20

    invoke-static {v0, v3}, Labcd/xP;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->FH:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/xP;->FH:Ljava/util/Map;

    const-string v2, "SHA384WITHRSAANDMGF1"

    const/16 v3, 0x30

    invoke-static {v0, v3}, Labcd/xP;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/hN;->Hw:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sget-object v1, Labcd/xP;->FH:Ljava/util/Map;

    const-string v2, "SHA512WITHRSAANDMGF1"

    const/16 v3, 0x40

    invoke-static {v0, v3}, Labcd/xP;->j6(Labcd/wN;I)Labcd/nN;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Ws:Labcd/zL;

    sget-object v2, Labcd/hN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->we:Labcd/zL;

    sget-object v2, Labcd/hN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->J0:Labcd/zL;

    sget-object v2, Labcd/hN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->J8:Labcd/zL;

    sget-object v2, Labcd/hN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->FH:Labcd/zL;

    sget-object v2, Labcd/lN;->ei:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Hw:Labcd/zL;

    sget-object v2, Labcd/lN;->nw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->v5:Labcd/zL;

    sget-object v2, Labcd/lN;->SI:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Zo:Labcd/zL;

    sget-object v2, Labcd/jN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/oN;->VH:Labcd/zL;

    sget-object v2, Labcd/oN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/oN;->Zo:Labcd/zL;

    sget-object v2, Labcd/oN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/oN;->gn:Labcd/zL;

    sget-object v2, Labcd/oN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/_M;->v5:Labcd/zL;

    sget-object v2, Labcd/_M;->j6:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/xP;->v5:Ljava/util/Map;

    sget-object v1, Labcd/_M;->Zo:Labcd/zL;

    sget-object v2, Labcd/_M;->j6:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DW(Ljava/lang/String;)Labcd/wN;
    .registers 6

    invoke-static {p0}, Labcd/TP;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Labcd/xP;->j6:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/zL;

    if-eqz v0, :cond_4

    sget-object v2, Labcd/xP;->DW:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Labcd/wN;

    invoke-direct {v1, v0}, Labcd/wN;-><init>(Labcd/zL;)V

    :goto_0
    sget-object v2, Labcd/xP;->Hw:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Labcd/wN;

    sget-object v3, Labcd/lN;->DW:Labcd/zL;

    new-instance v4, Labcd/mM;

    invoke-direct {v4}, Labcd/mM;-><init>()V

    invoke-direct {v2, v3, v4}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    :cond_0
    invoke-virtual {v1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    sget-object v3, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v2, v3}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/nN;

    invoke-virtual {v0}, Labcd/nN;->v5()Labcd/wN;

    :goto_1
    return-object v1

    :cond_1
    sget-object v2, Labcd/xP;->FH:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Labcd/wN;

    sget-object v3, Labcd/xP;->FH:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qL;

    invoke-direct {v2, v0, v1}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Labcd/wN;

    sget-object v2, Labcd/mM;->j6:Labcd/mM;

    invoke-direct {v1, v0, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    goto :goto_0

    :cond_3
    new-instance v2, Labcd/wN;

    sget-object v3, Labcd/xP;->v5:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/zL;

    new-instance v3, Labcd/mM;

    invoke-direct {v3}, Labcd/mM;-><init>()V

    invoke-direct {v2, v0, v3}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature type requested: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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


# virtual methods
.method public j6(Ljava/lang/String;)Labcd/wN;
    .registers 3

    invoke-static {p1}, Labcd/xP;->DW(Ljava/lang/String;)Labcd/wN;

    move-result-object v0

    return-object v0
.end method
