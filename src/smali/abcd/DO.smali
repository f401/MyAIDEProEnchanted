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
    .registers 6

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p3

    and-int v1, p2, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private FH(III)I
    .registers 5

    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private Hw(III)I
    .registers 6

    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

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
    .registers 5

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

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

.method private v5(III)I
    .registers 5

    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

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

    iget-object v0, p0, Labcd/DO;->u7:[I

    iget v1, p0, Labcd/DO;->tp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/DO;->tp:I

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

    iget v0, p0, Labcd/DO;->tp:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/DO;->Hw()V

    :cond_0
    return-void
.end method

.method protected Hw()V
    .registers 13

    iget v0, p0, Labcd/DO;->Hw:I

    iget v1, p0, Labcd/DO;->v5:I

    iget v2, p0, Labcd/DO;->Zo:I

    iget v3, p0, Labcd/DO;->VH:I

    iget v4, p0, Labcd/DO;->gn:I

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Labcd/DO;->u7:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-direct {p0, v2, v6}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v1, v6}, Labcd/DO;->j6(III)I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Labcd/DO;->u7:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0xe

    invoke-direct {p0, v7, v8}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0xa

    invoke-direct {p0, v1, v8}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->j6(III)I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v9, v10

    const/16 v10, 0xf

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v6, v10

    const/16 v10, 0xc

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v8, v10

    const/4 v10, 0x5

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v9, v10

    const/16 v10, 0x9

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v6, v10

    const/16 v10, 0xb

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v8, v10

    const/16 v10, 0xd

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v7, v10

    const/16 v10, 0xf

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v9, v10

    const/4 v10, 0x6

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v6, v10

    const/4 v10, 0x7

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v8, v10

    const/16 v10, 0x9

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/16 v10, 0x8

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x50a28be6

    add-int/2addr v4, v10

    const/16 v10, 0x9

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x50a28be6

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x50a28be6

    add-int/2addr v2, v10

    const/16 v10, 0xb

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x50a28be6

    add-int/2addr v1, v10

    const/16 v10, 0xd

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/16 v10, 0xf

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x50a28be6

    add-int/2addr v4, v10

    const/16 v10, 0xf

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x50a28be6

    add-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x50a28be6

    add-int/2addr v2, v10

    const/4 v10, 0x7

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x50a28be6

    add-int/2addr v1, v10

    const/4 v10, 0x7

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/16 v10, 0x8

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x50a28be6

    add-int/2addr v4, v10

    const/16 v10, 0xb

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x50a28be6

    add-int/2addr v3, v10

    const/16 v10, 0xe

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x50a28be6

    add-int/2addr v2, v10

    const/16 v10, 0xe

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x50a28be6

    add-int/2addr v1, v10

    const/16 v10, 0xc

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/4 v10, 0x6

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    const/4 v10, 0x6

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x5a827999

    add-int/2addr v6, v10

    const/16 v10, 0x8

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    const/16 v10, 0xd

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x5a827999

    add-int/2addr v5, v10

    const/16 v10, 0xb

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/16 v10, 0x9

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    const/4 v10, 0x7

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x5a827999

    add-int/2addr v6, v10

    const/16 v10, 0xf

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    const/4 v10, 0x7

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x5a827999

    add-int/2addr v5, v10

    const/16 v10, 0xc

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/16 v10, 0xf

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    const/16 v10, 0x9

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x5a827999

    add-int/2addr v6, v10

    const/16 v10, 0xb

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    const/4 v10, 0x7

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x5a827999

    add-int/2addr v5, v10

    const/16 v10, 0xd

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/16 v10, 0xc

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0x9

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x5c4dd124

    add-int/2addr v3, v10

    const/16 v10, 0xd

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x5c4dd124

    add-int/2addr v2, v10

    const/16 v10, 0xf

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x5c4dd124

    add-int/2addr v1, v10

    const/4 v10, 0x7

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x5c4dd124

    add-int/2addr v0, v10

    const/16 v10, 0xc

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0x8

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x5c4dd124

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x5c4dd124

    add-int/2addr v2, v10

    const/16 v10, 0xb

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x5c4dd124

    add-int/2addr v1, v10

    const/4 v10, 0x7

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x5c4dd124

    add-int/2addr v0, v10

    const/4 v10, 0x7

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0xc

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x5c4dd124

    add-int/2addr v3, v10

    const/4 v10, 0x7

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x5c4dd124

    add-int/2addr v2, v10

    const/4 v10, 0x6

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x5c4dd124

    add-int/2addr v1, v10

    const/16 v10, 0xf

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x5c4dd124

    add-int/2addr v0, v10

    const/16 v10, 0xd

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0xb

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/16 v10, 0xb

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x6ed9eba1

    add-int/2addr v6, v10

    const/16 v10, 0xd

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x6ed9eba1

    add-int/2addr v8, v10

    const/4 v10, 0x6

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x6ed9eba1

    add-int/2addr v5, v10

    const/4 v10, 0x7

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x6ed9eba1

    add-int/2addr v7, v10

    const/16 v10, 0xe

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/16 v10, 0x9

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x6ed9eba1

    add-int/2addr v6, v10

    const/16 v10, 0xd

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x6ed9eba1

    add-int/2addr v8, v10

    const/16 v10, 0xf

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x6ed9eba1

    add-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x6ed9eba1

    add-int/2addr v7, v10

    const/16 v10, 0x8

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/16 v10, 0xd

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x6ed9eba1

    add-int/2addr v6, v10

    const/4 v10, 0x6

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x6ed9eba1

    add-int/2addr v8, v10

    const/4 v10, 0x5

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x6ed9eba1

    add-int/2addr v5, v10

    const/16 v10, 0xc

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x6ed9eba1

    add-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x6d703ef3

    add-int/2addr v2, v10

    const/4 v10, 0x7

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x6d703ef3

    add-int/2addr v1, v10

    const/16 v10, 0xf

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x6d703ef3

    add-int/2addr v0, v10

    const/16 v10, 0xb

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x6d703ef3

    add-int/2addr v4, v10

    const/16 v10, 0x8

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/4 v10, 0x6

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x6d703ef3

    add-int/2addr v2, v10

    const/4 v10, 0x6

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x6d703ef3

    add-int/2addr v1, v10

    const/16 v10, 0xe

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x6d703ef3

    add-int/2addr v0, v10

    const/16 v10, 0xc

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x6d703ef3

    add-int/2addr v4, v10

    const/16 v10, 0xd

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x6d703ef3

    add-int/2addr v2, v10

    const/16 v10, 0xe

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x6d703ef3

    add-int/2addr v1, v10

    const/16 v10, 0xd

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x6d703ef3

    add-int/2addr v0, v10

    const/16 v10, 0xd

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x6d703ef3

    add-int/2addr v4, v10

    const/4 v10, 0x7

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->FH(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v6, v10

    const/16 v10, 0xb

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v8, v10

    const/16 v10, 0xc

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v7, v10

    const/16 v10, 0xf

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v9, v10

    const/16 v10, 0xe

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v6, v10

    const/16 v10, 0xf

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v8, v10

    const/16 v10, 0x9

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v7, v10

    const/16 v10, 0x9

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v9, v10

    const/16 v10, 0xe

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v6, v10

    const/4 v10, 0x5

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v8, v10

    const/4 v10, 0x6

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v7, v10

    const/4 v10, 0x6

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->Hw(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x70e44324    # 5.6515E29f

    sub-int/2addr v6, v10

    const/16 v10, 0xc

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0xf

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x7a6d76e9

    add-int/2addr v1, v10

    const/4 v10, 0x5

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x7a6d76e9

    add-int/2addr v0, v10

    const/16 v10, 0x8

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x7a6d76e9

    add-int/2addr v4, v10

    const/16 v10, 0xb

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x7a6d76e9

    add-int/2addr v3, v10

    const/16 v10, 0xe

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0xe

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x7a6d76e9

    add-int/2addr v1, v10

    const/4 v10, 0x6

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x7a6d76e9

    add-int/2addr v0, v10

    const/16 v10, 0xe

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x7a6d76e9

    add-int/2addr v4, v10

    const/4 v10, 0x6

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x7a6d76e9

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0xc

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x7a6d76e9

    add-int/2addr v1, v10

    const/16 v10, 0x9

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x7a6d76e9

    add-int/2addr v0, v10

    const/16 v10, 0xc

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x7a6d76e9

    add-int/2addr v4, v10

    const/4 v10, 0x5

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x7a6d76e9

    add-int/2addr v3, v10

    const/16 v10, 0xf

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->DW(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0x8

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x56ac02b2

    sub-int/2addr v8, v10

    const/16 v10, 0x9

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x56ac02b2

    sub-int/2addr v5, v10

    const/16 v10, 0xf

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x56ac02b2

    sub-int/2addr v7, v10

    const/4 v10, 0x5

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x56ac02b2

    sub-int/2addr v9, v10

    const/16 v10, 0xb

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x56ac02b2

    sub-int/2addr v6, v10

    const/4 v10, 0x6

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x56ac02b2

    sub-int/2addr v8, v10

    const/16 v10, 0x8

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x56ac02b2

    sub-int/2addr v5, v10

    const/16 v10, 0xd

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x56ac02b2

    sub-int/2addr v7, v10

    const/16 v10, 0xc

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x56ac02b2

    sub-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x56ac02b2

    sub-int/2addr v6, v10

    const/16 v10, 0xc

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x56ac02b2

    sub-int/2addr v8, v10

    const/16 v10, 0xd

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x56ac02b2

    sub-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x56ac02b2

    sub-int/2addr v7, v10

    const/16 v10, 0xb

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x56ac02b2

    sub-int/2addr v9, v10

    const/16 v10, 0x8

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Labcd/DO;->j6(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x56ac02b2

    sub-int/2addr v6, v10

    const/4 v10, 0x5

    invoke-direct {p0, v6, v10}, Labcd/DO;->j6(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Labcd/DO;->j6(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Labcd/DO;->v5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x56ac02b2

    sub-int/2addr v8, v10

    const/4 v10, 0x6

    invoke-direct {p0, v8, v10}, Labcd/DO;->j6(II)I

    move-result v8

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Labcd/DO;->j6(II)I

    move-result v9

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/16 v10, 0x8

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v0, v10

    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v4, v10

    const/16 v10, 0xc

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v2, v10

    const/16 v10, 0xc

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/4 v10, 0x5

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v0, v10

    const/16 v10, 0xe

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v4, v10

    const/4 v10, 0x6

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v3, v10

    const/16 v10, 0x8

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v2, v10

    const/16 v10, 0xd

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/4 v10, 0x6

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v0, v10

    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v4, v10

    const/16 v10, 0xf

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v3, v10

    const/16 v10, 0xd

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Labcd/DO;->j6(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v2, v10

    const/16 v10, 0xb

    invoke-direct {p0, v2, v10}, Labcd/DO;->j6(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Labcd/DO;->j6(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Labcd/DO;->j6(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Labcd/DO;->u7:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/16 v10, 0xb

    invoke-direct {p0, v1, v10}, Labcd/DO;->j6(II)I

    move-result v1

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Labcd/DO;->j6(II)I

    move-result v3

    iget v10, p0, Labcd/DO;->v5:I

    iget v11, p0, Labcd/DO;->Zo:I

    add-int/2addr v9, v11

    add-int/2addr v4, v9

    iput v4, p0, Labcd/DO;->v5:I

    iget v4, p0, Labcd/DO;->VH:I

    add-int/2addr v4, v7

    add-int/2addr v4, v0

    iput v4, p0, Labcd/DO;->Zo:I

    iget v4, p0, Labcd/DO;->gn:I

    add-int/2addr v4, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    iput v0, p0, Labcd/DO;->VH:I

    iget v0, p0, Labcd/DO;->Hw:I

    add-int v1, v8, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Labcd/DO;->gn:I

    add-int v0, v6, v10

    add-int/2addr v0, v3

    iput v0, p0, Labcd/DO;->Hw:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Labcd/DO;->tp:I

    :goto_0
    iget-object v1, p0, Labcd/DO;->u7:[I

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

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Labcd/DO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/DO;->reset()V

    const/16 v0, 0x14

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "RIPEMD160"

    return-object v0
.end method

.method protected j6(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Labcd/DO;->tp:I

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Labcd/DO;->Hw()V

    :cond_0
    iget-object v0, p0, Labcd/DO;->u7:[I

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

    iput v0, p0, Labcd/DO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/DO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/DO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/DO;->VH:I

    const v0, -0x3c2d1e10

    iput v0, p0, Labcd/DO;->gn:I

    iput v1, p0, Labcd/DO;->tp:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/DO;->u7:[I

    array-length v3, v2

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
