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

    if-eqz p1, :cond_9

    iget-object v0, p0, Labcd/wF;->FH:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-object p1, p0, Labcd/CF;->gn:Labcd/mG;

    return-void
.end method

.method public varargs j6([Labcd/YD;)Z
    .registers 4

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-super {p0, p1}, Labcd/wF;->j6([Labcd/YD;)Z

    move-result p1

    return p1
.end method

.method protected v5()Labcd/TJ;
    .registers 3

    iget-object v0, p0, Labcd/CF;->gn:Labcd/mG;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Labcd/wF;->j6(Labcd/YD;)Labcd/TJ;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Labcd/wF;->DW(II)Labcd/TJ;

    move-result-object v0

    return-object v0
.end method
