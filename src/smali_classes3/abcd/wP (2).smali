.class public Labcd/wP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/yP;


# static fields
.field private static DW:Ljava/util/Map;

.field private static j6:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/wP;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/wP;->DW:Ljava/util/Map;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/jN;->FH:Labcd/zL;

    sget-object v2, Labcd/lN;->nw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/jN;->j6:Labcd/zL;

    sget-object v2, Labcd/lN;->nw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/jN;->EQ:Labcd/zL;

    sget-object v2, Labcd/jN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Ws:Labcd/zL;

    sget-object v2, Labcd/hN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->we:Labcd/zL;

    sget-object v2, Labcd/hN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->J0:Labcd/zL;

    sget-object v2, Labcd/hN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->J8:Labcd/zL;

    sget-object v2, Labcd/hN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->FH:Labcd/zL;

    sget-object v2, Labcd/lN;->ei:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Hw:Labcd/zL;

    sget-object v2, Labcd/lN;->nw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->v5:Labcd/zL;

    sget-object v2, Labcd/lN;->SI:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/lN;->Zo:Labcd/zL;

    sget-object v2, Labcd/jN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->u7:Labcd/zL;

    sget-object v2, Labcd/jN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->J0:Labcd/zL;

    sget-object v2, Labcd/hN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->J8:Labcd/zL;

    sget-object v2, Labcd/hN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->Ws:Labcd/zL;

    sget-object v2, Labcd/hN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->QX:Labcd/zL;

    sget-object v2, Labcd/hN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/QN;->x9:Labcd/zL;

    sget-object v2, Labcd/jN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/hN;->vy:Labcd/zL;

    sget-object v2, Labcd/hN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/hN;->P8:Labcd/zL;

    sget-object v2, Labcd/hN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/hN;->ei:Labcd/zL;

    sget-object v2, Labcd/hN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/hN;->nw:Labcd/zL;

    sget-object v2, Labcd/hN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/oN;->VH:Labcd/zL;

    sget-object v2, Labcd/oN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/oN;->Zo:Labcd/zL;

    sget-object v2, Labcd/oN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/oN;->gn:Labcd/zL;

    sget-object v2, Labcd/oN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/_M;->v5:Labcd/zL;

    sget-object v2, Labcd/_M;->j6:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->j6:Ljava/util/Map;

    sget-object v1, Labcd/_M;->Zo:Labcd/zL;

    sget-object v2, Labcd/_M;->j6:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "SHA-1"

    sget-object v2, Labcd/jN;->u7:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "SHA-224"

    sget-object v2, Labcd/hN;->v5:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "SHA-256"

    sget-object v2, Labcd/hN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "SHA-384"

    sget-object v2, Labcd/hN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "SHA-512"

    sget-object v2, Labcd/hN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "GOST3411"

    sget-object v2, Labcd/_M;->j6:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "MD2"

    sget-object v2, Labcd/lN;->ei:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "MD4"

    sget-object v2, Labcd/lN;->nw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "MD5"

    sget-object v2, Labcd/lN;->SI:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "RIPEMD128"

    sget-object v2, Labcd/oN;->FH:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "RIPEMD160"

    sget-object v2, Labcd/oN;->DW:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/wP;->DW:Ljava/util/Map;

    const-string v1, "RIPEMD256"

    sget-object v2, Labcd/oN;->Hw:Labcd/zL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/wN;)Labcd/wN;
    .registers 4

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p1

    check-cast p1, Labcd/nN;

    invoke-virtual {p1}, Labcd/nN;->v5()Labcd/wN;

    move-result-object p1

    goto :goto_2e

    :cond_17
    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/wP;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/zL;

    new-instance v1, Labcd/mM;

    invoke-direct {v1}, Labcd/mM;-><init>()V

    invoke-direct {v0, p1, v1}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    move-object p1, v0

    :goto_2e
    return-object p1
.end method
