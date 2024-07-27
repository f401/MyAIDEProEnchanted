.class public abstract Labcd/CF;
.super Labcd/wF;


# instance fields
.field private gn:Labcd/mG;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/wF;-><init>(Labcd/UE;)V

    return-void
.end method


# virtual methods
.method public DW(Labcd/YD;)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    iput-object v0, p0, Labcd/CF;->gn:Labcd/mG;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/CF;->gn:Labcd/mG;

    goto :goto_0
.end method

.method public varargs j6([Labcd/YD;)Z
    .registers 4

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Labcd/wF;->j6([Labcd/YD;)Z

    move-result v0

    goto :goto_0
.end method

.method protected v5()Labcd/TJ;
    .registers 3

    iget-object v0, p0, Labcd/CF;->gn:Labcd/mG;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Labcd/wF;->j6(Labcd/YD;)Labcd/TJ;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Labcd/wF;->DW(II)Labcd/TJ;

    move-result-object v0

    goto :goto_0
.end method
