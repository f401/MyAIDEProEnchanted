.class public final Labcd/is;
.super Labcd/Tr;


# instance fields
.field private final v5:Labcd/au;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/au;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    if-eqz p5, :cond_0

    iput-object p5, p0, Labcd/is;->v5:Labcd/au;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
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

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/is;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->toString()Ljava/lang/String;

    move-result-object v0

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
    .registers 9

    new-instance v0, Labcd/is;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    iget-object v5, p0, Labcd/is;->v5:Labcd/au;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Labcd/is;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/au;)V

    return-object v0
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/is;)V

    return-void
.end method

.method public j6(Labcd/Tr;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public tp()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/is;->v5:Labcd/au;

    return-object v0
.end method
