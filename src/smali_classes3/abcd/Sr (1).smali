.class public final Labcd/Sr;
.super Labcd/Tr;


# instance fields
.field private final Zo:Labcd/ms;

.field private final v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/cs;Ljava/util/ArrayList;Labcd/ms;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/es;",
            "Labcd/hs;",
            "Labcd/cs;",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;",
            "Labcd/ms;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    iput-object p4, p0, Labcd/Sr;->v5:Ljava/util/ArrayList;

    iput-object p5, p0, Labcd/Sr;->Zo:Labcd/ms;

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW()Labcd/Ss;
    .registers 2

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    return-object v0
.end method

.method public EQ()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Sr;->v5:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Tr;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .registers 9

    new-instance p1, Labcd/Sr;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    iget-object v4, p0, Labcd/Sr;->v5:Ljava/util/ArrayList;

    iget-object v5, p0, Labcd/Sr;->Zo:Labcd/ms;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Labcd/Sr;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Ljava/util/ArrayList;Labcd/ms;)V

    return-object p1
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/Sr;)V

    return-void
.end method

.method public tp()Labcd/ms;
    .registers 2

    iget-object v0, p0, Labcd/Sr;->Zo:Labcd/ms;

    return-object v0
.end method
