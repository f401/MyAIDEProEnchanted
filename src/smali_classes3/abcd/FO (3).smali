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

    invoke-direct {p0, p1}, Labcd/xO;-><init>(Labcd/xO;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/FO;->u7:[I

    iget v1, p1, Labcd/FO;->Hw:I

    iput v1, p0, Labcd/FO;->Hw:I

    iget v1, p1, Labcd/FO;->v5:I

    iput v1, p0, Labcd/FO;->v5:I

    iget v1, p1, Labcd/FO;->Zo:I

    iput v1, p0, Labcd/FO;->Zo:I

    iget v1, p1, Labcd/FO;->VH:I

    iput v1, p0, Labcd/FO;->VH:I

    iget v1, p1, Labcd/FO;->gn:I

    iput v1, p0, Labcd/FO;->gn:I

    iget-object v1, p1, Labcd/FO;->u7:[I

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Labcd/FO;->tp:I

    iput p1, p0, Labcd/FO;->tp:I

    return-void
.end method

.method private DW(III)I
    .registers 5

    and-int v0, p1, p3

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private FH(III)I
    .registers 4

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private j6(III)I
    .registers 5

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p3, v0

    and-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method protected DW([BI)V
    .registers 8

    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    iget-object p2, p0, Labcd/FO;->u7:[I

    iget v3, p0, Labcd/FO;->tp:I

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x10

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    aput p1, p2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/FO;->tp:I

    if-ne v3, v4, :cond_2d

    invoke-virtual {p0}, Labcd/FO;->Hw()V

    :cond_2d
    return-void
.end method

.method protected Hw()V
    .registers 18

    move-object/from16 v0, p0

    const/16 v1, 0x10

    const/16 v2, 0x10

    :goto_6
    const/16 v3, 0x50

    if-lt v2, v3, :cond_24c

    iget v2, v0, Labcd/FO;->Hw:I

    iget v3, v0, Labcd/FO;->v5:I

    iget v4, v0, Labcd/FO;->Zo:I

    iget v5, v0, Labcd/FO;->VH:I

    iget v6, v0, Labcd/FO;->gn:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_17
    const/4 v10, 0x4

    if-lt v8, v10, :cond_1cd

    const/4 v8, 0x0

    :goto_1b
    if-lt v8, v10, :cond_14b

    const/4 v8, 0x0

    :goto_1e
    if-lt v8, v10, :cond_c9

    const/4 v8, 0x0

    :goto_21
    const/4 v10, 0x3

    if-le v8, v10, :cond_4a

    iget v8, v0, Labcd/FO;->Hw:I

    add-int/2addr v8, v2

    iput v8, v0, Labcd/FO;->Hw:I

    iget v2, v0, Labcd/FO;->v5:I

    add-int/2addr v2, v3

    iput v2, v0, Labcd/FO;->v5:I

    iget v2, v0, Labcd/FO;->Zo:I

    add-int/2addr v2, v4

    iput v2, v0, Labcd/FO;->Zo:I

    iget v2, v0, Labcd/FO;->VH:I

    add-int/2addr v2, v5

    iput v2, v0, Labcd/FO;->VH:I

    iget v2, v0, Labcd/FO;->gn:I

    add-int/2addr v2, v6

    iput v2, v0, Labcd/FO;->gn:I

    iput v7, v0, Labcd/FO;->tp:I

    const/4 v2, 0x0

    :goto_40
    if-lt v2, v1, :cond_43

    return-void

    :cond_43
    iget-object v3, v0, Labcd/FO;->u7:[I

    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_4a
    invoke-direct {v0, v3, v4, v5}, Labcd/FO;->FH(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v12, v9, 0x1

    shl-int/lit8 v13, v2, 0x5

    ushr-int/lit8 v14, v2, 0x1b

    or-int/2addr v13, v14

    add-int/2addr v13, v10

    aget v9, v11, v9

    add-int/2addr v13, v9

    const v9, 0x359d3e2a

    sub-int/2addr v13, v9

    add-int/2addr v6, v13

    ushr-int/lit8 v10, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v10

    invoke-direct {v0, v2, v3, v4}, Labcd/FO;->FH(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v6, 0x5

    ushr-int/lit8 v15, v6, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v10

    aget v10, v11, v12

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    add-int/2addr v5, v14

    ushr-int/lit8 v10, v2, 0x2

    shl-int/lit8 v2, v2, 0x1e

    or-int/2addr v2, v10

    invoke-direct {v0, v6, v2, v3}, Labcd/FO;->FH(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v12, v13, 0x1

    shl-int/lit8 v14, v5, 0x5

    ushr-int/lit8 v15, v5, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v10

    aget v10, v11, v13

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    add-int/2addr v4, v14

    ushr-int/lit8 v10, v6, 0x2

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v10

    invoke-direct {v0, v5, v6, v2}, Labcd/FO;->FH(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v4, 0x5

    ushr-int/lit8 v15, v4, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v10

    aget v10, v11, v12

    add-int/2addr v14, v10

    sub-int/2addr v14, v9

    add-int/2addr v3, v14

    ushr-int/lit8 v10, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {v0, v4, v5, v6}, Labcd/FO;->FH(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v0, Labcd/FO;->u7:[I

    aget v11, v11, v13

    add-int/2addr v10, v11

    sub-int/2addr v10, v9

    add-int/2addr v2, v10

    ushr-int/lit8 v9, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v13, 0x1

    goto/16 :goto_21

    :cond_c9
    invoke-direct {v0, v3, v4, v5}, Labcd/FO;->DW(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v9, 0x1

    shl-int/lit8 v14, v2, 0x5

    ushr-int/lit8 v15, v2, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v11

    aget v9, v12, v9

    add-int/2addr v14, v9

    const v9, 0x70e44324  # 5.6515E29f

    sub-int/2addr v14, v9

    add-int/2addr v6, v14

    ushr-int/lit8 v11, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v11

    invoke-direct {v0, v2, v3, v4}, Labcd/FO;->DW(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v14, v13, 0x1

    shl-int/lit8 v15, v6, 0x5

    ushr-int/lit8 v16, v6, 0x1b

    or-int v15, v15, v16

    add-int/2addr v15, v11

    aget v11, v12, v13

    add-int/2addr v15, v11

    sub-int/2addr v15, v9

    add-int/2addr v5, v15

    ushr-int/lit8 v11, v2, 0x2

    shl-int/lit8 v2, v2, 0x1e

    or-int/2addr v2, v11

    invoke-direct {v0, v6, v2, v3}, Labcd/FO;->DW(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v14, 0x1

    shl-int/lit8 v15, v5, 0x5

    ushr-int/lit8 v16, v5, 0x1b

    or-int v15, v15, v16

    add-int/2addr v15, v11

    aget v11, v12, v14

    add-int/2addr v15, v11

    sub-int/2addr v15, v9

    add-int/2addr v4, v15

    ushr-int/lit8 v11, v6, 0x2

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v11

    invoke-direct {v0, v5, v6, v2}, Labcd/FO;->DW(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v14, v13, 0x1

    shl-int/lit8 v15, v4, 0x5

    ushr-int/lit8 v16, v4, 0x1b

    or-int v15, v15, v16

    add-int/2addr v15, v11

    aget v11, v12, v13

    add-int/2addr v15, v11

    sub-int/2addr v15, v9

    add-int/2addr v3, v15

    ushr-int/lit8 v11, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v11

    shl-int/lit8 v11, v3, 0x5

    ushr-int/lit8 v12, v3, 0x1b

    or-int/2addr v11, v12

    invoke-direct {v0, v4, v5, v6}, Labcd/FO;->DW(III)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Labcd/FO;->u7:[I

    aget v12, v12, v14

    add-int/2addr v11, v12

    sub-int/2addr v11, v9

    add-int/2addr v2, v11

    ushr-int/lit8 v9, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v14, 0x1

    goto/16 :goto_1e

    :cond_14b
    invoke-direct {v0, v3, v4, v5}, Labcd/FO;->FH(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v9, 0x1

    shl-int/lit8 v14, v2, 0x5

    ushr-int/lit8 v15, v2, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v11

    aget v9, v12, v9

    add-int/2addr v14, v9

    const v9, 0x6ed9eba1

    add-int/2addr v14, v9

    add-int/2addr v6, v14

    ushr-int/lit8 v11, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v11

    invoke-direct {v0, v2, v3, v4}, Labcd/FO;->FH(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v14, v13, 0x1

    shl-int/lit8 v15, v6, 0x5

    ushr-int/lit8 v16, v6, 0x1b

    or-int v15, v15, v16

    add-int/2addr v15, v11

    aget v11, v12, v13

    add-int/2addr v15, v11

    add-int/2addr v15, v9

    add-int/2addr v5, v15

    ushr-int/lit8 v11, v2, 0x2

    shl-int/lit8 v2, v2, 0x1e

    or-int/2addr v2, v11

    invoke-direct {v0, v6, v2, v3}, Labcd/FO;->FH(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v14, 0x1

    shl-int/lit8 v15, v5, 0x5

    ushr-int/lit8 v16, v5, 0x1b

    or-int v15, v15, v16

    add-int/2addr v15, v11

    aget v11, v12, v14

    add-int/2addr v15, v11

    add-int/2addr v15, v9

    add-int/2addr v4, v15

    ushr-int/lit8 v11, v6, 0x2

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v11

    invoke-direct {v0, v5, v6, v2}, Labcd/FO;->FH(III)I

    move-result v11

    iget-object v12, v0, Labcd/FO;->u7:[I

    add-int/lit8 v14, v13, 0x1

    shl-int/lit8 v15, v4, 0x5

    ushr-int/lit8 v16, v4, 0x1b

    or-int v15, v15, v16

    add-int/2addr v15, v11

    aget v11, v12, v13

    add-int/2addr v15, v11

    add-int/2addr v15, v9

    add-int/2addr v3, v15

    ushr-int/lit8 v11, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v11

    shl-int/lit8 v11, v3, 0x5

    ushr-int/lit8 v12, v3, 0x1b

    or-int/2addr v11, v12

    invoke-direct {v0, v4, v5, v6}, Labcd/FO;->FH(III)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Labcd/FO;->u7:[I

    aget v12, v12, v14

    add-int/2addr v11, v12

    add-int/2addr v11, v9

    add-int/2addr v2, v11

    ushr-int/lit8 v9, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v14, 0x1

    goto/16 :goto_1b

    :cond_1cd
    invoke-direct {v0, v3, v4, v5}, Labcd/FO;->j6(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v12, v9, 0x1

    shl-int/lit8 v13, v2, 0x5

    ushr-int/lit8 v14, v2, 0x1b

    or-int/2addr v13, v14

    add-int/2addr v13, v10

    aget v9, v11, v9

    add-int/2addr v13, v9

    const v9, 0x5a827999

    add-int/2addr v13, v9

    add-int/2addr v6, v13

    ushr-int/lit8 v10, v3, 0x2

    shl-int/lit8 v3, v3, 0x1e

    or-int/2addr v3, v10

    invoke-direct {v0, v2, v3, v4}, Labcd/FO;->j6(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v6, 0x5

    ushr-int/lit8 v15, v6, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v10

    aget v10, v11, v12

    add-int/2addr v14, v10

    add-int/2addr v14, v9

    add-int/2addr v5, v14

    ushr-int/lit8 v10, v2, 0x2

    shl-int/lit8 v2, v2, 0x1e

    or-int/2addr v2, v10

    invoke-direct {v0, v6, v2, v3}, Labcd/FO;->j6(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v12, v13, 0x1

    shl-int/lit8 v14, v5, 0x5

    ushr-int/lit8 v15, v5, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v10

    aget v10, v11, v13

    add-int/2addr v14, v10

    add-int/2addr v14, v9

    add-int/2addr v4, v14

    ushr-int/lit8 v10, v6, 0x2

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v10

    invoke-direct {v0, v5, v6, v2}, Labcd/FO;->j6(III)I

    move-result v10

    iget-object v11, v0, Labcd/FO;->u7:[I

    add-int/lit8 v13, v12, 0x1

    shl-int/lit8 v14, v4, 0x5

    ushr-int/lit8 v15, v4, 0x1b

    or-int/2addr v14, v15

    add-int/2addr v14, v10

    aget v10, v11, v12

    add-int/2addr v14, v10

    add-int/2addr v14, v9

    add-int/2addr v3, v14

    ushr-int/lit8 v10, v5, 0x2

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {v0, v4, v5, v6}, Labcd/FO;->j6(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v0, Labcd/FO;->u7:[I

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    add-int/2addr v2, v10

    ushr-int/lit8 v9, v4, 0x2

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v13, 0x1

    goto/16 :goto_17

    :cond_24c
    iget-object v3, v0, Labcd/FO;->u7:[I

    add-int/lit8 v4, v2, -0x3

    aget v4, v3, v4

    add-int/lit8 v5, v2, -0x8

    aget v5, v3, v5

    xor-int/2addr v4, v5

    add-int/lit8 v5, v2, -0xe

    aget v5, v3, v5

    xor-int/2addr v4, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v3, v5

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x1f

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6
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

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Labcd/ZO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/FO;->reset()V

    const/16 p1, 0x14

    return p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-1"

    return-object v0
.end method

.method protected j6(J)V
    .registers 7

    iget v0, p0, Labcd/FO;->tp:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Labcd/FO;->Hw()V

    :cond_9
    iget-object v0, p0, Labcd/FO;->u7:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aput v3, v0, v1

    const-wide/16 v1, -0x1

    and-long/2addr p1, v1

    long-to-int p2, p1

    const/16 p1, 0xf

    aput p2, v0, p1

    return-void
.end method

.method public reset()V
    .registers 5

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

    const/4 v0, 0x0

    iput v0, p0, Labcd/FO;->tp:I

    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Labcd/FO;->u7:[I

    array-length v3, v2

    if-ne v1, v3, :cond_26

    return-void

    :cond_26
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method
