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

    const/16 v4, 0xf

    const/4 v3, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x11

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    aput v3, v0, v2

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x7f

    aput v1, v0, v3

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

    aput v1, v0, v4

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
    .registers 14

    iget-object v0, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget v5, v0, Labcd/Oy;->DW:I

    iget v7, v0, Labcd/Oy;->FH:I

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v1, v0, Labcd/Iy;->j3:I

    iget v4, v0, Labcd/Iy;->aM:I

    iget v3, v0, Labcd/Iy;->rN:I

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v3, v2, :cond_0

    sub-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move v2, v0

    move v6, v4

    move v9, v5

    move v10, v7

    :goto_1
    iget v0, p0, Labcd/Jy;->DW:I

    const/4 v11, 0x7

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v9, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v9, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    :goto_2
    return v0

    :cond_0
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v3

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v9, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v9, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x7

    if-le v6, v0, :cond_1

    add-int/lit8 v6, v6, -0x8

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :cond_1
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, p1}, Labcd/Iy;->j6(I)I

    move-result v0

    iget-object v2, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v3, v2, Labcd/Iy;->rN:I

    iget v4, v2, Labcd/Iy;->lg:I

    if-ge v3, v4, :cond_2

    :goto_3
    iget-object v2, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v4, v2, Labcd/Iy;->lg:I

    iget v5, v2, Labcd/Iy;->rN:I

    if-eq v4, v5, :cond_3

    iput v1, v2, Labcd/Iy;->j3:I

    iput v6, v2, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v6, v1, Labcd/Oy;->DW:I

    sub-int v6, v9, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v9, v1, Labcd/Oy;->DW:I

    iput v3, v2, Labcd/Iy;->rN:I

    invoke-virtual {v2, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    goto :goto_2

    :cond_2
    iget v2, v2, Labcd/Iy;->a8:I

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Labcd/Jy;->DW:I

    :pswitch_2
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v9, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v9, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_3
    if-nez v2, :cond_9

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v4, v0, Labcd/Iy;->a8:I

    if-ne v3, v4, :cond_4

    iget v0, v0, Labcd/Iy;->lg:I

    if-eqz v0, :cond_4

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    const/4 v3, 0x0

    move v2, v0

    :cond_4
    if-nez v2, :cond_9

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, p1}, Labcd/Iy;->j6(I)I

    move-result v4

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v3, v0, Labcd/Iy;->rN:I

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v3, v2, :cond_6

    sub-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    :goto_5
    iget-object v2, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v5, v2, Labcd/Iy;->a8:I

    if-ne v3, v5, :cond_8

    iget v2, v2, Labcd/Iy;->lg:I

    if-eqz v2, :cond_8

    if-lez v2, :cond_7

    add-int/lit8 v0, v2, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v3, 0x0

    move v2, v0

    :goto_7
    if-nez v2, :cond_9

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v9, v2

    int-to-long v10, v2

    add-long/2addr v6, v10

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v9, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v4}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v0, v4, 0x0

    goto :goto_4

    :cond_6
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v3

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v5, 0x0

    goto :goto_6

    :cond_8
    move v2, v0

    goto :goto_7

    :cond_9
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget-object v0, v0, Labcd/Iy;->U2:[B

    iget v4, p0, Labcd/Jy;->VH:I

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, -0x1

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->DW:I

    add-int/lit8 v3, v3, 0x1

    const/4 p1, 0x0

    goto/16 :goto_1

    :pswitch_4
    iget v0, p0, Labcd/Jy;->gn:I

    move v4, p1

    move v7, v9

    move v8, v10

    :goto_8
    if-lt v6, v0, :cond_13

    iget v5, p0, Labcd/Jy;->u7:I

    sget-object v9, Labcd/Jy;->j6:[I

    aget v9, v9, v0

    and-int/2addr v9, v1

    add-int/2addr v5, v9

    iput v5, p0, Labcd/Jy;->u7:I

    shr-int v5, v1, v0

    sub-int/2addr v6, v0

    const/4 v0, 0x5

    iput v0, p0, Labcd/Jy;->DW:I

    :goto_9
    iget v0, p0, Labcd/Jy;->u7:I

    sub-int v0, v3, v0

    :goto_a
    if-ltz v0, :cond_12

    move v1, v0

    :goto_b
    iget v0, p0, Labcd/Jy;->FH:I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->DW:I

    move v1, v5

    move p1, v4

    move v9, v7

    move v10, v8

    goto/16 :goto_1

    :cond_a
    if-nez v2, :cond_10

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v9, v0, Labcd/Iy;->a8:I

    if-ne v3, v9, :cond_b

    iget v0, v0, Labcd/Iy;->lg:I

    if-eqz v0, :cond_b

    if-lez v0, :cond_c

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    const/4 v3, 0x0

    move v2, v0

    :cond_b
    if-nez v2, :cond_10

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v4}, Labcd/Iy;->j6(I)I

    move-result v4

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v3, v0, Labcd/Iy;->rN:I

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v3, v2, :cond_d

    sub-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    :goto_d
    iget-object v2, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v9, v2, Labcd/Iy;->a8:I

    if-ne v3, v9, :cond_f

    iget v2, v2, Labcd/Iy;->lg:I

    if-eqz v2, :cond_f

    if-lez v2, :cond_e

    add-int/lit8 v0, v2, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    const/4 v3, 0x0

    move v2, v0

    :goto_f
    if-nez v2, :cond_10

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v5, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v8, v1, Labcd/Oy;->FH:I

    iget-wide v8, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v7, v2

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v1, Labcd/Oy;->Hw:J

    iput v7, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v4}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v0, v9, 0x0

    goto :goto_c

    :cond_d
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v3

    goto :goto_d

    :cond_e
    add-int/lit8 v0, v9, 0x0

    goto :goto_e

    :cond_f
    move v2, v0

    goto :goto_f

    :cond_10
    iget-object v9, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget-object v10, v9, Labcd/Iy;->U2:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v10, v1

    aput-byte v1, v10, v3

    add-int/lit8 v2, v2, -0x1

    iget v1, v9, Labcd/Iy;->a8:I

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    iget v1, p0, Labcd/Jy;->FH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/Jy;->FH:I

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto/16 :goto_b

    :cond_12
    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v1, v1, Labcd/Iy;->a8:I

    add-int/2addr v0, v1

    goto/16 :goto_a

    :cond_13
    if-eqz v8, :cond_14

    add-int/lit8 v8, v8, -0x1

    iget-object v4, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v4, v4, Labcd/Oy;->j6:[B

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v1, v4

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_14
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v8, v1, Labcd/Oy;->FH:I

    iget-wide v8, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v7, v2

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v1, Labcd/Oy;->Hw:J

    iput v7, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v4}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_5
    iget v0, p0, Labcd/Jy;->gn:I

    :goto_10
    if-lt v6, v0, :cond_19

    iget v4, p0, Labcd/Jy;->FH:I

    sget-object v5, Labcd/Jy;->j6:[I

    aget v5, v5, v0

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Labcd/Jy;->FH:I

    shr-int/2addr v1, v0

    sub-int/2addr v6, v0

    iget-byte v0, p0, Labcd/Jy;->EQ:B

    iput v0, p0, Labcd/Jy;->Zo:I

    iget-object v0, p0, Labcd/Jy;->J8:[I

    iput-object v0, p0, Labcd/Jy;->Hw:[I

    iget v0, p0, Labcd/Jy;->Ws:I

    iput v0, p0, Labcd/Jy;->v5:I

    const/4 v0, 0x3

    iput v0, p0, Labcd/Jy;->DW:I

    :pswitch_6
    iget v0, p0, Labcd/Jy;->Zo:I

    move v5, v9

    move v7, v10

    :goto_11
    if-lt v6, v0, :cond_17

    iget v4, p0, Labcd/Jy;->v5:I

    sget-object v8, Labcd/Jy;->j6:[I

    aget v0, v8, v0

    and-int/2addr v0, v1

    add-int/2addr v0, v4

    mul-int/lit8 v8, v0, 0x3

    iget-object v9, p0, Labcd/Jy;->Hw:[I

    add-int/lit8 v4, v8, 0x1

    aget v0, v9, v4

    shr-int v0, v1, v0

    aget v1, v9, v4

    sub-int v4, v6, v1

    aget v1, v9, v8

    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_15

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Labcd/Jy;->gn:I

    add-int/lit8 v1, v8, 0x2

    aget v1, v9, v1

    iput v1, p0, Labcd/Jy;->u7:I

    const/4 v1, 0x4

    iput v1, p0, Labcd/Jy;->DW:I

    move v1, v0

    move v6, v4

    move v9, v5

    move v10, v7

    goto/16 :goto_1

    :cond_15
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_16

    iput v1, p0, Labcd/Jy;->Zo:I

    div-int/lit8 v1, v8, 0x3

    add-int/lit8 v6, v8, 0x2

    aget v6, v9, v6

    add-int/2addr v1, v6

    iput v1, p0, Labcd/Jy;->v5:I

    move v1, v0

    move v6, v4

    move v9, v5

    move v10, v7

    goto/16 :goto_1

    :cond_16
    const/16 v1, 0x9

    iput v1, p0, Labcd/Jy;->DW:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    const-string v2, "invalid distance code"

    iput-object v2, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iget-object v2, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v0, v2, Labcd/Iy;->j3:I

    iput v4, v2, Labcd/Iy;->aM:I

    iput v7, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v0, v1, Labcd/Oy;->DW:I

    sub-int v0, v5, v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v5, v1, Labcd/Oy;->DW:I

    iput v3, v2, Labcd/Iy;->rN:I

    const/4 v0, -0x3

    invoke-virtual {v2, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_17
    if-eqz v7, :cond_18

    add-int/lit8 v7, v7, -0x1

    iget-object v4, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v4, v4, Labcd/Oy;->j6:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v1, v4

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    const/4 p1, 0x0

    goto :goto_11

    :cond_18
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v7, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v5, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, p1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_19
    if-eqz v10, :cond_1a

    add-int/lit8 v10, v10, -0x1

    iget-object v4, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v4, v4, Labcd/Oy;->j6:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v1, v4

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v9, v9, 0x1

    const/4 p1, 0x0

    goto/16 :goto_10

    :cond_1a
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v9, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v9, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, p1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_7
    const/16 v0, 0x102

    if-lt v2, v0, :cond_1e

    const/16 v0, 0xa

    if-lt v10, v0, :cond_1e

    iget-object v7, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v7, Labcd/Iy;->j3:I

    iput v6, v7, Labcd/Iy;->aM:I

    iget-object v8, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v10, v8, Labcd/Oy;->FH:I

    iget-wide v0, v8, Labcd/Oy;->Hw:J

    iget v2, v8, Labcd/Oy;->DW:I

    sub-int v2, v9, v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, v8, Labcd/Oy;->Hw:J

    iput v9, v8, Labcd/Oy;->DW:I

    iput v3, v7, Labcd/Iy;->rN:I

    iget-byte v1, p0, Labcd/Jy;->tp:B

    iget-byte v2, p0, Labcd/Jy;->EQ:B

    iget-object v3, p0, Labcd/Jy;->we:[I

    iget v4, p0, Labcd/Jy;->J0:I

    iget-object v5, p0, Labcd/Jy;->J8:[I

    iget v6, p0, Labcd/Jy;->Ws:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Labcd/Jy;->j6(II[II[IILabcd/Iy;Labcd/Oy;)I

    move-result p1

    iget-object v0, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget v5, v0, Labcd/Oy;->DW:I

    iget v7, v0, Labcd/Oy;->FH:I

    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v0, v1, Labcd/Iy;->j3:I

    iget v4, v1, Labcd/Iy;->aM:I

    iget v3, v1, Labcd/Iy;->rN:I

    iget v2, v1, Labcd/Iy;->lg:I

    if-ge v3, v2, :cond_1b

    sub-int v1, v2, v3

    add-int/lit8 v2, v1, -0x1

    :goto_12
    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    move v1, v11

    :goto_13
    iput v1, p0, Labcd/Jy;->DW:I

    move v1, v0

    move v6, v4

    move v9, v5

    move v10, v7

    goto/16 :goto_1

    :cond_1b
    iget v1, v1, Labcd/Iy;->a8:I

    sub-int v2, v1, v3

    goto :goto_12

    :cond_1c
    const/16 v1, 0x9

    goto :goto_13

    :cond_1d
    move v6, v4

    move v10, v7

    move v9, v5

    move v1, v0

    :cond_1e
    iget-byte v0, p0, Labcd/Jy;->tp:B

    iput v0, p0, Labcd/Jy;->Zo:I

    iget-object v0, p0, Labcd/Jy;->we:[I

    iput-object v0, p0, Labcd/Jy;->Hw:[I

    iget v0, p0, Labcd/Jy;->J0:I

    iput v0, p0, Labcd/Jy;->v5:I

    const/4 v0, 0x1

    iput v0, p0, Labcd/Jy;->DW:I

    :pswitch_8
    iget v0, p0, Labcd/Jy;->Zo:I

    move v5, v9

    move v7, v10

    :goto_14
    if-lt v6, v0, :cond_23

    iget v4, p0, Labcd/Jy;->v5:I

    sget-object v8, Labcd/Jy;->j6:[I

    aget v0, v8, v0

    and-int/2addr v0, v1

    add-int/2addr v0, v4

    mul-int/lit8 v8, v0, 0x3

    iget-object v9, p0, Labcd/Jy;->Hw:[I

    add-int/lit8 v4, v8, 0x1

    aget v0, v9, v4

    ushr-int v0, v1, v0

    aget v1, v9, v4

    sub-int v4, v6, v1

    aget v1, v9, v8

    if-nez v1, :cond_1f

    add-int/lit8 v1, v8, 0x2

    aget v1, v9, v1

    iput v1, p0, Labcd/Jy;->VH:I

    const/4 v1, 0x6

    iput v1, p0, Labcd/Jy;->DW:I

    :goto_15
    move v1, v0

    move v6, v4

    move v9, v5

    move v10, v7

    goto/16 :goto_1

    :cond_1f
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_20

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Labcd/Jy;->gn:I

    add-int/lit8 v1, v8, 0x2

    aget v1, v9, v1

    iput v1, p0, Labcd/Jy;->FH:I

    const/4 v1, 0x2

    iput v1, p0, Labcd/Jy;->DW:I

    goto :goto_15

    :cond_20
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_21

    iput v1, p0, Labcd/Jy;->Zo:I

    div-int/lit8 v1, v8, 0x3

    add-int/lit8 v6, v8, 0x2

    aget v6, v9, v6

    add-int/2addr v1, v6

    iput v1, p0, Labcd/Jy;->v5:I

    goto :goto_15

    :cond_21
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_22

    const/4 v1, 0x7

    iput v1, p0, Labcd/Jy;->DW:I

    goto :goto_15

    :cond_22
    const/16 v1, 0x9

    iput v1, p0, Labcd/Jy;->DW:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    const-string v2, "invalid literal/length code"

    iput-object v2, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iget-object v2, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v0, v2, Labcd/Iy;->j3:I

    iput v4, v2, Labcd/Iy;->aM:I

    iput v7, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v0, v1, Labcd/Oy;->DW:I

    sub-int v0, v5, v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v5, v1, Labcd/Oy;->DW:I

    iput v3, v2, Labcd/Iy;->rN:I

    const/4 v0, -0x3

    invoke-virtual {v2, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_23
    if-eqz v7, :cond_24

    add-int/lit8 v7, v7, -0x1

    iget-object v4, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v4, v4, Labcd/Oy;->j6:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v1, v4

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    const/4 p1, 0x0

    goto/16 :goto_14

    :cond_24
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v1, v0, Labcd/Iy;->j3:I

    iput v6, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v7, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v5, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v5, v1, Labcd/Oy;->DW:I

    iput v3, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, p1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_9
    move v4, p1

    move v5, v1

    move v7, v9

    move v8, v10

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method j6(II[II[IILabcd/Iy;Labcd/Oy;)I
    .registers 27

    move-object/from16 v0, p8

    iget v9, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p8

    iget v10, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p7

    iget v7, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p7

    iget v6, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p7

    iget v8, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p7

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v8, v2, :cond_1

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, -0x1

    :goto_0
    sget-object v3, Labcd/Jy;->j6:[I

    aget v15, v3, p1

    aget v16, v3, p2

    move v14, v2

    :goto_1
    const/16 v2, 0x14

    if-lt v6, v2, :cond_11

    and-int v2, v7, v15

    add-int v3, p4, v2

    mul-int/lit8 v5, v3, 0x3

    aget v3, p3, v5

    if-nez v3, :cond_2

    add-int/lit8 v2, v5, 0x1

    aget v3, p3, v2

    shr-int v3, v7, v3

    aget v2, p3, v2

    sub-int v2, v6, v2

    move-object/from16 v0, p7

    iget-object v6, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v5, 0x2

    aget v5, p3, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    :goto_2
    add-int/lit8 v6, v14, -0x1

    move v5, v9

    move v11, v6

    move v12, v2

    move v13, v3

    :goto_3
    const/16 v2, 0x102

    if-lt v11, v2, :cond_0

    const/16 v2, 0xa

    if-ge v10, v2, :cond_15

    :cond_0
    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v3, v2, v10

    shr-int/lit8 v2, v12, 0x3

    if-ge v2, v3, :cond_14

    :goto_4
    sub-int v3, v5, v2

    move-object/from16 v0, p7

    iput v13, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v5, v2, 0x3

    sub-int v5, v12, v5

    move-object/from16 v0, p7

    iput v5, v0, Labcd/Iy;->aM:I

    add-int/2addr v2, v10

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v6, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p8

    iput-wide v6, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v3, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v4, v0, Labcd/Iy;->rN:I

    const/4 v2, 0x0

    :goto_5
    return v2

    :cond_1
    move-object/from16 v0, p7

    iget v2, v0, Labcd/Iy;->a8:I

    sub-int/2addr v2, v8

    goto :goto_0

    :cond_2
    move v4, v5

    add-int/lit8 v5, v4, 0x1

    aget v11, p3, v5

    shr-int/2addr v7, v11

    aget v5, p3, v5

    sub-int/2addr v6, v5

    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_e

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v2, v4, 0x2

    aget v2, p3, v2

    sget-object v4, Labcd/Jy;->j6:[I

    aget v4, v4, v3

    and-int/2addr v4, v7

    add-int v11, v2, v4

    shr-int v2, v7, v3

    sub-int v5, v6, v3

    move v6, v2

    move v7, v9

    move v13, v10

    :goto_6
    const/16 v2, 0xf

    if-lt v5, v2, :cond_d

    and-int v4, v6, v16

    add-int v2, p6, v4

    mul-int/lit8 v3, v2, 0x3

    aget v2, p5, v3

    :goto_7
    add-int/lit8 v9, v3, 0x1

    aget v10, p5, v9

    shr-int/2addr v6, v10

    aget v9, p5, v9

    sub-int/2addr v5, v9

    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_b

    and-int/lit8 v17, v2, 0xf

    move v10, v6

    move v12, v5

    move v9, v13

    :goto_8
    move/from16 v0, v17

    if-lt v12, v0, :cond_a

    add-int/lit8 v2, v3, 0x2

    aget v2, p5, v2

    sget-object v3, Labcd/Jy;->j6:[I

    aget v3, v3, v17

    and-int/2addr v3, v10

    add-int/2addr v2, v3

    if-lt v8, v2, :cond_4

    sub-int v3, v8, v2

    sub-int v2, v8, v3

    if-lez v2, :cond_3

    const/4 v4, 0x2

    if-le v4, v2, :cond_3

    move-object/from16 v0, p7

    iget-object v4, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v2, v4, v3

    aput-byte v2, v4, v8

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v4, v6

    aput-byte v6, v4, v5

    :goto_9
    add-int/lit8 v6, v11, -0x2

    move v4, v2

    :goto_a
    sub-int v2, v4, v3

    if-lez v2, :cond_9

    if-le v6, v2, :cond_9

    move v2, v4

    move v5, v3

    :goto_b
    move-object/from16 v0, p7

    iget-object v4, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v8, v4, v5

    aput-byte v8, v4, v2

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_8

    :goto_c
    shr-int v8, v10, v17

    sub-int v6, v12, v17

    sub-int v2, v14, v11

    move v5, v7

    move v10, v9

    move v11, v2

    move v4, v3

    move v12, v6

    move v13, v8

    goto/16 :goto_3

    :cond_3
    move-object/from16 v0, p7

    iget-object v2, v0, Labcd/Iy;->U2:[B

    const/4 v4, 0x2

    invoke-static {v2, v3, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v8, 0x2

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_4
    sub-int v2, v8, v2

    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Labcd/Iy;->a8:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_5

    sub-int v4, v3, v2

    if-le v11, v4, :cond_17

    sub-int v6, v11, v4

    sub-int v3, v8, v2

    if-lez v3, :cond_7

    if-le v4, v3, :cond_7

    move v3, v8

    move v5, v4

    :goto_d
    move-object/from16 v0, p7

    iget-object v8, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v13, v8, v2

    aput-byte v13, v8, v3

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_6

    :goto_e
    const/4 v3, 0x0

    goto :goto_a

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_d

    :cond_7
    move-object/from16 v0, p7

    iget-object v3, v0, Labcd/Iy;->U2:[B

    invoke-static {v3, v2, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v8

    goto :goto_e

    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v2, v3

    move v5, v4

    goto :goto_b

    :cond_9
    move-object/from16 v0, p7

    iget-object v2, v0, Labcd/Iy;->U2:[B

    invoke-static {v2, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v4, v6

    goto :goto_c

    :cond_a
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p8

    iget-object v2, v0, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v12

    or-int v6, v10, v2

    add-int/lit8 v5, v12, 0x8

    add-int/lit8 v7, v7, 0x1

    move v10, v6

    move v12, v5

    goto/16 :goto_8

    :cond_b
    and-int/lit8 v9, v2, 0x40

    if-nez v9, :cond_c

    add-int/lit8 v3, v3, 0x2

    aget v3, p5, v3

    add-int/2addr v3, v4

    sget-object v4, Labcd/Jy;->j6:[I

    aget v2, v4, v2

    and-int/2addr v2, v6

    add-int v4, v3, v2

    add-int v2, p6, v4

    mul-int/lit8 v3, v2, 0x3

    aget v2, p5, v3

    goto/16 :goto_7

    :cond_c
    const-string v2, "invalid distance code"

    move-object/from16 v0, p8

    iput-object v2, v0, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v3, v2, v13

    shr-int/lit8 v2, v5, 0x3

    if-ge v2, v3, :cond_16

    :goto_f
    sub-int v3, v7, v2

    move-object/from16 v0, p7

    iput v6, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v2, 0x3

    sub-int v4, v5, v4

    move-object/from16 v0, p7

    iput v4, v0, Labcd/Iy;->aM:I

    add-int/2addr v2, v13

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p8

    iput-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v3, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v8, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p8

    iget-object v2, v0, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_e
    and-int/lit8 v5, v3, 0x40

    if-nez v5, :cond_f

    add-int/lit8 v4, v4, 0x2

    aget v4, p3, v4

    add-int/2addr v2, v4

    sget-object v4, Labcd/Jy;->j6:[I

    aget v3, v4, v3

    and-int/2addr v3, v7

    add-int/2addr v2, v3

    add-int v3, p4, v2

    mul-int/lit8 v5, v3, 0x3

    aget v3, p3, v5

    if-nez v3, :cond_2

    add-int/lit8 v2, v5, 0x1

    aget v3, p3, v2

    shr-int v3, v7, v3

    aget v2, p3, v2

    sub-int v2, v6, v2

    move-object/from16 v0, p7

    iget-object v6, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v5, 0x2

    aget v5, p3, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    goto/16 :goto_2

    :cond_f
    and-int/lit8 v2, v3, 0x20

    if-eqz v2, :cond_10

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v3, v2, v10

    shr-int/lit8 v2, v6, 0x3

    if-ge v2, v3, :cond_13

    :goto_10
    sub-int v3, v9, v2

    move-object/from16 v0, p7

    iput v7, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v2, 0x3

    sub-int v4, v6, v4

    move-object/from16 v0, p7

    iput v4, v0, Labcd/Iy;->aM:I

    add-int/2addr v2, v10

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p8

    iput-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v3, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v8, v0, Labcd/Iy;->rN:I

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_10
    const-string v2, "invalid literal/length code"

    move-object/from16 v0, p8

    iput-object v2, v0, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v3, v2, v10

    shr-int/lit8 v2, v6, 0x3

    if-ge v2, v3, :cond_12

    :goto_11
    sub-int v3, v9, v2

    move-object/from16 v0, p7

    iput v7, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v2, 0x3

    sub-int v4, v6, v4

    move-object/from16 v0, p7

    iput v4, v0, Labcd/Iy;->aM:I

    add-int/2addr v2, v10

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p8

    iput-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v3, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v8, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p8

    iget-object v2, v0, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v7, v2

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_12
    move v2, v3

    goto :goto_11

    :cond_13
    move v2, v3

    goto/16 :goto_10

    :cond_14
    move v2, v3

    goto/16 :goto_4

    :cond_15
    move v14, v11

    move v7, v13

    move v6, v12

    move v9, v5

    move v8, v4

    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto/16 :goto_f

    :cond_17
    move v6, v11

    move v4, v8

    move v3, v2

    goto/16 :goto_a
.end method

.method j6(II[II[II)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->DW:I

    int-to-byte v0, p1

    iput-byte v0, p0, Labcd/Jy;->tp:B

    int-to-byte v0, p2

    iput-byte v0, p0, Labcd/Jy;->EQ:B

    iput-object p3, p0, Labcd/Jy;->we:[I

    iput p4, p0, Labcd/Jy;->J0:I

    iput-object p5, p0, Labcd/Jy;->J8:[I

    iput p6, p0, Labcd/Jy;->Ws:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Jy;->Hw:[I

    return-void
.end method

.method j6(Labcd/Oy;)V
    .registers 2

    return-void
.end method
