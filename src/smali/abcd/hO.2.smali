.class public Labcd/hO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_N;


# static fields
.field private static final j6:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->FH:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->Hw:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->v5:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->Zo:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->Ws:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->we:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->J0:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/lN;->J8:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/jN;->FH:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/jN;->j6:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/jN;->DW:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/jN;->EQ:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/oN;->VH:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/oN;->Zo:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    sget-object v1, Labcd/oN;->gn:Labcd/zL;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

    sget-object v0, Labcd/hO;->j6:Ljava/util/Set;

    invoke-virtual {p1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Labcd/wN;

    sget-object v0, Labcd/lN;->DW:Labcd/zL;

    sget-object v1, Labcd/mM;->j6:Labcd/mM;

    invoke-direct {p1, v0, v1}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    :cond_0
    return-object p1
.end method
