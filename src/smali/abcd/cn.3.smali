.class public final Labcd/cn;
.super Labcd/hu;


# instance fields
.field private final DW:Labcd/au;

.field private final FH:Labcd/au;

.field private Hw:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labcd/hu;-><init>(Z)V

    new-instance v0, Labcd/au;

    invoke-direct {v0, p1}, Labcd/au;-><init>(I)V

    iput-object v0, p0, Labcd/cn;->DW:Labcd/au;

    new-instance v0, Labcd/au;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    iput-object v0, p0, Labcd/cn;->FH:Labcd/au;

    iput p1, p0, Labcd/cn;->Hw:I

    return-void
.end method


# virtual methods
.method public DW(I)I
    .registers 3

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->get(I)I

    move-result v0

    return v0
.end method

.method public FH(I)I
    .registers 3

    iget-object v0, p0, Labcd/cn;->DW:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->get(I)I

    move-result v0

    return v0
.end method

.method public Hw(I)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    iget v1, p0, Labcd/cn;->Hw:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->DW(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "non-default elements not all set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public er()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/cn;->DW:Labcd/au;

    return-object v0
.end method

.method public j6(II)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-ltz p2, :cond_0

    iget-object v0, p0, Labcd/cn;->DW:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->DW(I)V

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0, p2}, Labcd/au;->DW(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lg()I
    .registers 3

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    iget v1, p0, Labcd/cn;->Hw:I

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    return v0
.end method

.method public rN()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/cn;->Hw:I

    return v0
.end method

.method public we()V
    .registers 2

    iget-object v0, p0, Labcd/cn;->DW:Labcd/au;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/hu;->we()V

    invoke-super {p0}, Labcd/hu;->we()V

    return-void
.end method

.method public yS()V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget v3, p0, Labcd/cn;->Hw:I

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v0, v3}, Labcd/au;->get(I)I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v1, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v1, v2}, Labcd/au;->get(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    if-eq v2, v0, :cond_0

    iget-object v5, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v5, v0, v1}, Labcd/au;->FH(II)V

    iget-object v1, p0, Labcd/cn;->DW:Labcd/au;

    invoke-virtual {v1, v2}, Labcd/au;->get(I)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Labcd/au;->FH(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    iget-object v1, p0, Labcd/cn;->DW:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->gn(I)V

    iget-object v1, p0, Labcd/cn;->FH:Labcd/au;

    invoke-virtual {v1, v0, v4}, Labcd/au;->FH(II)V

    iget-object v1, p0, Labcd/cn;->FH:Labcd/au;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Labcd/au;->gn(I)V

    iput v0, p0, Labcd/cn;->Hw:I

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomplete instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
