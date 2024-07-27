.class public Labcd/AO;
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

    iput-object v0, p0, Labcd/AO;->gn:[I

    invoke-virtual {p0}, Labcd/AO;->reset()V

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

    iget-object v0, p0, Labcd/AO;->gn:[I

    iget v1, p0, Labcd/AO;->u7:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/AO;->u7:I

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

    iget v0, p0, Labcd/AO;->u7:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/AO;->Hw()V

    :cond_0
    return-void
.end method

.method protected Hw()V
    .registers 12

    const/16 v10, 0xb

    const/16 v9, 0x9

    const/4 v8, 0x3

    const v7, 0x6ed9eba1

    const v6, 0x5a827999

    iget v0, p0, Labcd/AO;->Hw:I

    iget v1, p0, Labcd/AO;->v5:I

    iget v2, p0, Labcd/AO;->Zo:I

    iget v3, p0, Labcd/AO;->VH:I

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->j6(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->DW(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v8

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Labcd/AO;->j6(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    aget v4, v4, v10

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Labcd/AO;->j6(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Labcd/AO;->j6(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Labcd/AO;->FH(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Labcd/AO;->gn:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Labcd/AO;->j6(II)I

    move-result v1

    iget v4, p0, Labcd/AO;->Hw:I

    add-int/2addr v0, v4

    iput v0, p0, Labcd/AO;->Hw:I

    iget v0, p0, Labcd/AO;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/AO;->v5:I

    iget v0, p0, Labcd/AO;->Zo:I

    add-int/2addr v0, v2

    iput v0, p0, Labcd/AO;->Zo:I

    iget v0, p0, Labcd/AO;->VH:I

    add-int/2addr v0, v3

    iput v0, p0, Labcd/AO;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/AO;->u7:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/AO;->gn:[I

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

    iget v0, p0, Labcd/AO;->Hw:I

    invoke-direct {p0, v0, p1, p2}, Labcd/AO;->j6(I[BI)V

    iget v0, p0, Labcd/AO;->v5:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/AO;->j6(I[BI)V

    iget v0, p0, Labcd/AO;->Zo:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Labcd/AO;->j6(I[BI)V

    iget v0, p0, Labcd/AO;->VH:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Labcd/AO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/AO;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "MD4"

    return-object v0
.end method

.method protected j6(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Labcd/AO;->u7:I

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Labcd/AO;->Hw()V

    :cond_0
    iget-object v0, p0, Labcd/AO;->gn:[I

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

    iput v0, p0, Labcd/AO;->Hw:I

    const v0, -0x10325477

    iput v0, p0, Labcd/AO;->v5:I

    const v0, -0x67452302

    iput v0, p0, Labcd/AO;->Zo:I

    const v0, 0x10325476

    iput v0, p0, Labcd/AO;->VH:I

    iput v1, p0, Labcd/AO;->u7:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/AO;->gn:[I

    array-length v3, v2

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
