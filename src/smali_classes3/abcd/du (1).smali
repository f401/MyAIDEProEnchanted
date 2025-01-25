.class public Labcd/du;
.super Labcd/Xt;


# instance fields
.field private final FH:Labcd/au;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    new-instance v0, Labcd/au;

    invoke-direct {v0, p1}, Labcd/au;-><init>(I)V

    iput-object v0, p0, Labcd/du;->FH:Labcd/au;

    return-void
.end method

.method public constructor <init>(Labcd/du;)V
    .registers 5

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Xt;-><init>(I)V

    iget-object v0, p1, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->lg()Labcd/au;

    move-result-object v0

    iput-object v0, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_22

    invoke-virtual {p1, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v1, v2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method

.method private er()V
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/cu;

    if-eqz v2, :cond_18

    iget-object v3, p0, Labcd/du;->FH:Labcd/au;

    invoke-interface {v2}, Labcd/cu;->DW()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Labcd/au;->FH(II)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method private j6(II)V
    .registers 7

    iget-object v0, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    sub-int v2, p1, v0

    if-gt v1, v2, :cond_14

    iget-object v2, p0, Labcd/du;->FH:Labcd/au;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    iget-object v0, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v0, p1, p2}, Labcd/au;->FH(II)V

    return-void
.end method

.method private v5(I)V
    .registers 4

    iget-object v0, p0, Labcd/du;->FH:Labcd/au;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Labcd/au;->FH(II)V

    return-void
.end method


# virtual methods
.method public final Hw(I)I
    .registers 3

    iget-object v0, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    iget-object v0, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->get(I)I

    move-result p1

    return p1
.end method

.method protected j6(ILabcd/cu;)V
    .registers 4

    invoke-virtual {p0, p1}, Labcd/Xt;->FH(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/cu;

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    if-eqz v0, :cond_12

    invoke-interface {v0}, Labcd/cu;->DW()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/du;->v5(I)V

    :cond_12
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Labcd/cu;->DW()I

    move-result p2

    invoke-direct {p0, p2, p1}, Labcd/du;->j6(II)V

    :cond_1b
    return-void
.end method

.method public lg()V
    .registers 1

    invoke-super {p0}, Labcd/Xt;->lg()V

    invoke-direct {p0}, Labcd/du;->er()V

    return-void
.end method

.method public final rN()I
    .registers 3

    iget-object v0, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_15

    iget-object v1, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    if-gez v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_15
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/du;->FH:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->gn(I)V

    return v0
.end method
