.class final Labcd/Jy;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[I


# instance fields
.field DW:I

.field EQ:B

.field FH:I

.field Hw:[I

.field J0:I

.field J8:[I

.field private final QX:Labcd/Oy;

.field VH:I

.field Ws:I

.field private final XL:Labcd/Iy;

.field Zo:I

.field gn:I

.field tp:B

.field u7:I

.field v5:I

.field we:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v1, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0xf

    aput v3, v0, v2

    const/4 v2, 0x5

    const/16 v4, 0x1f

    aput v4, v0, v2

    const/4 v2, 0x6

    const/16 v4, 0x3f

    aput v4, v0, v2

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1ff

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3ff

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x7ff

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xfff

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1fff

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3fff

    aput v2, v0, v1

    const/16 v1, 0x7fff

    aput v1, v0, v3

    const/16 v1, 0x10

    const v2, 0xffff

    aput v2, v0, v1

    sput-object v0, Labcd/Jy;->j6:[I

    return-void
.end method

.method constructor <init>(Labcd/Oy;Labcd/Iy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->v5:I

    iput-object p1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput-object p2, p0, Labcd/Jy;->XL:Labcd/Iy;

    return-void
.end method


# virtual methods
.method j6(I)I
    .registers 19

    move-object/from16 v9, p0

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->DW:I

    iget v0, v0, Labcd/Oy;->FH:I

    iget-object v2, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v3, v2, Labcd/Iy;->j3:I

    iget v4, v2, Labcd/Iy;->aM:I

    iget v5, v2, Labcd/Iy;->rN:I

    iget v6, v2, Labcd/Iy;->lg:I

    const/4 v10, 0x1

    if-ge v5, v6, :cond_18

    sub-int/2addr v6, v5

    sub-int/2addr v6, v10

    goto :goto_1c

    :cond_18
    iget v2, v2, Labcd/Iy;->a8:I

    sub-int v6, v2, v5

    :goto_1c
    move v2, v1

    move v1, v0

    move/from16 v0, p1

    :goto_20
    iget v7, v9, Labcd/Jy;->DW:I

    const/16 v11, 0x9

    const/4 v12, -0x3

    const/4 v13, 0x7

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v7, :pswitch_data_412

    iget-object v0, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v0, Labcd/Iy;->j3:I

    iput v4, v0, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v6, v10

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :pswitch_49  #0x9
    iget-object v0, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v0, Labcd/Iy;->j3:I

    iput v4, v0, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v6, v10

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v12}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :pswitch_66  #0x7
    if-le v4, v13, :cond_6e

    add-int/lit8 v4, v4, -0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_6e
    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    iget-object v5, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v6, v5, Labcd/Iy;->rN:I

    iget v7, v5, Labcd/Iy;->lg:I

    if-ge v6, v7, :cond_7f

    goto :goto_81

    :cond_7f
    iget v5, v5, Labcd/Iy;->a8:I

    :goto_81
    iget-object v5, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v7, v5, Labcd/Iy;->lg:I

    iget v8, v5, Labcd/Iy;->rN:I

    if-eq v7, v8, :cond_a4

    iput v3, v5, Labcd/Iy;->j3:I

    iput v4, v5, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v7, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v6, v5, Labcd/Iy;->rN:I

    invoke-virtual {v5, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :cond_a4
    const/16 v0, 0x8

    iput v0, v9, Labcd/Jy;->DW:I

    move v5, v6

    :pswitch_a9  #0x8
    iget-object v0, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v0, Labcd/Iy;->j3:I

    iput v4, v0, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v11, v1

    add-long/2addr v6, v11

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v10}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :pswitch_c6  #0x6
    if-nez v6, :cond_12c

    iget-object v7, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v8, v7, Labcd/Iy;->a8:I

    if-ne v5, v8, :cond_dd

    iget v7, v7, Labcd/Iy;->lg:I

    if-eqz v7, :cond_dd

    if-lez v7, :cond_d9

    add-int/lit8 v7, v7, 0x0

    sub-int/2addr v7, v10

    move v6, v7

    goto :goto_dc

    :cond_d9
    add-int/lit8 v8, v8, 0x0

    move v6, v8

    :goto_dc
    const/4 v5, 0x0

    :cond_dd
    if-nez v6, :cond_12c

    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    iget-object v5, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v6, v5, Labcd/Iy;->rN:I

    iget v7, v5, Labcd/Iy;->lg:I

    if-ge v6, v7, :cond_f2

    sub-int/2addr v7, v6

    sub-int/2addr v7, v10

    goto :goto_f6

    :cond_f2
    iget v5, v5, Labcd/Iy;->a8:I

    sub-int v7, v5, v6

    :goto_f6
    iget-object v5, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v8, v5, Labcd/Iy;->a8:I

    if-ne v6, v8, :cond_10b

    iget v5, v5, Labcd/Iy;->lg:I

    if-eqz v5, :cond_10b

    if-lez v5, :cond_106

    add-int/lit8 v5, v5, 0x0

    sub-int/2addr v5, v10

    goto :goto_108

    :cond_106
    add-int/lit8 v5, v8, 0x0

    :goto_108
    move v6, v5

    const/4 v5, 0x0

    goto :goto_10d

    :cond_10b
    move v5, v6

    move v6, v7

    :goto_10d
    if-nez v6, :cond_12c

    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v7, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :cond_12c
    iget-object v0, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget-object v0, v0, Labcd/Iy;->U2:[B

    iget v7, v9, Labcd/Jy;->VH:I

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    sub-int/2addr v6, v10

    iput v15, v9, Labcd/Jy;->DW:I

    add-int/2addr v5, v10

    const/4 v0, 0x0

    goto/16 :goto_20

    :goto_13c
    :pswitch_13c  #0x5
    move v8, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    goto :goto_156

    :pswitch_142  #0x4
    iget v7, v9, Labcd/Jy;->gn:I

    :goto_144
    if-lt v4, v7, :cond_1f2

    iget v8, v9, Labcd/Jy;->u7:I

    sget-object v11, Labcd/Jy;->j6:[I

    aget v11, v11, v7

    and-int/2addr v11, v3

    add-int/2addr v8, v11

    iput v8, v9, Labcd/Jy;->u7:I

    shr-int/2addr v3, v7

    sub-int/2addr v4, v7

    const/4 v7, 0x5

    iput v7, v9, Labcd/Jy;->DW:I

    goto :goto_13c

    :goto_156
    iget v0, v9, Labcd/Jy;->u7:I

    sub-int v0, v5, v0

    :goto_15a
    if-ltz v0, :cond_1eb

    move v1, v0

    move v0, v8

    :goto_15e
    iget v2, v9, Labcd/Jy;->FH:I

    if-nez v2, :cond_16a

    iput v15, v9, Labcd/Jy;->DW:I

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    goto/16 :goto_20

    :cond_16a
    if-nez v6, :cond_1d0

    iget-object v2, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v3, v2, Labcd/Iy;->a8:I

    if-ne v5, v3, :cond_181

    iget v2, v2, Labcd/Iy;->lg:I

    if-eqz v2, :cond_181

    if-lez v2, :cond_17d

    add-int/lit8 v2, v2, 0x0

    sub-int/2addr v2, v10

    move v6, v2

    goto :goto_180

    :cond_17d
    add-int/lit8 v3, v3, 0x0

    move v6, v3

    :goto_180
    const/4 v5, 0x0

    :cond_181
    if-nez v6, :cond_1d0

    iget-object v2, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v5, v2, Labcd/Iy;->rN:I

    invoke-virtual {v2, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    iget-object v2, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v3, v2, Labcd/Iy;->rN:I

    iget v4, v2, Labcd/Iy;->lg:I

    if-ge v3, v4, :cond_196

    sub-int/2addr v4, v3

    sub-int/2addr v4, v10

    goto :goto_19a

    :cond_196
    iget v2, v2, Labcd/Iy;->a8:I

    sub-int v4, v2, v3

    :goto_19a
    iget-object v2, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v5, v2, Labcd/Iy;->a8:I

    if-ne v3, v5, :cond_1af

    iget v2, v2, Labcd/Iy;->lg:I

    if-eqz v2, :cond_1af

    if-lez v2, :cond_1aa

    add-int/lit8 v2, v2, 0x0

    sub-int/2addr v2, v10

    goto :goto_1ac

    :cond_1aa
    add-int/lit8 v2, v5, 0x0

    :goto_1ac
    move v6, v2

    const/4 v5, 0x0

    goto :goto_1b1

    :cond_1af
    move v5, v3

    move v6, v4

    :goto_1b1
    if-nez v6, :cond_1d0

    iget-object v1, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v13, v1, Labcd/Iy;->j3:I

    iput v14, v1, Labcd/Iy;->aM:I

    iget-object v2, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v11, v2, Labcd/Oy;->FH:I

    iget-wide v3, v2, Labcd/Oy;->Hw:J

    iget v6, v2, Labcd/Oy;->DW:I

    sub-int v6, v12, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Labcd/Oy;->Hw:J

    iput v12, v2, Labcd/Oy;->DW:I

    iput v5, v1, Labcd/Iy;->rN:I

    invoke-virtual {v1, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :cond_1d0
    iget-object v2, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget-object v3, v2, Labcd/Iy;->U2:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    aput-byte v1, v3, v5

    sub-int/2addr v6, v10

    iget v1, v2, Labcd/Iy;->a8:I

    if-ne v4, v1, :cond_1e1

    const/4 v1, 0x0

    goto :goto_1e2

    :cond_1e1
    move v1, v4

    :goto_1e2
    iget v2, v9, Labcd/Jy;->FH:I

    sub-int/2addr v2, v10

    iput v2, v9, Labcd/Jy;->FH:I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_15e

    :cond_1eb
    iget-object v1, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v1, v1, Labcd/Iy;->a8:I

    add-int/2addr v0, v1

    goto/16 :goto_15a

    :cond_1f2
    if-eqz v1, :cond_207

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->j6:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto/16 :goto_144

    :cond_207
    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v7, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :pswitch_224  #0x2
    iget v7, v9, Labcd/Jy;->gn:I

    :goto_226
    if-lt v4, v7, :cond_2d2

    iget v8, v9, Labcd/Jy;->FH:I

    sget-object v13, Labcd/Jy;->j6:[I

    aget v13, v13, v7

    and-int/2addr v13, v3

    add-int/2addr v8, v13

    iput v8, v9, Labcd/Jy;->FH:I

    shr-int/2addr v3, v7

    sub-int/2addr v4, v7

    iget-byte v7, v9, Labcd/Jy;->EQ:B

    iput v7, v9, Labcd/Jy;->Zo:I

    iget-object v7, v9, Labcd/Jy;->J8:[I

    iput-object v7, v9, Labcd/Jy;->Hw:[I

    iget v7, v9, Labcd/Jy;->Ws:I

    iput v7, v9, Labcd/Jy;->v5:I

    iput v14, v9, Labcd/Jy;->DW:I

    :pswitch_242  #0x3
    iget v7, v9, Labcd/Jy;->Zo:I

    :goto_244
    if-lt v4, v7, :cond_2a1

    iget v8, v9, Labcd/Jy;->v5:I

    sget-object v13, Labcd/Jy;->j6:[I

    aget v7, v13, v7

    and-int/2addr v7, v3

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x3

    iget-object v7, v9, Labcd/Jy;->Hw:[I

    add-int/lit8 v13, v8, 0x1

    aget v13, v7, v13

    shr-int/2addr v3, v13

    sub-int/2addr v4, v13

    aget v13, v7, v8

    and-int/lit8 v14, v13, 0x10

    if-eqz v14, :cond_26d

    and-int/lit8 v11, v13, 0xf

    iput v11, v9, Labcd/Jy;->gn:I

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    iput v7, v9, Labcd/Jy;->u7:I

    const/4 v7, 0x4

    :goto_269
    iput v7, v9, Labcd/Jy;->DW:I

    goto/16 :goto_20

    :cond_26d
    and-int/lit8 v14, v13, 0x40

    if-nez v14, :cond_27e

    iput v13, v9, Labcd/Jy;->Zo:I

    div-int/lit8 v11, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    :goto_279
    add-int/2addr v11, v7

    iput v11, v9, Labcd/Jy;->v5:I

    goto/16 :goto_20

    :cond_27e
    iput v11, v9, Labcd/Jy;->DW:I

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    const-string v6, "invalid distance code"

    iput-object v6, v0, Labcd/Oy;->u7:Ljava/lang/String;

    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v3, v0, Labcd/Oy;->Hw:J

    iget v1, v0, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v7, v1

    add-long/2addr v3, v7

    iput-wide v3, v0, Labcd/Oy;->Hw:J

    iput v2, v0, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v12}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :cond_2a1
    if-eqz v1, :cond_2b5

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->j6:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_244

    :cond_2b5
    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v7, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :cond_2d2
    if-eqz v1, :cond_2e7

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->j6:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto/16 :goto_226

    :cond_2e7
    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v7, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :pswitch_304  #0x0
    const/16 v7, 0x102

    if-lt v6, v7, :cond_366

    const/16 v7, 0xa

    if-lt v1, v7, :cond_366

    iget-object v7, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v7, Labcd/Iy;->j3:I

    iput v4, v7, Labcd/Iy;->aM:I

    iget-object v8, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v8, Labcd/Oy;->FH:I

    iget-wide v0, v8, Labcd/Oy;->Hw:J

    iget v3, v8, Labcd/Oy;->DW:I

    sub-int v3, v2, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, v8, Labcd/Oy;->Hw:J

    iput v2, v8, Labcd/Oy;->DW:I

    iput v5, v7, Labcd/Iy;->rN:I

    iget-byte v1, v9, Labcd/Jy;->tp:B

    iget-byte v2, v9, Labcd/Jy;->EQ:B

    iget-object v3, v9, Labcd/Jy;->we:[I

    iget v4, v9, Labcd/Jy;->J0:I

    iget-object v5, v9, Labcd/Jy;->J8:[I

    iget v6, v9, Labcd/Jy;->Ws:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Labcd/Jy;->j6(II[II[IILabcd/Iy;Labcd/Oy;)I

    move-result v0

    iget-object v1, v9, Labcd/Jy;->QX:Labcd/Oy;

    iget v2, v1, Labcd/Oy;->DW:I

    iget v1, v1, Labcd/Oy;->FH:I

    iget-object v3, v9, Labcd/Jy;->XL:Labcd/Iy;

    iget v4, v3, Labcd/Iy;->j3:I

    iget v5, v3, Labcd/Iy;->aM:I

    iget v6, v3, Labcd/Iy;->rN:I

    iget v7, v3, Labcd/Iy;->lg:I

    if-ge v6, v7, :cond_34c

    sub-int/2addr v7, v6

    sub-int/2addr v7, v10

    move v3, v7

    goto :goto_34f

    :cond_34c
    iget v3, v3, Labcd/Iy;->a8:I

    sub-int/2addr v3, v6

    :goto_34f
    if-eqz v0, :cond_35f

    if-ne v0, v10, :cond_354

    const/4 v11, 0x7

    :cond_354
    iput v11, v9, Labcd/Jy;->DW:I

    move/from16 v16, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    goto/16 :goto_20

    :cond_35f
    move/from16 v16, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    :cond_366
    iget-byte v7, v9, Labcd/Jy;->tp:B

    iput v7, v9, Labcd/Jy;->Zo:I

    iget-object v7, v9, Labcd/Jy;->we:[I

    iput-object v7, v9, Labcd/Jy;->Hw:[I

    iget v7, v9, Labcd/Jy;->J0:I

    iput v7, v9, Labcd/Jy;->v5:I

    iput v10, v9, Labcd/Jy;->DW:I

    :pswitch_374  #0x1
    iget v7, v9, Labcd/Jy;->Zo:I

    :goto_376
    if-lt v4, v7, :cond_3e1

    iget v8, v9, Labcd/Jy;->v5:I

    sget-object v15, Labcd/Jy;->j6:[I

    aget v7, v15, v7

    and-int/2addr v7, v3

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x3

    iget-object v7, v9, Labcd/Jy;->Hw:[I

    add-int/lit8 v14, v8, 0x1

    aget v14, v7, v14

    ushr-int/2addr v3, v14

    sub-int/2addr v4, v14

    aget v14, v7, v8

    if-nez v14, :cond_397

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    iput v7, v9, Labcd/Jy;->VH:I

    const/4 v7, 0x6

    goto/16 :goto_269

    :cond_397
    and-int/lit8 v15, v14, 0x10

    if-eqz v15, :cond_3a8

    and-int/lit8 v11, v14, 0xf

    iput v11, v9, Labcd/Jy;->gn:I

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    iput v7, v9, Labcd/Jy;->FH:I

    const/4 v7, 0x2

    goto/16 :goto_269

    :cond_3a8
    and-int/lit8 v15, v14, 0x40

    if-nez v15, :cond_3b6

    iput v14, v9, Labcd/Jy;->Zo:I

    div-int/lit8 v11, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    goto/16 :goto_279

    :cond_3b6
    and-int/lit8 v7, v14, 0x20

    if-eqz v7, :cond_3be

    iput v13, v9, Labcd/Jy;->DW:I

    goto/16 :goto_20

    :cond_3be
    iput v11, v9, Labcd/Jy;->DW:I

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    const-string v6, "invalid literal/length code"

    iput-object v6, v0, Labcd/Oy;->u7:Ljava/lang/String;

    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v3, v0, Labcd/Oy;->Hw:J

    iget v1, v0, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v7, v1

    add-long/2addr v3, v7

    iput-wide v3, v0, Labcd/Oy;->Hw:J

    iput v2, v0, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v12}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :cond_3e1
    if-eqz v1, :cond_3f5

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v9, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->j6:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_376

    :cond_3f5
    iget-object v6, v9, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v6, Labcd/Iy;->j3:I

    iput v4, v6, Labcd/Iy;->aM:I

    iget-object v3, v9, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v7, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Labcd/Oy;->Hw:J

    iput v2, v3, Labcd/Oy;->DW:I

    iput v5, v6, Labcd/Iy;->rN:I

    invoke-virtual {v6, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    return v0

    :pswitch_data_412
    .packed-switch 0x0
        :pswitch_304  #00000000
        :pswitch_374  #00000001
        :pswitch_224  #00000002
        :pswitch_242  #00000003
        :pswitch_142  #00000004
        :pswitch_13c  #00000005
        :pswitch_c6  #00000006
        :pswitch_66  #00000007
        :pswitch_a9  #00000008
        :pswitch_49  #00000009
    .end packed-switch
.end method

.method j6(II[II[IILabcd/Iy;Labcd/Oy;)I
    .registers 28

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    iget v2, v1, Labcd/Oy;->DW:I

    iget v3, v1, Labcd/Oy;->FH:I

    iget v4, v0, Labcd/Iy;->j3:I

    iget v5, v0, Labcd/Iy;->aM:I

    iget v6, v0, Labcd/Iy;->rN:I

    iget v7, v0, Labcd/Iy;->lg:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_16

    sub-int/2addr v7, v6

    sub-int/2addr v7, v8

    goto :goto_19

    :cond_16
    iget v7, v0, Labcd/Iy;->a8:I

    sub-int/2addr v7, v6

    :goto_19
    sget-object v9, Labcd/Jy;->j6:[I

    aget v10, v9, p1

    aget v9, v9, p2

    :goto_1f
    const/16 v11, 0x14

    if-lt v5, v11, :cond_1f1

    and-int v11, v4, v10

    add-int v12, p4, v11

    mul-int/lit8 v12, v12, 0x3

    aget v13, p3, v12

    if-nez v13, :cond_40

    add-int/lit8 v11, v12, 0x1

    aget v11, p3, v11

    shr-int/2addr v4, v11

    sub-int/2addr v5, v11

    iget-object v11, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v12, v12, 0x2

    aget v12, p3, v12

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    goto/16 :goto_188

    :cond_40
    :goto_40
    add-int/lit8 v15, v12, 0x1

    aget v15, p3, v15

    shr-int/2addr v4, v15

    sub-int/2addr v5, v15

    and-int/lit8 v15, v13, 0x10

    const/16 v16, -0x3

    if-eqz v15, :cond_160

    and-int/lit8 v11, v13, 0xf

    add-int/lit8 v12, v12, 0x2

    aget v12, p3, v12

    sget-object v13, Labcd/Jy;->j6:[I

    aget v13, v13, v11

    and-int/2addr v13, v4

    add-int v15, v12, v13

    shr-int/2addr v4, v11

    sub-int/2addr v5, v11

    :goto_5b
    const/16 v11, 0xf

    if-lt v5, v11, :cond_14f

    and-int v11, v4, v9

    add-int v12, p6, v11

    mul-int/lit8 v12, v12, 0x3

    aget v13, p5, v12

    :goto_67
    add-int/lit8 v17, v12, 0x1

    aget v17, p5, v17

    shr-int v4, v4, v17

    sub-int v5, v5, v17

    and-int/lit8 v17, v13, 0x10

    if-eqz v17, :cond_111

    and-int/lit8 v11, v13, 0xf

    :goto_75
    if-lt v5, v11, :cond_100

    add-int/lit8 v12, v12, 0x2

    aget v12, p5, v12

    sget-object v13, Labcd/Jy;->j6:[I

    aget v13, v13, v11

    and-int/2addr v13, v4

    add-int/2addr v12, v13

    if-lt v6, v12, :cond_ab

    sub-int v12, v6, v12

    sub-int v13, v6, v12

    const/4 v8, 0x2

    if-lez v13, :cond_9f

    if-le v8, v13, :cond_9f

    iget-object v8, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v16, v12, 0x1

    aget-byte v12, v8, v12

    aput-byte v12, v8, v6

    add-int/lit8 v6, v13, 0x1

    add-int/lit8 v12, v16, 0x1

    aget-byte v16, v8, v16

    aput-byte v16, v8, v13

    goto :goto_a8

    :cond_9f
    iget-object v13, v0, Labcd/Iy;->U2:[B

    invoke-static {v13, v12, v13, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v12, v12, 0x2

    :goto_a8
    add-int/lit8 v8, v15, -0x2

    goto :goto_dc

    :cond_ab
    sub-int v8, v6, v12

    :cond_ad
    iget v12, v0, Labcd/Iy;->a8:I

    add-int/2addr v8, v12

    if-ltz v8, :cond_ad

    sub-int/2addr v12, v8

    if-le v15, v12, :cond_da

    sub-int v13, v15, v12

    sub-int v14, v6, v8

    if-lez v14, :cond_d1

    if-le v12, v14, :cond_d1

    :goto_bd
    iget-object v14, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v16, v6, 0x1

    aget-byte v18, v14, v8

    aput-byte v18, v14, v6

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_cc

    move/from16 v6, v16

    goto :goto_d7

    :cond_cc
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v16

    goto :goto_bd

    :cond_d1
    iget-object v14, v0, Labcd/Iy;->U2:[B

    invoke-static {v14, v8, v14, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v12

    :goto_d7
    move v8, v13

    const/4 v12, 0x0

    goto :goto_dc

    :cond_da
    move v12, v8

    move v8, v15

    :goto_dc
    sub-int v13, v6, v12

    if-lez v13, :cond_f3

    if-le v8, v13, :cond_f3

    :goto_e2
    iget-object v13, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v14, v6, 0x1

    aget-byte v16, v13, v12

    aput-byte v16, v13, v6

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_ef

    goto :goto_fa

    :cond_ef
    add-int/lit8 v12, v12, 0x1

    move v6, v14

    goto :goto_e2

    :cond_f3
    iget-object v13, v0, Labcd/Iy;->U2:[B

    invoke-static {v13, v12, v13, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v14, v6, v8

    :goto_fa
    shr-int/2addr v4, v11

    sub-int/2addr v5, v11

    sub-int/2addr v7, v15

    move v6, v14

    goto/16 :goto_18b

    :cond_100
    add-int/lit8 v3, v3, -0x1

    iget-object v8, v1, Labcd/Oy;->j6:[B

    aget-byte v8, v8, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    or-int/2addr v4, v8

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    goto/16 :goto_75

    :cond_111
    and-int/lit8 v8, v13, 0x40

    if-nez v8, :cond_129

    add-int/lit8 v12, v12, 0x2

    aget v8, p5, v12

    add-int/2addr v11, v8

    sget-object v8, Labcd/Jy;->j6:[I

    aget v8, v8, v13

    and-int/2addr v8, v4

    add-int/2addr v11, v8

    add-int v8, p6, v11

    mul-int/lit8 v12, v8, 0x3

    aget v13, p5, v12

    const/4 v8, 0x1

    goto/16 :goto_67

    :cond_129
    const-string v7, "invalid distance code"

    iput-object v7, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iget v7, v1, Labcd/Oy;->FH:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_135

    :goto_134
    move v7, v8

    :cond_135
    sub-int/2addr v2, v7

    iput v4, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v7, 0x3

    sub-int/2addr v5, v4

    iput v5, v0, Labcd/Iy;->aM:I

    add-int/2addr v3, v7

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v3, v1, Labcd/Oy;->Hw:J

    iget v5, v1, Labcd/Oy;->DW:I

    sub-int v5, v2, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Labcd/Oy;->Hw:J

    iput v2, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    return v16

    :cond_14f
    add-int/lit8 v3, v3, -0x1

    iget-object v8, v1, Labcd/Oy;->j6:[B

    aget-byte v8, v8, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    or-int/2addr v4, v8

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    goto/16 :goto_5b

    :cond_160
    and-int/lit8 v8, v13, 0x40

    if-nez v8, :cond_1bd

    add-int/lit8 v12, v12, 0x2

    aget v8, p3, v12

    add-int/2addr v11, v8

    sget-object v8, Labcd/Jy;->j6:[I

    aget v8, v8, v13

    and-int/2addr v8, v4

    add-int/2addr v11, v8

    add-int v8, p4, v11

    mul-int/lit8 v12, v8, 0x3

    aget v13, p3, v12

    if-nez v13, :cond_1ba

    add-int/lit8 v8, v12, 0x1

    aget v8, p3, v8

    shr-int/2addr v4, v8

    sub-int/2addr v5, v8

    iget-object v8, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v12, v12, 0x2

    aget v11, p3, v12

    int-to-byte v11, v11

    aput-byte v11, v8, v6

    :goto_188
    add-int/lit8 v7, v7, -0x1

    move v6, v13

    :goto_18b
    const/16 v8, 0x102

    if-lt v7, v8, :cond_197

    const/16 v8, 0xa

    if-ge v3, v8, :cond_194

    goto :goto_197

    :cond_194
    const/4 v8, 0x1

    goto/16 :goto_1f

    :cond_197
    :goto_197
    iget v7, v1, Labcd/Oy;->FH:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_19f

    move v7, v8

    :cond_19f
    sub-int/2addr v2, v7

    iput v4, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v7, 0x3

    sub-int/2addr v5, v4

    iput v5, v0, Labcd/Iy;->aM:I

    add-int/2addr v3, v7

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v3, v1, Labcd/Oy;->Hw:J

    iget v5, v1, Labcd/Oy;->DW:I

    sub-int v5, v2, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Labcd/Oy;->Hw:J

    iput v2, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v8, 0x0

    return v8

    :cond_1ba
    const/4 v8, 0x1

    goto/16 :goto_40

    :cond_1bd
    and-int/lit8 v7, v13, 0x20

    if-eqz v7, :cond_1e4

    iget v7, v1, Labcd/Oy;->FH:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_1c9

    move v7, v8

    :cond_1c9
    sub-int/2addr v2, v7

    iput v4, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v7, 0x3

    sub-int/2addr v5, v4

    iput v5, v0, Labcd/Iy;->aM:I

    add-int/2addr v3, v7

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v3, v1, Labcd/Oy;->Hw:J

    iget v5, v1, Labcd/Oy;->DW:I

    sub-int v5, v2, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Labcd/Oy;->Hw:J

    iput v2, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v8, 0x1

    return v8

    :cond_1e4
    const-string v7, "invalid literal/length code"

    iput-object v7, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iget v7, v1, Labcd/Oy;->FH:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_135

    goto/16 :goto_134

    :cond_1f1
    add-int/lit8 v3, v3, -0x1

    iget-object v11, v1, Labcd/Oy;->j6:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v5

    or-int/2addr v4, v11

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f
.end method

.method j6(II[II[II)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->DW:I

    int-to-byte p1, p1

    iput-byte p1, p0, Labcd/Jy;->tp:B

    int-to-byte p1, p2

    iput-byte p1, p0, Labcd/Jy;->EQ:B

    iput-object p3, p0, Labcd/Jy;->we:[I

    iput p4, p0, Labcd/Jy;->J0:I

    iput-object p5, p0, Labcd/Jy;->J8:[I

    iput p6, p0, Labcd/Jy;->Ws:I

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Jy;->Hw:[I

    return-void
.end method

.method j6(Labcd/Oy;)V
    .registers 2

    return-void
.end method
