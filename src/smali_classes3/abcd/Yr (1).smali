.class public final Labcd/Yr;
.super Labcd/Pr;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Labcd/Pr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_b

    return-void

    :cond_b
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
    .registers 10

    new-instance v6, Labcd/Yr;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v5

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    return-object v6
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/Yr;)V

    return-void
.end method
