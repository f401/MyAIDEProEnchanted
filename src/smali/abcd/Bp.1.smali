.class public final Labcd/Bp;
.super Labcd/yp;


# direct methods
.method public constructor <init>(Labcd/qs;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/yp;-><init>(Labcd/Fs;)V

    return-void
.end method


# virtual methods
.method protected DW(Labcd/jp;)I
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->EQ()Labcd/Jp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Bp;->U2()Labcd/qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/qs;->J8()Labcd/Os;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Jp;->j6(Labcd/Os;)I

    move-result v0

    return v0
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->Zo:Labcd/wp;

    return-object v0
.end method

.method protected Mr()Ljava/lang/String;
    .registers 2

    const-string v0, "proto_idx"

    return-object v0
.end method

.method public U2()Labcd/qs;
    .registers 2

    invoke-virtual {p0}, Labcd/yp;->j3()Labcd/Fs;

    move-result-object v0

    check-cast v0, Labcd/qs;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-super {p0, p1}, Labcd/yp;->j6(Labcd/jp;)V

    invoke-virtual {p1}, Labcd/jp;->EQ()Labcd/Jp;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Bp;->U2()Labcd/qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/qs;->J8()Labcd/Os;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Jp;->DW(Labcd/Os;)Labcd/Ip;

    return-void
.end method
