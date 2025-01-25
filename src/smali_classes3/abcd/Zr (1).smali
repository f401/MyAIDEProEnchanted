.class public final Labcd/Zr;
.super Labcd/Tr;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/bs;)V
    .registers 5

    invoke-static {p4}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    return-void
.end method

.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result p2

    const/4 p4, 0x5

    if-eq p2, p4, :cond_20

    const/4 p4, 0x6

    if-eq p2, p4, :cond_20

    if-eqz p3, :cond_1f

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    return-void

    :cond_20
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

.method public j6(Labcd/Qs;)Labcd/Tr;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 10

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    :cond_b
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    invoke-interface {v2}, Labcd/Rs;->a8()Z

    move-result v3

    if-nez v3, :cond_54

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_53

    invoke-interface {v2}, Labcd/Rs;->a8()Z

    move-result v1

    if-eqz v1, :cond_53

    move-object v8, v2

    check-cast v8, Labcd/ms;

    invoke-virtual {v0}, Labcd/cs;->er()Labcd/cs;

    move-result-object v7

    new-instance v0, Labcd/Yr;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v2

    invoke-static {v1, v2, v7, v8}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v4

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v5

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    return-object v0

    :cond_53
    return-object p0

    :cond_54
    check-cast v2, Labcd/ms;

    invoke-virtual {v0}, Labcd/cs;->yS()Labcd/cs;

    move-result-object v7

    :try_start_5a
    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_77

    instance-of v1, v2, Labcd/ys;

    if-eqz v1, :cond_77

    check-cast v2, Labcd/ys;

    invoke-virtual {v2}, Labcd/ys;->rN()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v2

    const/16 v0, 0xe

    :cond_77
    move-object v8, v2

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Labcd/gs;->j6(ILabcd/Rs;Labcd/Ss;Labcd/ms;)Labcd/es;

    move-result-object v4
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_80} :catch_8f

    new-instance v0, Labcd/Yr;

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v5

    invoke-virtual {p0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    return-object v0

    :catch_8f
    move-exception v0

    return-object p0
.end method
