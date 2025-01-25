.class public Labcd/BO;
.super Labcd/xO;


# instance fields
.field private Hw:I

.field private VH:I

.field private Zo:I

.field private gn:[I

.field private u7:I

.field private v5:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/xO;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/BO;->gn:[I

    invoke-virtual {p0}, Labcd/BO;->reset()V

    return-void
.end method

.method private DW(III)I
    .registers 4

    and-int/2addr p1, p3

    xor-int/lit8 p3, p3, -0x1

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

.method private Hw(III)I
    .registers 4

    xor-int/lit8 p3, p3, -0x1

    or-int/2addr p1, p3

    xor-int/2addr p1, p2

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
    .registers 5

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p3, v0

    and-int/2addr p1, p2

    or-int/2addr p1, p3

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


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected DW([BI)V
    .registers 9

    iget-object v0, p0, Labcd/BO;->gn:[I

    iget v1, p0, Labcd/BO;->u7:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/BO;->u7:I

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

    invoke-virtual {p0}, Labcd/BO;->Hw()V

    :cond_2f
    return-void
.end method

.method protected Hw()V
    .registers 25

    move-object/from16 v0, p0

    iget v1, v0, Labcd/BO;->Hw:I

    iget v2, v0, Labcd/BO;->v5:I

    iget v3, v0, Labcd/BO;->Zo:I

    iget v4, v0, Labcd/BO;->VH:I

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->j6(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Labcd/BO;->gn:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const v5, 0x28955b88

    sub-int/2addr v1, v5

    const/4 v5, 0x7

    invoke-direct {v0, v1, v5}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const v7, 0x173848aa

    sub-int/2addr v4, v7

    const/16 v7, 0xc

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->j6(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const v9, 0x242070db

    add-int/2addr v3, v9

    const/16 v9, 0x11

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->j6(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v2, v11

    const v11, 0x3e423112

    sub-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v1, v13

    const v13, 0xa83f051

    sub-int/2addr v1, v13

    invoke-direct {v0, v1, v5}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/4 v15, 0x5

    aget v13, v13, v15

    add-int/2addr v4, v13

    const v13, 0x4787c62a

    add-int/2addr v4, v13

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/4 v10, 0x6

    aget v13, v13, v10

    add-int/2addr v3, v13

    const v13, 0x57cfb9ed

    sub-int/2addr v3, v13

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    aget v13, v13, v5

    add-int/2addr v2, v13

    const v13, 0x2b96aff

    sub-int/2addr v2, v13

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/16 v17, 0x8

    aget v13, v13, v17

    add-int/2addr v1, v13

    const v13, 0x698098d8

    add-int/2addr v1, v13

    invoke-direct {v0, v1, v5}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/16 v12, 0x9

    aget v13, v13, v12

    add-int/2addr v4, v13

    const v13, 0x74bb0851

    sub-int/2addr v4, v13

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v3, v13

    const v13, 0xa44f

    sub-int/2addr v3, v13

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v2, v13

    const v13, 0x76a32842

    sub-int/2addr v2, v13

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    aget v13, v13, v7

    add-int/2addr v1, v13

    const v13, 0x6b901122

    add-int/2addr v1, v13

    invoke-direct {v0, v1, v5}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/16 v21, 0xd

    aget v13, v13, v21

    add-int/2addr v4, v13

    const v13, 0x2678e6d

    sub-int/2addr v4, v13

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->j6(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Labcd/BO;->gn:[I

    const/16 v7, 0xe

    aget v13, v13, v7

    add-int/2addr v3, v13

    const v13, 0x5986bc72

    sub-int/2addr v3, v13

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->j6(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    const/16 v13, 0xf

    aget v9, v9, v13

    add-int/2addr v2, v9

    const v9, 0x49b40821

    add-int/2addr v2, v9

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->DW(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v8

    add-int/2addr v1, v9

    const v9, 0x9e1da9e

    sub-int/2addr v1, v9

    invoke-direct {v0, v1, v15}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v10

    add-int/2addr v4, v9

    const v9, 0x3fbf4cc0

    sub-int/2addr v4, v9

    invoke-direct {v0, v4, v12}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->DW(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v14

    add-int/2addr v3, v9

    const v9, 0x265e5a51

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->DW(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v6

    add-int/2addr v2, v9

    const v9, 0x16493856

    sub-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v15

    add-int/2addr v1, v11

    const v11, 0x29d0efa3

    sub-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    const/16 v20, 0xa

    aget v11, v11, v20

    add-int/2addr v4, v11

    const v11, 0x2441453

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v12}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v13

    add-int/2addr v3, v11

    const v11, 0x275e197f

    sub-int/2addr v3, v11

    invoke-direct {v0, v3, v7}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    const/16 v19, 0x4

    aget v11, v11, v19

    add-int/2addr v2, v11

    const v11, 0x182c0438

    sub-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v12

    add-int/2addr v1, v11

    const v11, 0x21e1cde6

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v7

    add-int/2addr v4, v11

    const v11, 0x3cc8f82a

    sub-int/2addr v4, v11

    invoke-direct {v0, v4, v12}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    const/16 v18, 0x3

    aget v11, v11, v18

    add-int/2addr v3, v11

    const v11, 0xb2af279

    sub-int/2addr v3, v11

    invoke-direct {v0, v3, v7}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v17

    add-int/2addr v2, v11

    const v11, 0x455a14ed

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v21

    add-int/2addr v1, v11

    const v11, 0x561c16fb

    sub-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    const/16 v16, 0x2

    aget v11, v11, v16

    add-int/2addr v4, v11

    const v11, 0x3105c08

    sub-int/2addr v4, v11

    invoke-direct {v0, v4, v12}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v5

    add-int/2addr v3, v11

    const v11, 0x676f02d9

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v7}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->DW(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    const/16 v22, 0xc

    aget v11, v11, v22

    add-int/2addr v2, v11

    const v11, 0x72d5b376

    sub-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->FH(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v15

    add-int/2addr v1, v9

    const v9, 0x5c6be

    sub-int/2addr v1, v9

    const/4 v9, 0x4

    invoke-direct {v0, v1, v9}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v17

    add-int/2addr v4, v9

    const v9, 0x788e097f

    sub-int/2addr v4, v9

    invoke-direct {v0, v4, v14}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->FH(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Labcd/BO;->gn:[I

    aget v9, v9, v14

    add-int/2addr v3, v9

    const v9, 0x6d9d6122

    add-int/2addr v3, v9

    const/16 v9, 0x10

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->FH(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Labcd/BO;->gn:[I

    aget v11, v11, v7

    add-int/2addr v2, v11

    const v11, 0x21ac7f4

    sub-int/2addr v2, v11

    const/16 v11, 0x17

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->FH(III)I

    move-result v23

    add-int v1, v1, v23

    iget-object v15, v0, Labcd/BO;->gn:[I

    aget v15, v15, v8

    add-int/2addr v1, v15

    const v15, 0x5b4115bc

    sub-int/2addr v1, v15

    const/4 v15, 0x4

    invoke-direct {v0, v1, v15}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v19

    add-int v4, v4, v19

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v15

    add-int/2addr v4, v8

    const v8, 0x4bdecfa9  # 2.9204306E7f

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v14}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v5

    add-int/2addr v3, v8

    const v8, 0x944b4a0

    sub-int/2addr v3, v8

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    const/16 v15, 0xa

    aget v8, v8, v15

    add-int/2addr v2, v8

    const v8, 0x41404390

    sub-int/2addr v2, v8

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v21

    add-int/2addr v1, v8

    const v8, 0x289b7ec6

    add-int/2addr v1, v8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v6

    add-int/2addr v4, v8

    const v8, 0x155ed806

    sub-int/2addr v4, v8

    invoke-direct {v0, v4, v14}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    const/4 v15, 0x3

    aget v8, v8, v15

    add-int/2addr v3, v8

    const v8, 0x2b10cf7b

    sub-int/2addr v3, v8

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v10

    add-int/2addr v2, v8

    const v8, 0x4881d05

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v12

    add-int/2addr v1, v8

    const v8, 0x262b2fc7

    sub-int/2addr v1, v8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    const/16 v15, 0xc

    aget v8, v8, v15

    add-int/2addr v4, v8

    const v8, 0x1924661b

    sub-int/2addr v4, v8

    invoke-direct {v0, v4, v14}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v13

    add-int/2addr v3, v8

    const v8, 0x1fa27cf8

    add-int/2addr v3, v8

    invoke-direct {v0, v3, v9}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->FH(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/2addr v2, v8

    const v8, 0x3b53a99b

    sub-int/2addr v2, v8

    invoke-direct {v0, v2, v11}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->Hw(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v6

    add-int/2addr v1, v8

    const v8, 0xbd6ddbc

    sub-int/2addr v1, v8

    invoke-direct {v0, v1, v10}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v5, v8, v5

    add-int/2addr v4, v5

    const v5, 0x432aff97

    add-int/2addr v4, v5

    const/16 v5, 0xa

    invoke-direct {v0, v4, v5}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Labcd/BO;->gn:[I

    aget v5, v5, v7

    add-int/2addr v3, v5

    const v5, 0x546bdc59

    sub-int/2addr v3, v5

    invoke-direct {v0, v3, v13}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->Hw(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Labcd/BO;->gn:[I

    const/4 v7, 0x5

    aget v5, v5, v7

    add-int/2addr v2, v5

    const v5, 0x36c5fc7

    sub-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    const/16 v8, 0xc

    aget v7, v7, v8

    add-int/2addr v1, v7

    const v7, 0x655b59c3

    add-int/2addr v1, v7

    invoke-direct {v0, v1, v10}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    add-int/2addr v4, v7

    const v7, 0x70f3336e

    sub-int/2addr v4, v7

    const/16 v7, 0xa

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Labcd/BO;->gn:[I

    aget v8, v8, v7

    add-int/2addr v3, v8

    const v7, 0x100b83

    sub-int/2addr v3, v7

    invoke-direct {v0, v3, v13}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x7a7ba22f

    sub-int/2addr v2, v7

    invoke-direct {v0, v2, v5}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    aget v7, v7, v17

    add-int/2addr v1, v7

    const v7, 0x6fa87e4f

    add-int/2addr v1, v7

    invoke-direct {v0, v1, v10}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    aget v7, v7, v13

    add-int/2addr v4, v7

    const v7, 0x1d31920

    sub-int/2addr v4, v7

    const/16 v7, 0xa

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    aget v7, v7, v10

    add-int/2addr v3, v7

    const v7, 0x5cfebcec

    sub-int/2addr v3, v7

    invoke-direct {v0, v3, v13}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    aget v7, v7, v21

    add-int/2addr v2, v7

    const v7, 0x4e0811a1  # 5.7071418E8f

    add-int/2addr v2, v7

    invoke-direct {v0, v2, v5}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    const/4 v8, 0x4

    aget v7, v7, v8

    add-int/2addr v1, v7

    const v7, 0x8ac817e

    sub-int/2addr v1, v7

    invoke-direct {v0, v1, v10}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    aget v7, v7, v14

    add-int/2addr v4, v7

    const v7, 0x42c50dcb

    sub-int/2addr v4, v7

    const/16 v7, 0xa

    invoke-direct {v0, v4, v7}, Labcd/BO;->j6(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int/2addr v3, v7

    const v7, 0x2ad7d2bb

    add-int/2addr v3, v7

    invoke-direct {v0, v3, v13}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Labcd/BO;->Hw(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v0, Labcd/BO;->gn:[I

    aget v7, v7, v12

    add-int/2addr v2, v7

    const v7, 0x14792c6f

    sub-int/2addr v2, v7

    invoke-direct {v0, v2, v5}, Labcd/BO;->j6(II)I

    move-result v2

    iget v5, v0, Labcd/BO;->Hw:I

    add-int/2addr v5, v1

    iput v5, v0, Labcd/BO;->Hw:I

    iget v1, v0, Labcd/BO;->v5:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Labcd/BO;->v5:I

    iget v1, v0, Labcd/BO;->Zo:I

    add-int/2addr v1, v3

    iput v1, v0, Labcd/BO;->Zo:I

    iget v1, v0, Labcd/BO;->VH:I

    add-int/2addr v1, v4

    iput v1, v0, Labcd/BO;->VH:I

    iput v6, v0, Labcd/BO;->u7:I

    const/4 v1, 0x0

    :goto_52a
    iget-object v2, v0, Labcd/BO;->gn:[I

    array-length v3, v2

    if-ne v1, v3, :cond_530

    return-void

    :cond_530
    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52a
.end method

.method public j6([BI)I
    .registers 5

    invoke-virtual {p0}, Labcd/xO;->FH()V

    iget v0, p0, Labcd/BO;->Hw:I

    invoke-direct {p0, v0, p1, p2}, Labcd/BO;->j6(I[BI)V

    iget v0, p0, Labcd/BO;->v5:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/BO;->j6(I[BI)V

    iget v0, p0, Labcd/BO;->Zo:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Labcd/BO;->j6(I[BI)V

    iget v0, p0, Labcd/BO;->VH:I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, v0, p1, p2}, Labcd/BO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/BO;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "MD5"

    return-object v0
.end method

.method protected j6(J)V
    .registers 7

    iget v0, p0, Labcd/BO;->u7:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Labcd/BO;->Hw()V

    :cond_9
    iget-object v0, p0, Labcd/BO;->gn:[I

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

    iput v0, p0, Labcd/BO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/BO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/BO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/BO;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/BO;->u7:I

    const/4 v1, 0x0

    :goto_1b
    iget-object v2, p0, Labcd/BO;->gn:[I

    array-length v3, v2

    if-ne v1, v3, :cond_21

    return-void

    :cond_21
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method
