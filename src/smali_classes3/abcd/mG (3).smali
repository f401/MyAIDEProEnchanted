.class public Labcd/mG;
.super Labcd/iG;


# direct methods
.method protected constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/iG;-><init>(Labcd/YD;)V

    return-void
.end method


# virtual methods
.method public final aM()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method j6(Labcd/qG;)V
    .registers 3

    iget-object p1, p1, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {p1, p0}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Labcd/iG;->EQ:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/iG;->EQ:I

    return-void

    :cond_f
    new-instance p1, Labcd/fD;

    invoke-virtual {p0}, Labcd/mG;->aM()I

    move-result v0

    invoke-direct {p1, p0, v0}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw p1
.end method
