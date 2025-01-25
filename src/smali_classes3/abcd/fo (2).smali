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
    .registers 3

    new-instance p1, Labcd/fo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/fo;-><init>(Labcd/hs;)V

    return-object p1
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/fo;->DW()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const-string p1, "nop // spacer"

    return-object p1
.end method

.method public j6(Labcd/Lt;)V
    .registers 3

    invoke-virtual {p0}, Labcd/fo;->DW()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-static {v0, v0}, Labcd/ao;->j6(II)S

    move-result v0

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    :cond_e
    return-void
.end method
