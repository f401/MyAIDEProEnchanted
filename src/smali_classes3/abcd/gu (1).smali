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

    invoke-virtual {v0}, Labcd/au;->er()V

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->FH(I)I

    move-result v0

    if-gez v0, :cond_10

    iget-object v1, p0, Labcd/gu;->j6:Labcd/au;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Labcd/au;->j6(II)V

    :cond_10
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

    instance-of v0, p1, Labcd/gu;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    check-cast p1, Labcd/gu;

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    iget-object v2, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_14
    if-ge v1, v2, :cond_4a

    if-ge v3, v0, :cond_4a

    :goto_18
    if-ge v1, v2, :cond_34

    iget-object v4, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v4

    iget-object v5, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v5, v3}, Labcd/au;->get(I)I

    move-result v5

    if-ge v4, v5, :cond_34

    iget-object v4, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Labcd/gu;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_34
    if-ne v1, v2, :cond_37

    goto :goto_4a

    :cond_37
    :goto_37
    if-ge v3, v0, :cond_14

    iget-object v4, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v4

    iget-object v5, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v5, v3}, Labcd/au;->get(I)I

    move-result v5

    if-lt v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4a
    :goto_4a
    if-ge v1, v2, :cond_6e

    iget-object v0, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/gu;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_58
    instance-of v0, p1, Labcd/Nt;

    if-eqz v0, :cond_74

    check-cast p1, Labcd/Nt;

    :goto_5e
    if-ltz v1, :cond_6e

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0, v1}, Labcd/au;->DW(I)V

    iget-object v0, p1, Labcd/Nt;->j6:[I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Labcd/Ot;->DW([II)I

    move-result v1

    goto :goto_5e

    :cond_6e
    iget-object p1, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {p1}, Labcd/au;->er()V

    goto :goto_86

    :cond_74
    invoke-interface {p1}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object p1

    :goto_78
    invoke-interface {p1}, Labcd/_t;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p1}, Labcd/_t;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/gu;->add(I)V

    goto :goto_78

    :cond_86
    :goto_86
    return-void
.end method

.method public j6(I)Z
    .registers 3

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->v5(I)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
