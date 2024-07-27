.class public Labcd/gu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/bu;


# instance fields
.field final j6:Labcd/au;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/au;

    invoke-direct {v0}, Labcd/au;-><init>()V

    iput-object v0, p0, Labcd/gu;->j6:Labcd/au;

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->er()V

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->FH(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Labcd/gu;->j6:Labcd/au;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Labcd/au;->j6(II)V

    :cond_0
    return-void
.end method

.method public iterator()Labcd/_t;
    .registers 2

    new-instance v0, Labcd/fu;

    invoke-direct {v0, p0}, Labcd/fu;-><init>(Labcd/gu;)V

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bu;)V
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/gu;

    if-eqz v1, :cond_4

    check-cast p1, Labcd/gu;

    iget-object v1, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v3

    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_8

    if-ge v2, v3, :cond_8

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    iget-object v5, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v5, v2}, Labcd/au;->get(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/gu;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, v4, :cond_1

    :goto_2
    if-ge v0, v4, :cond_2

    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/gu;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    if-ge v2, v3, :cond_7

    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    iget-object v5, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v5, v2}, Labcd/au;->get(I)I

    move-result v5

    if-lt v1, v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->er()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    instance-of v1, p1, Labcd/Nt;

    if-eqz v1, :cond_6

    check-cast p1, Labcd/Nt;

    :goto_5
    if-ltz v0, :cond_5

    iget-object v1, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->DW(I)V

    iget-object v1, p1, Labcd/Nt;->j6:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Labcd/Ot;->DW([II)I

    move-result v0

    goto :goto_5

    :cond_5
    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->er()V

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Labcd/_t;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Labcd/_t;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/gu;->add(I)V

    goto :goto_6

    :cond_7
    move v1, v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public j6(I)Z
    .registers 3

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->v5(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
