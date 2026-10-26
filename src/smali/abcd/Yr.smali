.class public final Labcd/Yr;
.super Labcd/Pr;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Labcd/Pr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/Ss;
    .locals 1

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Tr;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .locals 6

    new-instance v0, Labcd/Yr;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    return-object v0
.end method

.method public j6(Labcd/Tr$b;)V
    .locals 0

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/Yr;)V

    return-void
.end method
