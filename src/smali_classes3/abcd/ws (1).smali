.class public final Labcd/ws;
.super Labcd/Fs;


# direct methods
.method public constructor <init>(Labcd/Ks;Labcd/Hs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Fs;-><init>(Labcd/Ks;Labcd/Hs;)V

    return-void
.end method

.method public static j6(Labcd/Qs;)Labcd/ws;
    .registers 3

    new-instance v0, Labcd/ws;

    invoke-static {p0}, Labcd/Ks;->j6(Labcd/Qs;)Labcd/Ks;

    move-result-object p0

    sget-object v1, Labcd/Hs;->j6:Labcd/Hs;

    invoke-direct {v0, p0, v1}, Labcd/ws;-><init>(Labcd/Ks;Labcd/Hs;)V

    return-object v0
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 3

    invoke-super {p0, p1}, Labcd/Fs;->DW(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    check-cast p1, Labcd/ws;

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Hs;->VH()Labcd/Js;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Hs;->VH()Labcd/Js;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "field"

    return-object v0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    invoke-virtual {p0}, Labcd/Fs;->we()Labcd/Hs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Hs;->we()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method
