.class public Labcd/EO;
.super Labcd/xO;


# instance fields
.field private EQ:I

.field private Hw:I

.field private J0:I

.field private VH:I

.field private Zo:I

.field private gn:I

.field private tp:I

.field private u7:I

.field private v5:I

.field private we:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/xO;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/EO;->we:[I

    invoke-virtual {p0}, Labcd/EO;->reset()V

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

.method private DW(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->DW(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5a827999

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

    return p1
.end method

.method private FH(III)I
    .registers 4

    xor-int/lit8 p2, p2, -0x1

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private FH(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->FH(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6ed9eba1

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

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

.method private Hw(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->Hw(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x70e44324  # 5.6515E29f

    sub-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

    return p1
.end method

.method private VH(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->FH(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5c4dd124

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

    return p1
.end method

.method private Zo(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->DW(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6d703ef3

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

    return p1
.end method

.method private gn(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->Hw(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x50a28be6

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

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

.method private j6(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->j6(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

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

.method private v5(IIIIII)I
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Labcd/EO;->j6(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-direct {p0, p1, p6}, Labcd/EO;->j6(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method protected DW([BI)V
    .registers 9

    iget-object v0, p0, Labcd/EO;->we:[I

    iget v1, p0, Labcd/EO;->J0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/EO;->J0:I

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

    invoke-virtual {p0}, Labcd/EO;->Hw()V

    :cond_2f
    return-void
.end method

.method protected Hw()V
    .registers 33

    move-object/from16 v7, p0

    iget v1, v7, Labcd/EO;->Hw:I

    iget v8, v7, Labcd/EO;->v5:I

    iget v9, v7, Labcd/EO;->Zo:I

    iget v10, v7, Labcd/EO;->VH:I

    iget v11, v7, Labcd/EO;->gn:I

    iget v12, v7, Labcd/EO;->u7:I

    iget v13, v7, Labcd/EO;->tp:I

    iget v14, v7, Labcd/EO;->EQ:I

    iget-object v0, v7, Labcd/EO;->we:[I

    const/4 v15, 0x0

    aget v5, v0, v15

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v17, 0x1

    aget v5, v0, v17

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v18, 0x2

    aget v5, v0, v18

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v19, 0x3

    aget v5, v0, v19

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v20, 0x4

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v21, 0x5

    aget v5, v0, v21

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v22, 0x6

    aget v5, v0, v22

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v23, 0x7

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v24, 0x8

    aget v5, v0, v24

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v25, 0x9

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v26, 0xa

    aget v5, v0, v26

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v27, 0xb

    aget v5, v0, v27

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v28, 0xc

    aget v5, v0, v28

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v29, 0xd

    aget v5, v0, v29

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v30, 0xe

    aget v5, v0, v30

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    const/16 v31, 0xf

    aget v5, v0, v31

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->j6(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->gn(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->DW(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->VH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->FH(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Zo(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v10

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v11

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v10

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v13

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Labcd/EO;->Hw(IIIIII)I

    move-result v12

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v22

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v20

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v17

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v19

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v27

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v31

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v15

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v21

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v28

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v18

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v29

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v8

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v25

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move v3, v9

    move v4, v14

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v16

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v23

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v14

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v9

    iget-object v0, v7, Labcd/EO;->we:[I

    aget v5, v0, v30

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Labcd/EO;->v5(IIIIII)I

    move-result v0

    iget v1, v7, Labcd/EO;->Hw:I

    add-int/2addr v1, v11

    iput v1, v7, Labcd/EO;->Hw:I

    iget v1, v7, Labcd/EO;->v5:I

    add-int/2addr v1, v12

    iput v1, v7, Labcd/EO;->v5:I

    iget v1, v7, Labcd/EO;->Zo:I

    add-int/2addr v1, v13

    iput v1, v7, Labcd/EO;->Zo:I

    iget v1, v7, Labcd/EO;->VH:I

    add-int/2addr v1, v14

    iput v1, v7, Labcd/EO;->VH:I

    iget v1, v7, Labcd/EO;->gn:I

    add-int v1, v1, v16

    iput v1, v7, Labcd/EO;->gn:I

    iget v1, v7, Labcd/EO;->u7:I

    add-int/2addr v1, v0

    iput v1, v7, Labcd/EO;->u7:I

    iget v0, v7, Labcd/EO;->tp:I

    add-int/2addr v0, v9

    iput v0, v7, Labcd/EO;->tp:I

    iget v0, v7, Labcd/EO;->EQ:I

    add-int/2addr v0, v10

    iput v0, v7, Labcd/EO;->EQ:I

    iput v15, v7, Labcd/EO;->J0:I

    const/4 v0, 0x0

    :goto_864
    iget-object v1, v7, Labcd/EO;->we:[I

    array-length v2, v1

    if-ne v0, v2, :cond_86a

    return-void

    :cond_86a
    aput v15, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_864
.end method

.method public j6([BI)I
    .registers 5

    invoke-virtual {p0}, Labcd/xO;->FH()V

    iget v0, p0, Labcd/EO;->Hw:I

    invoke-direct {p0, v0, p1, p2}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->v5:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->Zo:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->VH:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->gn:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->u7:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->tp:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Labcd/EO;->j6(I[BI)V

    iget v0, p0, Labcd/EO;->EQ:I

    add-int/lit8 p2, p2, 0x1c

    invoke-direct {p0, v0, p1, p2}, Labcd/EO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/EO;->reset()V

    const/16 p1, 0x20

    return p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "RIPEMD256"

    return-object v0
.end method

.method protected j6(J)V
    .registers 7

    iget v0, p0, Labcd/EO;->J0:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Labcd/EO;->Hw()V

    :cond_9
    iget-object v0, p0, Labcd/EO;->we:[I

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

    iput v0, p0, Labcd/EO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/EO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/EO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/EO;->VH:I

    const v0, 0x76543210

    iput v0, p0, Labcd/EO;->gn:I

    const v0, -0x1234568

    iput v0, p0, Labcd/EO;->u7:I

    const v0, -0x76543211

    iput v0, p0, Labcd/EO;->tp:I

    const v0, 0x1234567

    iput v0, p0, Labcd/EO;->EQ:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/EO;->J0:I

    const/4 v1, 0x0

    :goto_2f
    iget-object v2, p0, Labcd/EO;->we:[I

    array-length v3, v2

    if-ne v1, v3, :cond_35

    return-void

    :cond_35
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f
.end method
