.class public Landroid/support/v4/view/j;
.super Ljava/lang/Object;


# instance fields
.field private DW:Landroid/view/ViewParent;

.field private final FH:Landroid/view/View;

.field private Hw:Z

.field private j6:Landroid/view/ViewParent;

.field private v5:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    return-void
.end method

.method private Hw(I)Landroid/view/ViewParent;
    .registers 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/j;->DW:Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/j;->j6:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method private j6(ILandroid/view/ViewParent;)V
    .registers 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Landroid/support/v4/view/j;->DW:Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Landroid/support/v4/view/j;->j6:Landroid/view/ViewParent;

    goto :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/j;->Hw:Z

    return v0
.end method

.method public DW(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/j;->j6(II)Z

    move-result v0

    return v0
.end method

.method public FH()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/j;->FH(I)V

    return-void
.end method

.method public FH(I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/j;->j6(ILandroid/view/ViewParent;)V

    :cond_0
    return-void
.end method

.method public j6(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/j;->Hw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->EQ(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/view/j;->Hw:Z

    return-void
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/j;->j6(I)Z

    move-result v0

    return v0
.end method

.method public j6(FF)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public j6(FFZ)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public j6(I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(II)Z
    .registers 7

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Landroid/support/v4/view/j;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroid/support/v4/view/A;->DW(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, v1}, Landroid/support/v4/view/j;->j6(ILandroid/view/ViewParent;)V

    iget-object v3, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(IIII[I)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/j;->j6(IIII[II)Z

    move-result v0

    return v0
.end method

.method public j6(IIII[II)Z
    .registers 16

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p6}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    if-eqz p5, :cond_5

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    move v7, v1

    move v8, v2

    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-eqz p5, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v1, v7

    aput v1, p5, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, p5, v1

    sub-int/2addr v1, v8

    aput v1, p5, v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p5, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p5, v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v1

    move v8, v2

    goto :goto_1
.end method

.method public j6(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/j;->j6(II[I[II)Z

    move-result v0

    return v0
.end method

.method public j6(II[I[II)Z
    .registers 16

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    if-eqz p4, :cond_6

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, p4, v7

    aget v1, p4, v6

    move v8, v1

    move v9, v2

    :goto_1
    if-nez p3, :cond_9

    iget-object v1, p0, Landroid/support/v4/view/j;->v5:[I

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/view/j;->v5:[I

    :cond_3
    iget-object v4, p0, Landroid/support/v4/view/j;->v5:[I

    :goto_2
    aput v7, v4, v7

    aput v7, v4, v6

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p4, v7

    sub-int/2addr v0, v9

    aput v0, p4, v7

    aget v0, p4, v6

    sub-int/2addr v0, v8

    aput v0, p4, v6

    :cond_4
    aget v0, v4, v7

    if-nez v0, :cond_8

    aget v0, v4, v6

    if-eqz v0, :cond_7

    move v0, v6

    :goto_3
    move v7, v0

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_0

    aput v7, p4, v7

    aput v7, p4, v6

    goto :goto_0

    :cond_6
    move v8, v7

    move v9, v7

    goto :goto_1

    :cond_7
    move v0, v7

    goto :goto_3

    :cond_8
    move v0, v6

    goto :goto_3

    :cond_9
    move-object v4, p3

    goto :goto_2
.end method
