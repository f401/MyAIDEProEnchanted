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
    .registers 6

    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private FH(III)I
    .registers 5

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private Hw(III)I
    .registers 5

    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private j6(II)I
    .registers 5

    rsub-int/lit8 v0, p2, 0x20

    ushr-int v0, p1, v0

    shl-int v1, p1, p2

    or-int/2addr v0, v1

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

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

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

    aget-byte v2, p1, p2

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    aput v2, v0, v1

    iget v0, p0, Labcd/BO;->u7:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/BO;->Hw()V

    :cond_0
    return-void
.end method

.method protected Hw()V
    .registers 12

    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    iget v0, p0, Labcd/BO;->Hw:I

    iget v1, p0, Labcd/BO;->v5:I

    iget v2, p0, Labcd/BO;->Zo:I

    iget v3, p0, Labcd/BO;->VH:I

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x28955b88

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v9}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x173848aa

    sub-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x242070db

    add-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x3e423112

    sub-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v6

    add-int/2addr v0, v4

    const v4, 0xa83f051

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v9}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    const v4, 0x4787c62a

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v2, v4

    const v4, 0x57cfb9ed

    sub-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v1, v4

    const v4, 0x2b96aff

    sub-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x698098d8

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v9}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v3, v4

    const v4, 0x74bb0851

    sub-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0xa44f

    sub-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x76a32842

    sub-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x6b901122

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v9}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x2678e6d

    sub-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x5986bc72

    sub-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x49b40821

    add-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x9e1da9e

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v7}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v3, v4

    const v4, 0x3fbf4cc0

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v10}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x265e5a51

    add-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x16493856

    sub-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v7

    add-int/2addr v0, v4

    const v4, 0x29d0efa3

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v7}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x2441453

    add-int/2addr v3, v4

    invoke-direct {p0, v3, v10}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x275e197f

    sub-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v6

    add-int/2addr v1, v4

    const v4, 0x182c0438

    sub-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v0, v4

    const v4, 0x21e1cde6

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v7}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x3cc8f82a

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v10}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0xb2af279

    sub-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x455a14ed

    add-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x561c16fb

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v7}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x3105c08

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v10}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v2, v4

    const v4, 0x676f02d9

    add-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x72d5b376

    sub-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v7

    add-int/2addr v0, v4

    const v4, 0x5c6be

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v6}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x788e097f

    sub-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x6d9d6122

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x21ac7f4

    sub-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x5b4115bc

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v6}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    const v4, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v2, v4

    const v4, 0x944b4a0

    sub-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x41404390

    sub-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x289b7ec6

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v6}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x155ed806

    sub-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x2b10cf7b

    sub-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v1, v4

    const v4, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v0, v4

    const v4, 0x262b2fc7

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v6}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x1924661b

    sub-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x1fa27cf8

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x3b53a99b

    sub-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0xbd6ddbc

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    const v4, 0x432aff97

    add-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x546bdc59

    sub-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v7

    add-int/2addr v1, v4

    const v4, 0x36c5fc7

    sub-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x655b59c3

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x70f3336e

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x100b83

    sub-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x7a7ba22f

    sub-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x6fa87e4f

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x1d31920

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v2, v4

    const v4, 0x5cfebcec

    sub-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x4e0811a1    # 5.7071418E8f

    add-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v2, v3}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v6

    add-int/2addr v0, v4

    const v4, 0x8ac817e

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/BO;->j6(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1, v2}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x42c50dcb

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Labcd/BO;->j6(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x2ad7d2bb

    add-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-direct {p0, v2, v4}, Labcd/BO;->j6(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v3, v0}, Labcd/BO;->Hw(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/BO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v1, v4

    const v4, 0x14792c6f

    sub-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-direct {p0, v1, v4}, Labcd/BO;->j6(II)I

    move-result v1

    iget v4, p0, Labcd/BO;->Hw:I

    add-int/2addr v0, v4

    iput v0, p0, Labcd/BO;->Hw:I

    iget v0, p0, Labcd/BO;->v5:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Labcd/BO;->v5:I

    iget v0, p0, Labcd/BO;->Zo:I

    add-int/2addr v0, v2

    iput v0, p0, Labcd/BO;->Zo:I

    iget v0, p0, Labcd/BO;->VH:I

    add-int/2addr v0, v3

    iput v0, p0, Labcd/BO;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/BO;->u7:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/BO;->gn:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Labcd/BO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/BO;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "MD5"

    return-object v0
.end method

.method protected j6(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Labcd/BO;->u7:I

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Labcd/BO;->Hw()V

    :cond_0
    iget-object v0, p0, Labcd/BO;->gn:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/xO;->reset()V

    const v0, 0x67452301

    iput v0, p0, Labcd/BO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/BO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/BO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/BO;->VH:I

    iput v1, p0, Labcd/BO;->u7:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/BO;->gn:[I

    array-length v3, v2

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
