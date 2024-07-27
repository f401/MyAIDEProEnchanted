.class public final Labcd/pp;
.super Labcd/yp;


# direct methods
.method public constructor <init>(Labcd/ws;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/yp;-><init>(Labcd/Fs;)V

    return-void
.end method


# virtual methods
.method protected DW(Labcd/jp;)I
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/pp;->U2()Labcd/ws;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Qp;->j6(Labcd/Qs;)I

    move-result v0

    return v0
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->v5:Labcd/wp;

    return-object v0
.end method

.method protected Mr()Ljava/lang/String;
    .registers 2

    const-string v0, "type_idx"

    return-object v0
.end method

.method public U2()Labcd/ws;
    .registers 2

    invoke-virtual {p0}, Labcd/yp;->j3()Labcd/Fs;

    move-result-object v0

    check-cast v0, Labcd/ws;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-super {p0, p1}, Labcd/yp;->j6(Labcd/jp;)V

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/pp;->U2()Labcd/ws;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ws;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Qp;->DW(Labcd/Qs;)Labcd/Pp;

    return-void
.end method
