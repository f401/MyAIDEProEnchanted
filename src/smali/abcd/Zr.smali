.class public final Labcd/Zr;
.super Labcd/Tr;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/bs;)V
    .registers 6

    invoke-static {p4}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    return-void
.end method

.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t mix branchingness with result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/Ss;
    .registers 2

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Tr;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .registers 6

    new-instance v0, Labcd/Zr;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    return-object v0
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/Zr;)V

    return-void
.end method

.method public u7()Labcd/Tr;
    .registers 7

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->a8()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v5

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    invoke-interface {v5}, Labcd/Rs;->a8()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v5, Labcd/ms;

    invoke-virtual {v1}, Labcd/cs;->er()Labcd/cs;

    move-result-object v4

    new-instance v0, Labcd/Yr;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v2

    invoke-static {v1, v2, v4, v5}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    check-cast v0, Labcd/ms;

    invoke-virtual {v1}, Labcd/cs;->yS()Labcd/cs;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    instance-of v2, v0, Labcd/ys;

    if-eqz v2, :cond_3

    const/16 v1, 0xe

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    move-object v5, v0

    :goto_1
    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, Labcd/Yr;

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    move-object p0, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_1
.end method
