.class public Labcd/DO;
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

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/DO;->u7:[I

    invoke-virtual {p0}, Labcd/DO;->reset()V

    return-void
.end method

.method private DW(III)I
    .registers 5

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p3, v0

    and-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private FH(III)I
    .registers 4

    xor-int/lit8 p2, p2, -0x1

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private Hw(III)I
    .registers 4

    and-int/2addr p1, p3

    xor-int/lit8 p3, p3, -0x1

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private j6(II)I
    .registers 4

    rsub-int/lit8 v0, p2, 0x20

    ushr-int v0, p1, v0

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private j6(III)I
    .registers 4

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private j6(I[BI)V
    .registers 6

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method

.method private v5(III)I
    .registers 4

    xor-int/lit8 p3, p3, -0x1

    or-int/2addr p2, p3

    xor-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method protected DW([BI)V
    .registers 9

    iget-object v0, p0, Labcd/DO;->u7:[I

    iget v1, p0, Labcd/DO;->tp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/DO;->tp:I

    aget-byte v3, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    and-int/lit16 p2, v3, 0xff

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p2, v3

    and-int/lit16 v3, v5, 0xff

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    or-int/2addr p2, v3

    or-int/2addr p1, p2

    aput p1, v0, v1

    if-ne v2, v4, :cond_2f

    invoke-virtual {p0}, Labcd/DO;->Hw()V

    :cond_2f
    return-void
.end method

.method protected Hw()V
    .registers 26

    move-object/from16 v0, p0

    iget v1, v0, Labcd/DO;->Hw:I

    iget v2, v0, Labcd/DO;->v5:I

    iget v3, v0, Labcd/DO;->Zo:I

    iget v4, v0, Labcd/DO;->VH:I

    iget v5, v0, Labcd/DO;->gn:I

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, v0, Labcd/DO;->u7:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v5

    const/16 v9, 0xa

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v6, v2, v10}, Labcd/DO;->j6(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {v0, v11, v12}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v14

    invoke-direct {v0, v11, v6, v14}, Labcd/DO;->j6(III)I

    move-result v15

    add-int/2addr v15, v4

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v16, 0x2

    aget v13, v13, v16

    add-int/2addr v15, v13

    const/16 v13, 0xf

    invoke-direct {v0, v15, v13}, Labcd/DO;->j6(II)I

    move-result v15

    add-int/2addr v15, v10

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v15, v11, v6}, Labcd/DO;->j6(III)I

    move-result v17

    add-int v10, v10, v17

    iget-object v8, v0, Labcd/DO;->u7:[I

    const/16 v18, 0x3

    aget v8, v8, v18

    add-int/2addr v10, v8

    const/16 v8, 0xc

    invoke-direct {v0, v10, v8}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v14

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v15, v11}, Labcd/DO;->j6(III)I

    move-result v18

    add-int v14, v14, v18

    iget-object v8, v0, Labcd/DO;->u7:[I

    const/16 v19, 0x4

    aget v8, v8, v19

    add-int/2addr v14, v8

    const/4 v8, 0x5

    invoke-direct {v0, v14, v8}, Labcd/DO;->j6(II)I

    move-result v14

    add-int/2addr v14, v6

    invoke-direct {v0, v15, v9}, Labcd/DO;->j6(II)I

    move-result v15

    invoke-direct {v0, v14, v10, v15}, Labcd/DO;->j6(III)I

    move-result v19

    add-int v6, v6, v19

    iget-object v13, v0, Labcd/DO;->u7:[I

    aget v13, v13, v8

    add-int/2addr v6, v13

    const/16 v13, 0x8

    invoke-direct {v0, v6, v13}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v6, v14, v10}, Labcd/DO;->j6(III)I

    move-result v20

    add-int v11, v11, v20

    iget-object v8, v0, Labcd/DO;->u7:[I

    const/4 v12, 0x6

    aget v8, v8, v12

    add-int/2addr v11, v8

    const/4 v8, 0x7

    invoke-direct {v0, v11, v8}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v15

    invoke-direct {v0, v14, v9}, Labcd/DO;->j6(II)I

    move-result v14

    invoke-direct {v0, v11, v6, v14}, Labcd/DO;->j6(III)I

    move-result v22

    add-int v15, v15, v22

    iget-object v12, v0, Labcd/DO;->u7:[I

    aget v12, v12, v8

    add-int/2addr v15, v12

    const/16 v12, 0x9

    invoke-direct {v0, v15, v12}, Labcd/DO;->j6(II)I

    move-result v15

    add-int/2addr v15, v10

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v15, v11, v6}, Labcd/DO;->j6(III)I

    move-result v23

    add-int v10, v10, v23

    iget-object v8, v0, Labcd/DO;->u7:[I

    aget v8, v8, v13

    add-int/2addr v10, v8

    invoke-direct {v0, v10, v7}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v14

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v15, v10}, Labcd/DO;->j6(III)I

    move-result v11

    add-int/2addr v14, v11

    iget-object v11, v0, Labcd/DO;->u7:[I

    aget v11, v11, v12

    add-int/2addr v14, v11

    const/16 v11, 0xd

    invoke-direct {v0, v14, v11}, Labcd/DO;->j6(II)I

    move-result v14

    add-int/2addr v14, v6

    invoke-direct {v0, v15, v9}, Labcd/DO;->j6(II)I

    move-result v15

    invoke-direct {v0, v14, v8, v15}, Labcd/DO;->j6(III)I

    move-result v24

    add-int v6, v6, v24

    iget-object v13, v0, Labcd/DO;->u7:[I

    aget v13, v13, v9

    add-int/2addr v6, v13

    const/16 v13, 0xe

    invoke-direct {v0, v6, v13}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v14, v8}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v10, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    aget v13, v13, v7

    add-int/2addr v10, v13

    const/16 v13, 0xf

    invoke-direct {v0, v10, v13}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v15

    invoke-direct {v0, v14, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v10, v6, v13}, Labcd/DO;->j6(III)I

    move-result v14

    add-int/2addr v15, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v18, 0xc

    aget v14, v14, v18

    add-int/2addr v15, v14

    const/4 v14, 0x6

    invoke-direct {v0, v15, v14}, Labcd/DO;->j6(II)I

    move-result v15

    add-int/2addr v15, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v15, v10, v6}, Labcd/DO;->j6(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v11

    add-int/2addr v8, v14

    const/4 v14, 0x7

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v13

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v15, v10}, Labcd/DO;->j6(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v21, 0xe

    aget v14, v14, v21

    add-int/2addr v13, v14

    invoke-direct {v0, v13, v12}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v6

    invoke-direct {v0, v15, v9}, Labcd/DO;->j6(II)I

    move-result v14

    invoke-direct {v0, v13, v8, v14}, Labcd/DO;->j6(III)I

    move-result v15

    add-int/2addr v6, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v6, v15

    const/16 v15, 0x8

    invoke-direct {v0, v6, v15}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v24

    add-int v1, v1, v24

    iget-object v11, v0, Labcd/DO;->u7:[I

    const/16 v20, 0x5

    aget v11, v11, v20

    add-int/2addr v1, v11

    const v11, 0x50a28be6

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v5, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v21, 0xe

    aget v15, v15, v21

    add-int/2addr v5, v15

    add-int/2addr v5, v11

    invoke-direct {v0, v5, v12}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v4, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v23, 0x7

    aget v15, v15, v23

    add-int/2addr v4, v15

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v12}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    add-int/2addr v3, v15

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v7}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v2, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v12

    add-int/2addr v2, v15

    add-int/2addr v2, v11

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v16

    add-int/2addr v1, v15

    add-int/2addr v1, v11

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v19

    add-int v5, v5, v19

    iget-object v12, v0, Labcd/DO;->u7:[I

    aget v12, v12, v7

    add-int/2addr v5, v12

    add-int/2addr v5, v11

    invoke-direct {v0, v5, v15}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->v5(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v12, v12, v15

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    const/4 v12, 0x5

    invoke-direct {v0, v4, v12}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->v5(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v12, v12, v15

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    const/4 v12, 0x7

    invoke-direct {v0, v3, v12}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v2, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v22, 0x6

    aget v15, v15, v22

    add-int/2addr v2, v15

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v12}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xf

    aget v12, v12, v15

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v5, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v12

    add-int/2addr v5, v15

    add-int/2addr v5, v11

    invoke-direct {v0, v5, v7}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->v5(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v12, v12, v15

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    const/16 v12, 0xe

    invoke-direct {v0, v4, v12}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v9

    add-int/2addr v3, v15

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v12}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->v5(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v12, v12, v15

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    const/16 v12, 0xc

    invoke-direct {v0, v2, v12}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v12

    add-int/2addr v1, v15

    add-int/2addr v1, v11

    const/4 v11, 0x6

    invoke-direct {v0, v1, v11}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v6, v13, v8}, Labcd/DO;->DW(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v0, Labcd/DO;->u7:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    invoke-direct {v0, v10, v12}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v14

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v12

    invoke-direct {v0, v10, v6, v12}, Labcd/DO;->DW(III)I

    move-result v13

    add-int/2addr v14, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v13, v13, v15

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    const/4 v13, 0x6

    invoke-direct {v0, v14, v13}, Labcd/DO;->j6(II)I

    move-result v14

    add-int/2addr v14, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v14, v10, v6}, Labcd/DO;->DW(III)I

    move-result v13

    add-int/2addr v8, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v13, v13, v15

    add-int/2addr v8, v13

    add-int/2addr v8, v11

    const/16 v13, 0x8

    invoke-direct {v0, v8, v13}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v12

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v14, v10}, Labcd/DO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v13, v13, v15

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    const/16 v13, 0xd

    invoke-direct {v0, v12, v13}, Labcd/DO;->j6(II)I

    move-result v12

    add-int/2addr v12, v6

    invoke-direct {v0, v14, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v12, v8, v13}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v6, v14

    add-int/2addr v6, v11

    invoke-direct {v0, v6, v7}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v12, v8}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v11

    const/16 v14, 0x9

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v12, v9}, Labcd/DO;->j6(II)I

    move-result v12

    invoke-direct {v0, v10, v6, v12}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v11

    const/4 v14, 0x7

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v11

    const/16 v14, 0xf

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v12

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v12, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v12, v14

    add-int/2addr v12, v11

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, Labcd/DO;->j6(II)I

    move-result v12

    add-int/2addr v12, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v12, v8, v13}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v11

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v12, v8}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v11

    const/16 v14, 0xf

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v12, v9}, Labcd/DO;->j6(II)I

    move-result v12

    invoke-direct {v0, v10, v6, v12}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v11

    const/16 v14, 0x9

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v8, v14

    add-int/2addr v8, v11

    invoke-direct {v0, v8, v7}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v12

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v12, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v12, v14

    add-int/2addr v12, v11

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, Labcd/DO;->j6(II)I

    move-result v12

    add-int/2addr v12, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v12, v8, v13}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v7

    add-int/2addr v6, v14

    add-int/2addr v6, v11

    const/16 v14, 0xd

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v12, v8}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v11

    const/16 v11, 0xc

    invoke-direct {v0, v10, v11}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v12, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v12

    add-int/2addr v5, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x6

    aget v12, v12, v14

    add-int/2addr v5, v12

    const v12, 0x5c4dd124

    add-int/2addr v5, v12

    const/16 v14, 0x9

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v7

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xd

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xf

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v15}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x8

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v7}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x7

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->Hw(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xc

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v15

    add-int/2addr v4, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v14

    add-int/2addr v4, v15

    add-int/2addr v4, v12

    const/4 v14, 0x7

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/4 v14, 0x6

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xf

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v7}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->FH(III)I

    move-result v12

    add-int/2addr v13, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x3

    aget v12, v12, v14

    add-int/2addr v13, v12

    const v12, 0x6ed9eba1

    add-int/2addr v13, v12

    invoke-direct {v0, v13, v7}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xd

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/4 v14, 0x6

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/4 v14, 0x7

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0xe

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0x9

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xd

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/16 v14, 0xf

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0x8

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/16 v14, 0xd

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v15}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v12

    const/4 v14, 0x5

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v7

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x7

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v12

    const/4 v12, 0x5

    invoke-direct {v0, v13, v12}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->FH(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/16 v14, 0xf

    aget v12, v12, v14

    add-int/2addr v4, v12

    const v12, 0x6d703ef3

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/4 v14, 0x7

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xf

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v7}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x8

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v14, 0x6

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->FH(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v14

    add-int/2addr v3, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xe

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v7

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xd

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v14, 0x5

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xe

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xd

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->FH(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x7

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->FH(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v12, 0x5

    invoke-direct {v0, v4, v12}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->Hw(III)I

    move-result v12

    add-int/2addr v8, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x1

    aget v12, v12, v14

    add-int/2addr v8, v12

    const v12, 0x70e44324  # 5.6515E29f

    sub-int/2addr v8, v12

    invoke-direct {v0, v8, v7}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v11, v14

    sub-int/2addr v11, v12

    const/16 v14, 0xc

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v7

    add-int/2addr v6, v14

    sub-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    const/16 v14, 0xf

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    sub-int/2addr v13, v12

    const/16 v14, 0xe

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    const/16 v14, 0xf

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v11, v14

    sub-int/2addr v11, v12

    const/16 v14, 0x9

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    sub-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    const/16 v14, 0x9

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v13, v14

    sub-int/2addr v13, v12

    const/16 v14, 0xe

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v11, v14

    sub-int/2addr v11, v12

    const/4 v14, 0x6

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v6, v14

    sub-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    const/4 v14, 0x6

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->Hw(III)I

    move-result v15

    add-int/2addr v13, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v14

    add-int/2addr v13, v15

    sub-int/2addr v13, v12

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->Hw(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    const/16 v12, 0xc

    invoke-direct {v0, v8, v12}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->DW(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/16 v14, 0x8

    aget v12, v12, v14

    add-int/2addr v3, v12

    const v12, 0x7a6d76e9

    add-int/2addr v3, v12

    const/16 v14, 0xf

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x5

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0x8

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v7}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xe

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->DW(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v7

    add-int/2addr v3, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x6

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xe

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x6

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0x9

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->DW(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Labcd/DO;->u7:[I

    aget v15, v15, v14

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x5

    invoke-direct {v0, v5, v14}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xf

    invoke-direct {v0, v4, v14}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->DW(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v12, 0x8

    invoke-direct {v0, v3, v12}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->v5(III)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x4

    aget v12, v12, v14

    add-int/2addr v11, v12

    const v12, 0x56ac02b2

    sub-int/2addr v11, v12

    const/16 v14, 0x9

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v6, v14

    sub-int/2addr v6, v12

    const/16 v14, 0xf

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    invoke-direct {v0, v10, v15}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v13, v14

    sub-int/2addr v13, v12

    invoke-direct {v0, v13, v7}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    const/4 v14, 0x6

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v11, v14

    sub-int/2addr v11, v12

    const/16 v14, 0x8

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v16

    add-int/2addr v6, v14

    sub-int/2addr v6, v12

    const/16 v14, 0xd

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v9

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v13, v14

    sub-int/2addr v13, v12

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    const/16 v14, 0xc

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v11, v14

    sub-int/2addr v11, v12

    const/16 v14, 0xd

    invoke-direct {v0, v11, v14}, Labcd/DO;->j6(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v13

    invoke-direct {v0, v11, v8, v13}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v6, v14

    sub-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v9}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {v0, v6, v11, v8}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v7

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    invoke-direct {v0, v10, v7}, Labcd/DO;->j6(II)I

    move-result v10

    add-int/2addr v10, v13

    invoke-direct {v0, v11, v9}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v10, v6, v11}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v13, v14

    sub-int/2addr v13, v12

    const/16 v14, 0x8

    invoke-direct {v0, v13, v14}, Labcd/DO;->j6(II)I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v0, v6, v9}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {v0, v13, v10, v6}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v8, v14

    sub-int/2addr v8, v12

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v11

    invoke-direct {v0, v10, v9}, Labcd/DO;->j6(II)I

    move-result v10

    invoke-direct {v0, v8, v13, v10}, Labcd/DO;->v5(III)I

    move-result v14

    add-int/2addr v11, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v11, v14

    sub-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {v0, v11, v12}, Labcd/DO;->j6(II)I

    move-result v11

    invoke-direct {v0, v13, v9}, Labcd/DO;->j6(II)I

    move-result v12

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v2, v13

    const/16 v13, 0x8

    invoke-direct {v0, v2, v13}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v1, v13

    const/4 v13, 0x5

    invoke-direct {v0, v1, v13}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v5, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    aget v13, v13, v9

    add-int/2addr v5, v13

    const/16 v13, 0xc

    invoke-direct {v0, v5, v13}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v4, v13

    const/16 v13, 0x9

    invoke-direct {v0, v4, v13}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v3, v13

    const/16 v13, 0xc

    invoke-direct {v0, v3, v13}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v2, v13

    invoke-direct {v0, v2, v14}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v1, v13

    const/16 v13, 0xe

    invoke-direct {v0, v1, v13}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v5, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v5, v13

    const/4 v13, 0x6

    invoke-direct {v0, v5, v13}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->j6(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v13

    add-int/2addr v4, v14

    const/16 v13, 0x8

    invoke-direct {v0, v4, v13}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    aget v13, v13, v16

    add-int/2addr v3, v13

    const/16 v13, 0xd

    invoke-direct {v0, v3, v13}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->j6(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Labcd/DO;->u7:[I

    aget v14, v14, v13

    add-int/2addr v2, v14

    const/4 v13, 0x6

    invoke-direct {v0, v2, v13}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v1, v13

    const/4 v13, 0x5

    invoke-direct {v0, v1, v13}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v9}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v5, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v5, v13

    const/16 v13, 0xf

    invoke-direct {v0, v5, v13}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v9}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v4, v13

    const/16 v13, 0xd

    invoke-direct {v0, v4, v13}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v9}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v3, v13

    invoke-direct {v0, v3, v7}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v9}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Labcd/DO;->j6(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Labcd/DO;->u7:[I

    aget v13, v13, v7

    add-int/2addr v2, v13

    invoke-direct {v0, v2, v7}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {v0, v4, v9}, Labcd/DO;->j6(II)I

    move-result v4

    iget v7, v0, Labcd/DO;->v5:I

    iget v9, v0, Labcd/DO;->Zo:I

    add-int/2addr v9, v12

    add-int/2addr v9, v5

    iput v9, v0, Labcd/DO;->v5:I

    iget v5, v0, Labcd/DO;->VH:I

    add-int/2addr v5, v10

    add-int/2addr v5, v1

    iput v5, v0, Labcd/DO;->Zo:I

    iget v5, v0, Labcd/DO;->gn:I

    add-int/2addr v5, v6

    add-int/2addr v2, v1

    add-int/2addr v5, v2

    iput v5, v0, Labcd/DO;->VH:I

    iget v1, v0, Labcd/DO;->Hw:I

    add-int/2addr v11, v6

    add-int/2addr v1, v11

    add-int/2addr v1, v3

    iput v1, v0, Labcd/DO;->gn:I

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    iput v4, v0, Labcd/DO;->Hw:I

    const/4 v1, 0x0

    iput v1, v0, Labcd/DO;->tp:I

    const/4 v2, 0x0

    :goto_e3b
    iget-object v3, v0, Labcd/DO;->u7:[I

    array-length v4, v3

    if-ne v2, v4, :cond_e41

    return-void

    :cond_e41
    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e3b
.end method

.method public j6([BI)I
    .registers 5

    invoke-virtual {p0}, Labcd/xO;->FH()V

    iget v0, p0, Labcd/DO;->Hw:I

    invoke-direct {p0, v0, p1, p2}, Labcd/DO;->j6(I[BI)V

    iget v0, p0, Labcd/DO;->v5:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/DO;->j6(I[BI)V

    iget v0, p0, Labcd/DO;->Zo:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Labcd/DO;->j6(I[BI)V

    iget v0, p0, Labcd/DO;->VH:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Labcd/DO;->j6(I[BI)V

    iget v0, p0, Labcd/DO;->gn:I

    add-int/lit8 p2, p2, 0x10

    invoke-direct {p0, v0, p1, p2}, Labcd/DO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/DO;->reset()V

    const/16 p1, 0x14

    return p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "RIPEMD160"

    return-object v0
.end method

.method protected j6(J)V
    .registers 7

    iget v0, p0, Labcd/DO;->tp:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Labcd/DO;->Hw()V

    :cond_9
    iget-object v0, p0, Labcd/DO;->u7:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    const/16 p1, 0xf

    aput p2, v0, p1

    return-void
.end method

.method public reset()V
    .registers 5

    invoke-super {p0}, Labcd/xO;->reset()V

    const v0, 0x67452301

    iput v0, p0, Labcd/DO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/DO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/DO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/DO;->VH:I

    const v0, -0x3c2d1e10

    iput v0, p0, Labcd/DO;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/DO;->tp:I

    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Labcd/DO;->u7:[I

    array-length v3, v2

    if-ne v1, v3, :cond_26

    return-void

    :cond_26
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method
