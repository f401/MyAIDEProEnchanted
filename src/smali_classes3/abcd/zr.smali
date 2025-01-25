.class Labcd/zr;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/iq;

.field private FH:Labcd/Gn;

.field private j6:Labcd/xr;


# direct methods
.method public constructor <init>(Labcd/xr;Labcd/iq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/zr;->j6:Labcd/xr;

    iput-object p2, p0, Labcd/zr;->DW:Labcd/iq;

    invoke-virtual {p2}, Labcd/iq;->j6()Labcd/Gn;

    move-result-object p1

    iput-object p1, p0, Labcd/zr;->FH:Labcd/Gn;

    return-void
.end method

.method private DW(Labcd/yr;)V
    .registers 8

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->EQ:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1}, Labcd/iq$a;->gn()I

    move-result v3

    invoke-virtual {v1}, Labcd/iq$a;->EQ()Labcd/Xp;

    move-result-object v4

    iget-object v5, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v4}, Labcd/yr;->j6(Labcd/Xp;)Labcd/Xp;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/xr;->j6(Labcd/Xp;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Labcd/yr;->FH(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    return-void
.end method

.method private FH(Labcd/yr;)V
    .registers 8

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->QX:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1}, Labcd/iq$a;->gn()I

    move-result v3

    invoke-virtual {v1}, Labcd/iq$a;->u7()Labcd/Vp;

    move-result-object v4

    iget-object v5, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v4}, Labcd/yr;->j6(Labcd/Vp;)Labcd/Vp;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/xr;->j6(Labcd/Vp;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Labcd/yr;->DW(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    return-void
.end method

.method private Hw(Labcd/yr;)V
    .registers 8

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->XL:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1}, Labcd/iq$a;->gn()I

    move-result v3

    invoke-virtual {v1}, Labcd/iq$a;->J8()Labcd/jq;

    move-result-object v4

    iget-object v5, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v4}, Labcd/yr;->j6(Labcd/jq;)Labcd/jq;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/xr;->j6(Labcd/jq;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Labcd/yr;->v5(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    return-void
.end method

.method private VH(Labcd/yr;)V
    .registers 7

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->Hw:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1}, Labcd/iq$a;->j3()Labcd/qq;

    move-result-object v3

    iget-object v4, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v3}, Labcd/yr;->j6(Labcd/qq;)Labcd/qq;

    move-result-object v3

    invoke-virtual {v4, v3}, Labcd/xr;->j6(Labcd/qq;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Labcd/yr;->gn(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return-void
.end method

.method private Zo(Labcd/yr;)V
    .registers 7

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->Zo:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1}, Labcd/iq$a;->aM()Labcd/nq;

    move-result-object v3

    iget-object v4, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v3}, Labcd/yr;->j6(Labcd/nq;)Labcd/nq;

    move-result-object v3

    invoke-virtual {v4, v3}, Labcd/xr;->j6(Labcd/nq;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Labcd/yr;->VH(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return-void
.end method

.method private gn(Labcd/yr;)V
    .registers 8

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->DW:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1}, Labcd/iq$a;->XL()I

    move-result v3

    iget-object v4, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {v1}, Labcd/iq$a;->VH()[B

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Labcd/xr;->j6([BI)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Labcd/yr;->u7(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return-void
.end method

.method private j6(Labcd/yr;)V
    .registers 8

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->tp:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1}, Labcd/iq$a;->gn()I

    move-result v3

    invoke-virtual {v1}, Labcd/iq$a;->we()Labcd/Yp;

    move-result-object v4

    iget-object v5, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v4}, Labcd/yr;->j6(Labcd/Yp;)Labcd/Yp;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/xr;->j6(Labcd/Yp;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Labcd/yr;->Hw(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    return-void
.end method

.method private tp(Labcd/yr;)V
    .registers 8

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->u7:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1}, Labcd/iq$a;->gn()I

    move-result v3

    invoke-virtual {v1}, Labcd/iq$a;->lg()Labcd/fr;

    move-result-object v4

    iget-object v5, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v4}, Labcd/yr;->j6(Labcd/fr;)Labcd/fr;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/xr;->j6(Labcd/fr;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Labcd/yr;->EQ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    return-void
.end method

.method private u7(Labcd/yr;)V
    .registers 7

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->FH:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1}, Labcd/iq$a;->XL()I

    move-result v3

    iget-object v4, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v3}, Labcd/yr;->u7(I)I

    move-result v3

    invoke-virtual {v4, v3}, Labcd/xr;->DW(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Labcd/yr;->tp(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return-void
.end method

.method private v5(Labcd/yr;)V
    .registers 7

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    iget-object v0, v0, Labcd/Gn;->v5:Labcd/Gn$a;

    invoke-virtual {v0}, Labcd/Gn$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Labcd/zr;->DW:Labcd/iq;

    iget v2, v0, Labcd/Gn$a;->FH:I

    invoke-virtual {v1, v2}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    iget v3, v0, Labcd/Gn$a;->DW:I

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1}, Labcd/iq$a;->QX()Labcd/lq;

    move-result-object v3

    iget-object v4, p0, Labcd/zr;->j6:Labcd/xr;

    invoke-virtual {p1, v3}, Labcd/yr;->j6(Labcd/lq;)Labcd/lq;

    move-result-object v3

    invoke-virtual {v4, v3}, Labcd/xr;->j6(Labcd/lq;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Labcd/yr;->Zo(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return-void
.end method


# virtual methods
.method public j6()Labcd/yr;
    .registers 9

    iget-object v0, p0, Labcd/zr;->FH:Labcd/Gn;

    new-instance v7, Labcd/yr;

    iget-object v1, v0, Labcd/Gn;->DW:Labcd/Gn$a;

    iget v2, v1, Labcd/Gn$a;->DW:I

    iget-object v1, v0, Labcd/Gn;->FH:Labcd/Gn$a;

    iget v3, v1, Labcd/Gn$a;->DW:I

    iget-object v1, v0, Labcd/Gn;->Hw:Labcd/Gn$a;

    iget v4, v1, Labcd/Gn$a;->DW:I

    iget-object v1, v0, Labcd/Gn;->v5:Labcd/Gn$a;

    iget v5, v1, Labcd/Gn$a;->DW:I

    iget-object v0, v0, Labcd/Gn;->Zo:Labcd/Gn$a;

    iget v6, v0, Labcd/Gn$a;->DW:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Labcd/yr;-><init>(IIIII)V

    invoke-direct {p0, v7}, Labcd/zr;->gn(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->u7(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->tp(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->VH(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->v5(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->Zo(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->FH(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->DW(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->j6(Labcd/yr;)V

    invoke-direct {p0, v7}, Labcd/zr;->Hw(Labcd/yr;)V

    return-object v7
.end method
