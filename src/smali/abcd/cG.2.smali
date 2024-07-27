.class public Labcd/cG;
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

    const/4 v0, 0x3

    return v0
.end method

.method j6(Labcd/qG;)V
    .registers 4

    iget-object v0, p1, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v0, p0}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/iG;->EQ:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/iG;->EQ:I

    return-void

    :cond_0
    new-instance v0, Labcd/fD;

    invoke-virtual {p0}, Labcd/cG;->aM()I

    move-result v1

    invoke-direct {v0, p0, v1}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0
.end method
