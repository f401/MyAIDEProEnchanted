.class public Labcd/LC;
.super Labcd/RC;


# instance fields
.field private final aM:Labcd/MC;


# direct methods
.method constructor <init>(Labcd/LC;Labcd/TC;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/RC;-><init>(Labcd/RC;Labcd/TC;)V

    iget-object v0, p1, Labcd/LC;->aM:Labcd/MC;

    iput-object v0, p0, Labcd/LC;->aM:Labcd/MC;

    return-void
.end method

.method public constructor <init>(Labcd/MC;)V
    .registers 3

    invoke-virtual {p1}, Labcd/IC;->FH()Labcd/KC;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/RC;-><init>(Labcd/KC;)V

    iput-object p1, p0, Labcd/LC;->aM:Labcd/MC;

    return-void
.end method


# virtual methods
.method public J0()V
    .registers 4

    iget v0, p0, Labcd/RC;->J8:I

    iget-object v1, p0, Labcd/RC;->u7:Labcd/KC;

    invoke-virtual {v1}, Labcd/KC;->v5()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Labcd/LC;->aM:Labcd/MC;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v0, v1}, Labcd/MC;->DW(II)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/IE;)Labcd/TJ;
    .registers 5

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_0

    new-instance v1, Labcd/LC;

    invoke-direct {v1, p0, v0}, Labcd/LC;-><init>(Labcd/LC;Labcd/TC;)V

    return-object v1

    :cond_0
    new-instance v0, Labcd/ZC;

    invoke-virtual {p0}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    const-string v2, "tree"

    invoke-direct {v0, v1, v2}, Labcd/ZC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method public we()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Labcd/RC;->XL:Labcd/TC;

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/LC;->aM:Labcd/MC;

    iget v2, p0, Labcd/RC;->J8:I

    invoke-virtual {v0}, Labcd/TC;->DW()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Labcd/MC;->DW(II)V

    :goto_0
    invoke-virtual {p0, v3}, Labcd/RC;->FH(I)V

    return-void

    :cond_0
    iget-object v0, p0, Labcd/LC;->aM:Labcd/MC;

    iget v1, p0, Labcd/RC;->J8:I

    invoke-virtual {v0, v1, v3}, Labcd/MC;->DW(II)V

    goto :goto_0
.end method
