.class public final Labcd/po;
.super Labcd/Zn;


# instance fields
.field private v5:Labcd/Sn;


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Labcd/Zn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Labcd/po;->v5:Labcd/Sn;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public J0()I
    .registers 2

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    return v0
.end method

.method public J8()I
    .registers 3

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    invoke-virtual {p0}, Labcd/Vn;->FH()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public Ws()Z
    .registers 2

    invoke-virtual {p0}, Labcd/Vn;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Labcd/Xn;)Labcd/Vn;
    .registers 6

    new-instance v0, Labcd/po;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v2

    iget-object v3, p0, Labcd/po;->v5:Labcd/Sn;

    invoke-direct {v0, p1, v1, v2, v3}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    return-object v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 6

    new-instance v0, Labcd/po;

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v2

    iget-object v3, p0, Labcd/po;->v5:Labcd/Sn;

    invoke-direct {v0, v1, v2, p1, v3}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    return-object v0
.end method

.method public j6(Labcd/Sn;)Labcd/po;
    .registers 6

    new-instance v0, Labcd/po;

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xn;->Zo()Labcd/Xn;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    if-nez v0, :cond_0

    const-string v0, "????"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/Vn;->EQ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public we()Labcd/Sn;
    .registers 2

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    return-object v0
.end method
