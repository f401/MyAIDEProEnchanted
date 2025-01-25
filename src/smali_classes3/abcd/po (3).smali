.class public final Labcd/po;
.super Labcd/Zn;


# instance fields
.field private v5:Labcd/Sn;


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/Zn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    if-eqz p4, :cond_8

    iput-object p4, p0, Labcd/po;->v5:Labcd/Sn;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "target == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_10

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->u7()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
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

    if-nez v0, :cond_7

    const-string v0, "????"

    return-object v0

    :cond_7
    invoke-virtual {v0}, Labcd/Vn;->EQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Labcd/Sn;
    .registers 2

    iget-object v0, p0, Labcd/po;->v5:Labcd/Sn;

    return-object v0
.end method
