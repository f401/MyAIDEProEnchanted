.class public Labcd/GO;
.super Labcd/xO;


# static fields
.field static final Hw:[I


# instance fields
.field private EQ:I

.field private J0:[I

.field private J8:I

.field private VH:I

.field private Zo:I

.field private gn:I

.field private tp:I

.field private u7:I

.field private v5:I

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/GO;->Hw:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/xO;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/GO;->J0:[I

    invoke-virtual {p0}, Labcd/GO;->reset()V

    return-void
.end method

.method private DW(I)I
    .registers 6

    shl-int/lit8 v0, p1, 0x7

    ushr-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x6

    shl-int/lit8 v2, p1, 0x1a

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0xb

    shl-int/lit8 v3, p1, 0x15

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private DW(III)I
    .registers 6

    and-int v0, p1, p3

    and-int v1, p1, p2

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private FH(I)I
    .registers 6

    ushr-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p1, 0x7

    shl-int/lit8 v2, p1, 0x19

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x12

    shl-int/lit8 v3, p1, 0xe

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Hw(I)I
    .registers 6

    ushr-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p1, 0x11

    shl-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x13

    shl-int/lit8 v3, p1, 0xd

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private j6(I)I
    .registers 6

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p1, 0x16

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x2

    shl-int/lit8 v2, p1, 0x1e

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0xd

    shl-int/lit8 v3, p1, 0x13

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private j6(III)I
    .registers 6

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p3

    and-int v1, p2, p1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/16 v0, 0x1c

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

    iget-object v4, p0, Labcd/GO;->J0:[I

    iget v5, p0, Labcd/GO;->J8:I

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

    iput v0, p0, Labcd/GO;->J8:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/GO;->Hw()V

    :cond_0
    return-void
.end method

.method protected Hw()V
    .registers 15

    const/16 v11, 0x10

    const/4 v1, 0x0

    move v0, v11

    :goto_0
    const/16 v2, 0x3f

    if-le v0, v2, :cond_2

    iget v9, p0, Labcd/GO;->v5:I

    iget v7, p0, Labcd/GO;->Zo:I

    iget v5, p0, Labcd/GO;->VH:I

    iget v2, p0, Labcd/GO;->gn:I

    iget v8, p0, Labcd/GO;->u7:I

    iget v6, p0, Labcd/GO;->tp:I

    iget v4, p0, Labcd/GO;->EQ:I

    iget v0, p0, Labcd/GO;->we:I

    move v3, v1

    move v10, v1

    :goto_1
    const/16 v12, 0x8

    if-lt v10, v12, :cond_1

    iget v3, p0, Labcd/GO;->v5:I

    add-int/2addr v3, v9

    iput v3, p0, Labcd/GO;->v5:I

    iget v3, p0, Labcd/GO;->Zo:I

    add-int/2addr v3, v7

    iput v3, p0, Labcd/GO;->Zo:I

    iget v3, p0, Labcd/GO;->VH:I

    add-int/2addr v3, v5

    iput v3, p0, Labcd/GO;->VH:I

    iget v3, p0, Labcd/GO;->gn:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/GO;->gn:I

    iget v2, p0, Labcd/GO;->u7:I

    add-int/2addr v2, v8

    iput v2, p0, Labcd/GO;->u7:I

    iget v2, p0, Labcd/GO;->tp:I

    add-int/2addr v2, v6

    iput v2, p0, Labcd/GO;->tp:I

    iget v2, p0, Labcd/GO;->EQ:I

    add-int/2addr v2, v4

    iput v2, p0, Labcd/GO;->EQ:I

    iget v2, p0, Labcd/GO;->we:I

    add-int/2addr v0, v2

    iput v0, p0, Labcd/GO;->we:I

    iput v1, p0, Labcd/GO;->J8:I

    move v0, v1

    :goto_2
    if-lt v0, v11, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Labcd/GO;->J0:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v8}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v8, v6, v4}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v0, v12

    add-int/2addr v2, v0

    invoke-direct {p0, v9}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v9, v7, v5}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v0, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v2, v8, v6}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    add-int/2addr v5, v4

    invoke-direct {p0, v0}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v0, v9, v7}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v5}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v5, v2, v8}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v6, v12

    add-int/2addr v7, v6

    invoke-direct {p0, v4}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v4, v0, v9}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v6, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v7}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v7, v5, v2}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    add-int/2addr v9, v8

    invoke-direct {p0, v6}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v6, v4, v0}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v9}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v9, v7, v5}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    add-int/2addr v0, v2

    invoke-direct {p0, v8}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v8, v6, v4}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v0, v9, v7}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    add-int/2addr v4, v5

    invoke-direct {p0, v2}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v2, v8, v6}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v4}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v4, v0, v9}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/2addr v6, v7

    invoke-direct {p0, v5}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v5, v2, v8}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v6}, Labcd/GO;->DW(I)I

    move-result v12

    invoke-direct {p0, v6, v4, v0}, Labcd/GO;->j6(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Labcd/GO;->Hw:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    iget-object v13, p0, Labcd/GO;->J0:[I

    aget v13, v13, v3

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    add-int/2addr v8, v9

    invoke-direct {p0, v7}, Labcd/GO;->j6(I)I

    move-result v12

    invoke-direct {p0, v7, v5, v2}, Labcd/GO;->DW(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Labcd/GO;->J0:[I

    add-int/lit8 v3, v0, -0x2

    aget v3, v2, v3

    invoke-direct {p0, v3}, Labcd/GO;->Hw(I)I

    move-result v3

    iget-object v4, p0, Labcd/GO;->J0:[I

    add-int/lit8 v5, v0, -0x7

    aget v5, v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    invoke-direct {p0, v4}, Labcd/GO;->FH(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Labcd/GO;->J0:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public j6([BI)I
    .registers 5

    invoke-virtual {p0}, Labcd/xO;->FH()V

    iget v0, p0, Labcd/GO;->v5:I

    invoke-static {v0, p1, p2}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/GO;->Zo:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/GO;->VH:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/GO;->gn:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/GO;->u7:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/GO;->tp:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    iget v0, p0, Labcd/GO;->EQ:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Labcd/ZO;->j6(I[BI)V

    invoke-virtual {p0}, Labcd/GO;->reset()V

    const/16 v0, 0x1c

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-224"

    return-object v0
.end method

.method protected j6(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Labcd/GO;->J8:I

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Labcd/GO;->Hw()V

    :cond_0
    iget-object v0, p0, Labcd/GO;->J0:[I

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

    const v0, -0x3efa6128

    iput v0, p0, Labcd/GO;->v5:I

    const v0, 0x367cd507

    iput v0, p0, Labcd/GO;->Zo:I

    const v0, 0x3070dd17

    iput v0, p0, Labcd/GO;->VH:I

    const v0, -0x8f1a6c7

    iput v0, p0, Labcd/GO;->gn:I

    const v0, -0x3ff4cf

    iput v0, p0, Labcd/GO;->u7:I

    const v0, 0x68581511

    iput v0, p0, Labcd/GO;->tp:I

    const v0, 0x64f98fa7

    iput v0, p0, Labcd/GO;->EQ:I

    const v0, -0x4105b05c

    iput v0, p0, Labcd/GO;->we:I

    iput v1, p0, Labcd/GO;->J8:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/GO;->J0:[I

    array-length v3, v2

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
