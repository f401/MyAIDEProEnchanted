.class public abstract Labcd/qs;
.super Labcd/Fs;


# instance fields
.field private final FH:Labcd/Os;

.field private Hw:Labcd/Os;


# direct methods
.method constructor <init>(Labcd/Ks;Labcd/Hs;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/Fs;-><init>(Labcd/Ks;Labcd/Hs;)V

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Hs;->VH()Labcd/Js;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Os;->j6(Ljava/lang/String;)Labcd/Os;

    move-result-object v0

    iput-object v0, p0, Labcd/qs;->FH:Labcd/Os;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/qs;->Hw:Labcd/Os;

    return-void
.end method


# virtual methods
.method protected final DW(Labcd/ms;)I
    .registers 4

    invoke-super {p0, p1}, Labcd/Fs;->DW(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Labcd/qs;

    iget-object v0, p0, Labcd/qs;->FH:Labcd/Os;

    iget-object v1, p1, Labcd/qs;->FH:Labcd/Os;

    invoke-virtual {v0, v1}, Labcd/Os;->j6(Labcd/Os;)I

    move-result v0

    goto :goto_0
.end method

.method public final DW(Z)Labcd/Os;
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/qs;->FH:Labcd/Os;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/qs;->Hw:Labcd/Os;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Labcd/Fs;->VH()Labcd/Ks;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    iget-object v1, p0, Labcd/qs;->FH:Labcd/Os;

    invoke-virtual {v1, v0}, Labcd/Os;->j6(Labcd/Qs;)Labcd/Os;

    move-result-object v0

    iput-object v0, p0, Labcd/qs;->Hw:Labcd/Os;

    :cond_1
    iget-object v0, p0, Labcd/qs;->Hw:Labcd/Os;

    goto :goto_0
.end method

.method public final J8()Labcd/Os;
    .registers 2

    iget-object v0, p0, Labcd/qs;->FH:Labcd/Os;

    return-object v0
.end method

.method public final Ws()Z
    .registers 2

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Hs;->Ws()Z

    move-result v0

    return v0
.end method

.method public final getType()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/qs;->FH:Labcd/Os;

    invoke-virtual {v0}, Labcd/Os;->we()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Z)I
    .registers 3

    invoke-virtual {p0, p1}, Labcd/qs;->DW(Z)Labcd/Os;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ps;->rN()I

    move-result v0

    return v0
.end method

.method public final lg()Z
    .registers 2

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Hs;->lg()Z

    move-result v0

    return v0
.end method
