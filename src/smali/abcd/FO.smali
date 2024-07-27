.class public Labcd/FO;
.super Labcd/xO;


# instance fields
.field private Hw:I

.field private VH:I

.field private Zo:I

.field private gn:I

.field private tp:I

.field private u7:[I

.field private v5:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/xO;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/FO;->u7:[I

    invoke-virtual {p0}, Labcd/FO;->reset()V

    return-void
.end method

.method public constructor <init>(Labcd/FO;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Labcd/xO;-><init>(Labcd/xO;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/FO;->u7:[I

    iget v0, p1, Labcd/FO;->Hw:I

    iput v0, p0, Labcd/FO;->Hw:I

    iget v0, p1, Labcd/FO;->v5:I

    iput v0, p0, Labcd/FO;->v5:I

    iget v0, p1, Labcd/FO;->Zo:I

    iput v0, p0, Labcd/FO;->Zo:I

    iget v0, p1, Labcd/FO;->VH:I

    iput v0, p0, Labcd/FO;->VH:I

    iget v0, p1, Labcd/FO;->gn:I

    iput v0, p0, Labcd/FO;->gn:I

    iget-object v0, p1, Labcd/FO;->u7:[I

    iget-object v1, p0, Labcd/FO;->u7:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Labcd/FO;->tp:I

    iput v0, p0, Labcd/FO;->tp:I

    return-void
.end method

.method private DW(III)I
    .registers 6

    and-int v0, p1, p3

    and-int v1, p1, p2

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private FH(III)I
    .registers 5

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private j6(III)I
    .registers 6

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p3

    and-int v1, p2, p1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method protected DW([BI)V
    .registers 9

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    iget-object v4, p0, Labcd/FO;->u7:[I

    iget v5, p0, Labcd/FO;->tp:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    aput v0, v4, v5

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Labcd/FO;->tp:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/FO;->Hw()V

    :cond_0
    return-void
.end method

.method protected Hw()V
    .registers 13

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x50

    if-lt v0, v1, :cond_5

    iget v5, p0, Labcd/FO;->Hw:I

    iget v3, p0, Labcd/FO;->v5:I

    iget v4, p0, Labcd/FO;->Zo:I

    iget v1, p0, Labcd/FO;->VH:I

    iget v2, p0, Labcd/FO;->gn:I

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x4

    if-lt v6, v7, :cond_4

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    :goto_4
    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    iget v0, p0, Labcd/FO;->Hw:I

    add-int/2addr v0, v5

    iput v0, p0, Labcd/FO;->Hw:I

    iget v0, p0, Labcd/FO;->v5:I

    add-int/2addr v0, v3

    iput v0, p0, Labcd/FO;->v5:I

    iget v0, p0, Labcd/FO;->Zo:I

    add-int/2addr v0, v4

    iput v0, p0, Labcd/FO;->Zo:I

    iget v0, p0, Labcd/FO;->VH:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/FO;->VH:I

    iget v0, p0, Labcd/FO;->gn:I

    add-int/2addr v0, v2

    iput v0, p0, Labcd/FO;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/FO;->tp:I

    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Labcd/FO;->u7:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    invoke-direct {p0, v3, v4, v1}, Labcd/FO;->FH(III)I

    move-result v7

    iget-object v8, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v0, 0x1

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v7, v10

    aget v0, v8, v0

    add-int/2addr v0, v7

    const v7, 0x359d3e2a

    sub-int/2addr v0, v7

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v2

    invoke-direct {p0, v5, v3, v4}, Labcd/FO;->FH(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x359d3e2a

    sub-int/2addr v2, v7

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v2

    invoke-direct {p0, v0, v5, v3}, Labcd/FO;->FH(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x359d3e2a

    sub-int/2addr v2, v7

    add-int/2addr v4, v2

    ushr-int/lit8 v2, v0, 0x2

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v5}, Labcd/FO;->FH(III)I

    move-result v0

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v0, v10

    aget v7, v7, v9

    add-int/2addr v0, v7

    const v7, 0x359d3e2a

    sub-int/2addr v0, v7

    add-int/2addr v3, v0

    ushr-int/lit8 v0, v1, 0x2

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v0, v7

    invoke-direct {p0, v4, v1, v2}, Labcd/FO;->FH(III)I

    move-result v7

    add-int/2addr v0, v7

    iget-object v7, p0, Labcd/FO;->u7:[I

    aget v7, v7, v8

    add-int/2addr v0, v7

    const v7, 0x359d3e2a

    sub-int/2addr v0, v7

    add-int/2addr v5, v0

    ushr-int/lit8 v0, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0, v3, v4, v1}, Labcd/FO;->DW(III)I

    move-result v7

    iget-object v8, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v0, 0x1

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v7, v10

    aget v0, v8, v0

    add-int/2addr v0, v7

    const v7, 0x70e44324    # 5.6515E29f

    sub-int/2addr v0, v7

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v2

    invoke-direct {p0, v5, v3, v4}, Labcd/FO;->DW(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x70e44324    # 5.6515E29f

    sub-int/2addr v2, v7

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v2

    invoke-direct {p0, v0, v5, v3}, Labcd/FO;->DW(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x70e44324    # 5.6515E29f

    sub-int/2addr v2, v7

    add-int/2addr v4, v2

    ushr-int/lit8 v2, v0, 0x2

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v5}, Labcd/FO;->DW(III)I

    move-result v0

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v0, v10

    aget v7, v7, v9

    add-int/2addr v0, v7

    const v7, 0x70e44324    # 5.6515E29f

    sub-int/2addr v0, v7

    add-int/2addr v3, v0

    ushr-int/lit8 v0, v1, 0x2

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v0, v7

    invoke-direct {p0, v4, v1, v2}, Labcd/FO;->DW(III)I

    move-result v7

    add-int/2addr v0, v7

    iget-object v7, p0, Labcd/FO;->u7:[I

    aget v7, v7, v8

    add-int/2addr v0, v7

    const v7, 0x70e44324    # 5.6515E29f

    sub-int/2addr v0, v7

    add-int/2addr v5, v0

    ushr-int/lit8 v0, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, v3, v4, v1}, Labcd/FO;->FH(III)I

    move-result v7

    iget-object v8, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v0, 0x1

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v7, v10

    aget v0, v8, v0

    add-int/2addr v0, v7

    const v7, 0x6ed9eba1

    add-int/2addr v0, v7

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v2

    invoke-direct {p0, v5, v3, v4}, Labcd/FO;->FH(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v2

    invoke-direct {p0, v0, v5, v3}, Labcd/FO;->FH(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    ushr-int/lit8 v2, v0, 0x2

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v5}, Labcd/FO;->FH(III)I

    move-result v0

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v0, v10

    aget v7, v7, v9

    add-int/2addr v0, v7

    const v7, 0x6ed9eba1

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    ushr-int/lit8 v0, v1, 0x2

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v0, v7

    invoke-direct {p0, v4, v1, v2}, Labcd/FO;->FH(III)I

    move-result v7

    add-int/2addr v0, v7

    iget-object v7, p0, Labcd/FO;->u7:[I

    aget v7, v7, v8

    add-int/2addr v0, v7

    const v7, 0x6ed9eba1

    add-int/2addr v0, v7

    add-int/2addr v5, v0

    ushr-int/lit8 v0, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, v3, v4, v1}, Labcd/FO;->j6(III)I

    move-result v7

    iget-object v8, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v0, 0x1

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v7, v10

    aget v0, v8, v0

    add-int/2addr v0, v7

    const v7, 0x5a827999

    add-int/2addr v0, v7

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v2

    invoke-direct {p0, v5, v3, v4}, Labcd/FO;->j6(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v2

    invoke-direct {p0, v0, v5, v3}, Labcd/FO;->j6(III)I

    move-result v2

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v2, v10

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    ushr-int/lit8 v2, v0, 0x2

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v5}, Labcd/FO;->j6(III)I

    move-result v0

    iget-object v7, p0, Labcd/FO;->u7:[I

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    add-int/2addr v0, v10

    aget v7, v7, v9

    add-int/2addr v0, v7

    const v7, 0x5a827999

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    ushr-int/lit8 v0, v1, 0x2

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v0, v7

    invoke-direct {p0, v4, v1, v2}, Labcd/FO;->j6(III)I

    move-result v7

    add-int/2addr v0, v7

    iget-object v7, p0, Labcd/FO;->u7:[I

    aget v7, v7, v8

    add-int/2addr v0, v7

    const v7, 0x5a827999

    add-int/2addr v0, v7

    add-int/2addr v5, v0

    ushr-int/lit8 v0, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Labcd/FO;->u7:[I

    add-int/lit8 v2, v0, -0x3

    aget v2, v1, v2

    add-int/lit8 v3, v0, -0x8

    aget v3, v1, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v0, -0xe

    aget v3, v1, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v0, -0x10

    aget v3, v1, v3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public j6([BI)I
    .registers 5

    invoke-virtual {p0}, Labcd/xO;->FH()V

    iget v0, p0, Labcd/FO;->Hw:I

    invoke-static {v0, p1, p2}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/FO;->v5:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/FO;->Zo:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/FO;->VH:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/FO;->gn:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/FO;->reset()V

    const/16 v0, 0x14

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-1"

    return-object v0
.end method

.method protected j6(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Labcd/FO;->tp:I

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Labcd/FO;->Hw()V

    :cond_0
    iget-object v0, p0, Labcd/FO;->u7:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/xO;->reset()V

    const v0, 0x67452301

    iput v0, p0, Labcd/FO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/FO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/FO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/FO;->VH:I

    const v0, -0x3c2d1e10

    iput v0, p0, Labcd/FO;->gn:I

    iput v1, p0, Labcd/FO;->tp:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/FO;->u7:[I

    array-length v3, v2

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
