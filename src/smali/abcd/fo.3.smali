.class public final Labcd/fo;
.super Labcd/qo;


# direct methods
.method public constructor <init>(Labcd/hs;)V
    .registers 3

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {p0, p1, v0}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    invoke-virtual {p0}, Labcd/Vn;->FH()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 4

    new-instance v0, Labcd/fo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/fo;-><init>(Labcd/hs;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Labcd/fo;->DW()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nop // spacer"

    goto :goto_0
.end method

.method public j6(Labcd/Lt;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/fo;->DW()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v1}, Labcd/ao;->j6(II)S

    move-result v0

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    :cond_0
    return-void
.end method
