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

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    iget-object p1, p0, Landroid/support/v4/view/j;->DW:Landroid/view/ViewParent;

    return-object p1

    :cond_a
    iget-object p1, p0, Landroid/support/v4/view/j;->j6:Landroid/view/ViewParent;

    return-object p1
.end method

.method private j6(ILandroid/view/ViewParent;)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    :cond_6
    iput-object p2, p0, Landroid/support/v4/view/j;->DW:Landroid/view/ViewParent;

    goto :goto_b

    :cond_9
    iput-object p2, p0, Landroid/support/v4/view/j;->j6:Landroid/view/ViewParent;

    :goto_b
    return-void
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

    move-result p1

    return p1
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

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/j;->j6(ILandroid/view/ViewParent;)V

    :cond_f
    return-void
.end method

.method public j6(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/j;->Hw:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->EQ(Landroid/view/View;)V

    :cond_9
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

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_14
    return v1
.end method

.method public j6(FFZ)Z
    .registers 6

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_14
    return v1
.end method

.method public j6(I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public j6(II)Z
    .registers 7

    invoke-virtual {p0, p2}, Landroid/support/v4/view/j;->j6(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    :goto_16
    if-eqz v0, :cond_35

    iget-object v3, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/A;->DW(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-direct {p0, p2, v0}, Landroid/support/v4/view/j;->j6(ILandroid/view/ViewParent;)V

    iget-object v3, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    :cond_29
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_30

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    :cond_35
    const/4 p1, 0x0

    return p1
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

    move-result p1

    return p1
.end method

.method public j6(IIII[II)Z
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    move/from16 v2, p6

    invoke-direct {p0, v2}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_13

    return v3

    :cond_13
    const/4 v11, 0x1

    if-nez p1, :cond_24

    if-nez p2, :cond_24

    if-nez p3, :cond_24

    if-eqz p4, :cond_1d

    goto :goto_24

    :cond_1d
    if-eqz v1, :cond_54

    aput v3, v1, v3

    aput v3, v1, v11

    goto :goto_54

    :cond_24
    :goto_24
    if-eqz v1, :cond_32

    iget-object v5, v0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v1, v3

    aget v6, v1, v11

    move v12, v5

    move v13, v6

    goto :goto_34

    :cond_32
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_34
    iget-object v5, v0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-eqz v1, :cond_53

    iget-object v2, v0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v3

    sub-int/2addr v2, v12

    aput v2, v1, v3

    aget v2, v1, v11

    sub-int/2addr v2, v13

    aput v2, v1, v11

    :cond_53
    return v11

    :cond_54
    :goto_54
    return v3
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

    move-result p1

    return p1
.end method

.method public j6(II[I[II)Z
    .registers 16

    invoke-virtual {p0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    invoke-direct {p0, p5}, Landroid/support/v4/view/j;->Hw(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_1b

    if-eqz p2, :cond_14

    goto :goto_1b

    :cond_14
    if-eqz p4, :cond_5f

    aput v1, p4, v1

    aput v1, p4, v0

    goto :goto_5f

    :cond_1b
    :goto_1b
    if-eqz p4, :cond_29

    iget-object v3, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v1

    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_2b

    :cond_29
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    if-nez p3, :cond_38

    iget-object p3, p0, Landroid/support/v4/view/j;->v5:[I

    if-nez p3, :cond_36

    const/4 p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/support/v4/view/j;->v5:[I

    :cond_36
    iget-object p3, p0, Landroid/support/v4/view/j;->v5:[I

    :cond_38
    aput v1, p3, v1

    aput v1, p3, v0

    iget-object v3, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/A;->j6(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_56

    iget-object p1, p0, Landroid/support/v4/view/j;->FH:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    :cond_56
    aget p1, p3, v1

    if-nez p1, :cond_5e

    aget p1, p3, v0

    if-eqz p1, :cond_5f

    :cond_5e
    const/4 v1, 0x1

    :cond_5f
    :goto_5f
    return v1
.end method
