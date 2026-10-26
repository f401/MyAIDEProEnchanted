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
    .locals 5

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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->v5:I

    iput-object p1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput-object p2, p0, Labcd/Jy;->XL:Labcd/Iy;

    return-void
.end method


# virtual methods
.method j6(I)I
    .locals 12

    iget-object v0, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget v4, v0, Labcd/Oy;->DW:I

    iget v1, v0, Labcd/Oy;->FH:I

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v6, v0, Labcd/Iy;->j3:I

    iget v5, v0, Labcd/Iy;->aM:I

    iget v2, v0, Labcd/Iy;->rN:I

    iget v3, v0, Labcd/Iy;->lg:I

    if-ge v2, v3, :cond_0

    sub-int v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move v7, p1

    move v3, v1

    :goto_1
    iget v1, p0, Labcd/Jy;->DW:I

    const/16 v9, 0x9

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v3, v1, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    :goto_2
    return v0

    :cond_0
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v3, v1, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x7

    if-le v5, v0, :cond_1

    add-int/lit8 v5, v5, -0x8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v0

    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v2, v1, Labcd/Iy;->rN:I

    iget v7, v1, Labcd/Iy;->lg:I

    if-ge v2, v7, :cond_2

    :goto_3
    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v7, v1, Labcd/Iy;->lg:I

    iget v8, v1, Labcd/Iy;->rN:I

    if-eq v7, v8, :cond_3

    iput v6, v1, Labcd/Iy;->j3:I

    iput v5, v1, Labcd/Iy;->aM:I

    iget-object v5, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v5, Labcd/Oy;->FH:I

    iget-wide v6, v5, Labcd/Oy;->Hw:J

    iget v3, v5, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v5, Labcd/Oy;->Hw:J

    iput v4, v5, Labcd/Oy;->DW:I

    iput v2, v1, Labcd/Iy;->rN:I

    invoke-virtual {v1, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    goto :goto_2

    :cond_2
    iget v1, v1, Labcd/Iy;->a8:I

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Labcd/Jy;->DW:I

    :pswitch_2
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v6, v1, Labcd/Oy;->Hw:J

    iget v3, v1, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v1, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_3
    if-nez v0, :cond_9

    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v8, v1, Labcd/Iy;->a8:I

    if-ne v2, v8, :cond_4

    iget v1, v1, Labcd/Iy;->lg:I

    if-eqz v1, :cond_4

    if-lez v1, :cond_6

    add-int/lit8 v0, v1, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    const/4 v2, 0x0

    :cond_4
    if-nez v0, :cond_9

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v1

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v2, v0, Labcd/Iy;->rN:I

    iget v7, v0, Labcd/Iy;->lg:I

    if-ge v2, v7, :cond_7

    sub-int v0, v7, v2

    add-int/lit8 v0, v0, -0x1

    :goto_5
    iget-object v7, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v8, v7, Labcd/Iy;->a8:I

    if-ne v2, v8, :cond_5

    iget v7, v7, Labcd/Iy;->lg:I

    if-eqz v7, :cond_5

    if-lez v7, :cond_8

    add-int/lit8 v0, v7, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v2, 0x0

    :cond_5
    if-nez v0, :cond_9

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v5, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v5, Labcd/Oy;->FH:I

    iget-wide v6, v5, Labcd/Oy;->Hw:J

    iget v3, v5, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v5, Labcd/Oy;->Hw:J

    iput v4, v5, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v8, 0x0

    goto :goto_4

    :cond_7
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v2

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v8, 0x0

    goto :goto_6

    :cond_9
    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget-object v1, v1, Labcd/Iy;->U2:[B

    iget v7, p0, Labcd/Jy;->VH:I

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    iput v1, p0, Labcd/Jy;->DW:I

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    :pswitch_4
    iget v1, p0, Labcd/Jy;->gn:I

    :goto_7
    if-lt v5, v1, :cond_13

    iget v8, p0, Labcd/Jy;->u7:I

    sget-object v9, Labcd/Jy;->j6:[I

    aget v9, v9, v1

    and-int/2addr v9, v6

    add-int/2addr v8, v9

    iput v8, p0, Labcd/Jy;->u7:I

    shr-int/2addr v6, v1

    sub-int/2addr v5, v1

    const/4 v1, 0x5

    iput v1, p0, Labcd/Jy;->DW:I

    :pswitch_5
    iget v1, p0, Labcd/Jy;->u7:I

    sub-int v8, v2, v1

    :goto_8
    if-ltz v8, :cond_12

    move v1, v0

    :goto_9
    iget v0, p0, Labcd/Jy;->FH:I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Labcd/Jy;->DW:I

    move v0, v1

    goto/16 :goto_1

    :cond_a
    if-nez v1, :cond_10

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v9, v0, Labcd/Iy;->a8:I

    if-ne v2, v9, :cond_b

    iget v0, v0, Labcd/Iy;->lg:I

    if-eqz v0, :cond_b

    if-lez v0, :cond_c

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    const/4 v2, 0x0

    move v1, v0

    :cond_b
    if-nez v1, :cond_10

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v7

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v2, v0, Labcd/Iy;->rN:I

    iget v1, v0, Labcd/Iy;->lg:I

    if-ge v2, v1, :cond_d

    sub-int v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    :goto_b
    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v9, v1, Labcd/Iy;->a8:I

    if-ne v2, v9, :cond_f

    iget v1, v1, Labcd/Iy;->lg:I

    if-eqz v1, :cond_f

    if-lez v1, :cond_e

    add-int/lit8 v0, v1, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    const/4 v2, 0x0

    move v1, v0

    :goto_d
    if-nez v1, :cond_10

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v8, v1, Labcd/Oy;->Hw:J

    iget v3, v1, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v1, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v0, v9, 0x0

    goto :goto_a

    :cond_d
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v2

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v9, 0x0

    goto :goto_c

    :cond_f
    move v1, v0

    goto :goto_d

    :cond_10
    iget-object v9, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget-object v10, v9, Labcd/Iy;->U2:[B

    add-int/lit8 v0, v8, 0x1

    aget-byte v8, v10, v8

    aput-byte v8, v10, v2

    add-int/lit8 v1, v1, -0x1

    iget v8, v9, Labcd/Iy;->a8:I

    if-ne v0, v8, :cond_11

    const/4 v0, 0x0

    :cond_11
    iget v8, p0, Labcd/Jy;->FH:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Labcd/Jy;->FH:I

    add-int/lit8 v2, v2, 0x1

    move v8, v0

    goto/16 :goto_9

    :cond_12
    iget-object v1, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v1, v1, Labcd/Iy;->a8:I

    add-int/2addr v8, v1

    goto/16 :goto_8

    :cond_13
    if-eqz v3, :cond_14

    add-int/lit8 v3, v3, -0x1

    iget-object v7, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v7, v7, Labcd/Oy;->j6:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_14
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v8, v1, Labcd/Oy;->Hw:J

    iget v3, v1, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v1, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_6
    iget v1, p0, Labcd/Jy;->gn:I

    :goto_e
    if-lt v5, v1, :cond_19

    iget v8, p0, Labcd/Jy;->FH:I

    sget-object v9, Labcd/Jy;->j6:[I

    aget v9, v9, v1

    and-int/2addr v9, v6

    add-int/2addr v8, v9

    iput v8, p0, Labcd/Jy;->FH:I

    shr-int/2addr v6, v1

    sub-int/2addr v5, v1

    iget-byte v1, p0, Labcd/Jy;->EQ:B

    iput v1, p0, Labcd/Jy;->Zo:I

    iget-object v1, p0, Labcd/Jy;->J8:[I

    iput-object v1, p0, Labcd/Jy;->Hw:[I

    iget v1, p0, Labcd/Jy;->Ws:I

    iput v1, p0, Labcd/Jy;->v5:I

    const/4 v1, 0x3

    iput v1, p0, Labcd/Jy;->DW:I

    :pswitch_7
    iget v8, p0, Labcd/Jy;->Zo:I

    move v1, v3

    :goto_f
    if-lt v5, v8, :cond_17

    iget v3, p0, Labcd/Jy;->v5:I

    sget-object v9, Labcd/Jy;->j6:[I

    aget v8, v9, v8

    and-int/2addr v8, v6

    add-int/2addr v3, v8

    mul-int/lit8 v8, v3, 0x3

    iget-object v9, p0, Labcd/Jy;->Hw:[I

    add-int/lit8 v3, v8, 0x1

    aget v3, v9, v3

    shr-int/2addr v6, v3

    sub-int/2addr v5, v3

    aget v3, v9, v8

    and-int/lit8 v10, v3, 0x10

    if-eqz v10, :cond_15

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Labcd/Jy;->gn:I

    add-int/lit8 v3, v8, 0x2

    aget v3, v9, v3

    iput v3, p0, Labcd/Jy;->u7:I

    const/4 v3, 0x4

    :goto_10
    iput v3, p0, Labcd/Jy;->DW:I

    move v3, v1

    goto/16 :goto_1

    :cond_15
    and-int/lit8 v10, v3, 0x40

    if-nez v10, :cond_16

    iput v3, p0, Labcd/Jy;->Zo:I

    div-int/lit8 v3, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v8, v9, v8

    :goto_11
    add-int/2addr v3, v8

    iput v3, p0, Labcd/Jy;->v5:I

    move v3, v1

    goto/16 :goto_1

    :cond_16
    const/16 v0, 0x9

    iput v0, p0, Labcd/Jy;->DW:I

    iget-object v0, p0, Labcd/Jy;->QX:Labcd/Oy;

    const-string v3, "invalid distance code"

    iput-object v3, v0, Labcd/Oy;->u7:Ljava/lang/String;

    iget-object v3, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v3, Labcd/Iy;->j3:I

    iput v5, v3, Labcd/Iy;->aM:I

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v6, v0, Labcd/Oy;->Hw:J

    iget v1, v0, Labcd/Oy;->DW:I

    sub-int v1, v4, v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Labcd/Oy;->Hw:J

    iput v4, v0, Labcd/Oy;->DW:I

    iput v2, v3, Labcd/Iy;->rN:I

    const/4 v0, -0x3

    invoke-virtual {v3, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_17
    if-eqz v1, :cond_18

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->j6:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_f

    :cond_18
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v3, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v8, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v4, v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, v3, Labcd/Oy;->Hw:J

    iput v4, v3, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_19
    if-eqz v3, :cond_1a

    add-int/lit8 v3, v3, -0x1

    iget-object v7, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v7, v7, Labcd/Oy;->j6:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_1a
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v1, Labcd/Oy;->FH:I

    iget-wide v8, v1, Labcd/Oy;->Hw:J

    iget v3, v1, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v1, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :pswitch_8
    const/16 v1, 0x102

    if-lt v0, v1, :cond_1d

    const/16 v1, 0xa

    if-lt v3, v1, :cond_1d

    iget-object v7, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v7, Labcd/Iy;->j3:I

    iput v5, v7, Labcd/Iy;->aM:I

    iget-object v8, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v3, v8, Labcd/Oy;->FH:I

    iget-wide v0, v8, Labcd/Oy;->Hw:J

    iget v3, v8, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v10, v3

    add-long/2addr v0, v10

    iput-wide v0, v8, Labcd/Oy;->Hw:J

    iput v4, v8, Labcd/Oy;->DW:I

    iput v2, v7, Labcd/Iy;->rN:I

    iget-byte v1, p0, Labcd/Jy;->tp:B

    iget-byte v2, p0, Labcd/Jy;->EQ:B

    iget-object v3, p0, Labcd/Jy;->we:[I

    iget v4, p0, Labcd/Jy;->J0:I

    iget-object v5, p0, Labcd/Jy;->J8:[I

    iget v6, p0, Labcd/Jy;->Ws:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Labcd/Jy;->j6(II[II[IILabcd/Iy;Labcd/Oy;)I

    move-result v7

    iget-object v0, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget v4, v0, Labcd/Oy;->DW:I

    iget v1, v0, Labcd/Oy;->FH:I

    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iget v6, v0, Labcd/Iy;->j3:I

    iget v5, v0, Labcd/Iy;->aM:I

    iget v2, v0, Labcd/Iy;->rN:I

    iget v3, v0, Labcd/Iy;->lg:I

    if-ge v2, v3, :cond_1b

    sub-int v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-eqz v7, :cond_1c

    const/4 v3, 0x1

    if-ne v7, v3, :cond_24

    const/4 v3, 0x7

    :goto_13
    iput v3, p0, Labcd/Jy;->DW:I

    move v3, v1

    goto/16 :goto_1

    :cond_1b
    iget v0, v0, Labcd/Iy;->a8:I

    sub-int/2addr v0, v2

    goto :goto_12

    :cond_1c
    move v3, v1

    :cond_1d
    iget-byte v1, p0, Labcd/Jy;->tp:B

    iput v1, p0, Labcd/Jy;->Zo:I

    iget-object v1, p0, Labcd/Jy;->we:[I

    iput-object v1, p0, Labcd/Jy;->Hw:[I

    iget v1, p0, Labcd/Jy;->J0:I

    iput v1, p0, Labcd/Jy;->v5:I

    const/4 v1, 0x1

    iput v1, p0, Labcd/Jy;->DW:I

    :pswitch_9
    iget v8, p0, Labcd/Jy;->Zo:I

    move v1, v3

    :goto_14
    if-lt v5, v8, :cond_22

    iget v3, p0, Labcd/Jy;->v5:I

    sget-object v9, Labcd/Jy;->j6:[I

    aget v8, v9, v8

    and-int/2addr v8, v6

    add-int/2addr v3, v8

    mul-int/lit8 v8, v3, 0x3

    iget-object v9, p0, Labcd/Jy;->Hw:[I

    add-int/lit8 v3, v8, 0x1

    aget v3, v9, v3

    ushr-int/2addr v6, v3

    sub-int/2addr v5, v3

    aget v3, v9, v8

    if-nez v3, :cond_1e

    add-int/lit8 v3, v8, 0x2

    aget v3, v9, v3

    iput v3, p0, Labcd/Jy;->VH:I

    const/4 v3, 0x6

    goto/16 :goto_10

    :cond_1e
    and-int/lit8 v10, v3, 0x10

    if-eqz v10, :cond_1f

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Labcd/Jy;->gn:I

    add-int/lit8 v3, v8, 0x2

    aget v3, v9, v3

    iput v3, p0, Labcd/Jy;->FH:I

    const/4 v3, 0x2

    goto/16 :goto_10

    :cond_1f
    and-int/lit8 v10, v3, 0x40

    if-nez v10, :cond_20

    iput v3, p0, Labcd/Jy;->Zo:I

    div-int/lit8 v3, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v8, v9, v8

    goto/16 :goto_11

    :cond_20
    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_21

    const/4 v3, 0x7

    iput v3, p0, Labcd/Jy;->DW:I

    move v3, v1

    goto/16 :goto_1

    :cond_21
    const/16 v0, 0x9

    iput v0, p0, Labcd/Jy;->DW:I

    iget-object v0, p0, Labcd/Jy;->QX:Labcd/Oy;

    const-string v3, "invalid literal/length code"

    iput-object v3, v0, Labcd/Oy;->u7:Ljava/lang/String;

    iget-object v3, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v3, Labcd/Iy;->j3:I

    iput v5, v3, Labcd/Iy;->aM:I

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v6, v0, Labcd/Oy;->Hw:J

    iget v1, v0, Labcd/Oy;->DW:I

    sub-int v1, v4, v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Labcd/Oy;->Hw:J

    iput v4, v0, Labcd/Oy;->DW:I

    iput v2, v3, Labcd/Iy;->rN:I

    const/4 v0, -0x3

    invoke-virtual {v3, v0}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_22
    if-eqz v1, :cond_23

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Labcd/Jy;->QX:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->j6:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_14

    :cond_23
    iget-object v0, p0, Labcd/Jy;->XL:Labcd/Iy;

    iput v6, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v3, p0, Labcd/Jy;->QX:Labcd/Oy;

    iput v1, v3, Labcd/Oy;->FH:I

    iget-wide v8, v3, Labcd/Oy;->Hw:J

    iget v1, v3, Labcd/Oy;->DW:I

    sub-int v1, v4, v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, v3, Labcd/Oy;->Hw:J

    iput v4, v3, Labcd/Oy;->DW:I

    iput v2, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v0

    goto/16 :goto_2

    :cond_24
    move v3, v9

    goto/16 :goto_13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method j6(II[II[IILabcd/Iy;Labcd/Oy;)I
    .locals 18

    move-object/from16 v0, p8

    iget v8, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p8

    iget v9, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p7

    iget v5, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p7

    iget v6, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p7

    iget v7, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p7

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v7, v2, :cond_1

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_0
    sget-object v3, Labcd/Jy;->j6:[I

    aget v14, v3, p1

    aget v15, v3, p2

    move v13, v2

    :goto_1
    const/16 v2, 0x14

    if-lt v6, v2, :cond_13

    and-int v4, v5, v14

    add-int v2, p4, v4

    mul-int/lit8 v3, v2, 0x3

    aget v2, p3, v3

    if-nez v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget v4, p3, v2

    shr-int v2, v5, v4

    sub-int v4, v6, v4

    move-object/from16 v0, p7

    iget-object v6, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    aget v3, p3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    move v3, v4

    :goto_2
    add-int/lit8 v4, v13, -0x1

    move v10, v2

    move v6, v3

    move v7, v5

    :goto_3
    const/16 v2, 0x102

    if-lt v4, v2, :cond_0

    const/16 v2, 0xa

    if-ge v9, v2, :cond_10

    :cond_0
    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v3, v2, v9

    shr-int/lit8 v2, v6, 0x3

    if-ge v2, v3, :cond_16

    :goto_4
    sub-int v3, v8, v2

    move-object/from16 v0, p7

    iput v10, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v2, 0x3

    sub-int v4, v6, v4

    move-object/from16 v0, p7

    iput v4, v0, Labcd/Iy;->aM:I

    add-int/2addr v2, v9

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v8, v2

    add-long/2addr v4, v8

    move-object/from16 v0, p8

    iput-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v3, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v7, v0, Labcd/Iy;->rN:I

    const/4 v2, 0x0

    :goto_5
    return v2

    :cond_1
    move-object/from16 v0, p7

    iget v2, v0, Labcd/Iy;->a8:I

    sub-int/2addr v2, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v10, v3, 0x1

    aget v10, p3, v10

    shr-int/2addr v5, v10

    sub-int/2addr v6, v10

    and-int/lit8 v10, v2, 0x10

    if-eqz v10, :cond_f

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v3, v3, 0x2

    aget v3, p3, v3

    sget-object v4, Labcd/Jy;->j6:[I

    aget v4, v4, v2

    and-int/2addr v4, v5

    add-int v10, v3, v4

    shr-int v3, v5, v2

    sub-int v2, v6, v2

    move v6, v3

    :goto_6
    const/16 v3, 0xf

    if-lt v2, v3, :cond_e

    and-int v4, v6, v15

    add-int v3, p6, v4

    mul-int/lit8 v3, v3, 0x3

    aget v5, p5, v3

    :goto_7
    add-int/lit8 v11, v3, 0x1

    aget v11, p5, v11

    shr-int/2addr v6, v11

    sub-int/2addr v2, v11

    and-int/lit8 v11, v5, 0x10

    if-eqz v11, :cond_c

    and-int/lit8 v16, v5, 0xf

    move v11, v6

    move v12, v2

    :goto_8
    move/from16 v0, v16

    if-lt v12, v0, :cond_b

    add-int/lit8 v2, v3, 0x2

    aget v2, p5, v2

    sget-object v3, Labcd/Jy;->j6:[I

    aget v3, v3, v16

    and-int/2addr v3, v11

    add-int/2addr v2, v3

    if-lt v7, v2, :cond_4

    sub-int v3, v7, v2

    sub-int v2, v7, v3

    if-lez v2, :cond_3

    const/4 v4, 0x2

    if-le v4, v2, :cond_3

    move-object/from16 v0, p7

    iget-object v4, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v2, v4, v3

    aput-byte v2, v4, v7

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v3, v6, 0x1

    aget-byte v6, v4, v6

    aput-byte v6, v4, v5

    :goto_9
    add-int/lit8 v6, v10, -0x2

    move v4, v2

    :goto_a
    sub-int v2, v4, v3

    if-lez v2, :cond_a

    if-le v6, v2, :cond_a

    move v2, v4

    move v5, v3

    :goto_b
    move-object/from16 v0, p7

    iget-object v4, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v7, v4, v5

    aput-byte v7, v4, v2

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_9

    :goto_c
    shr-int v5, v11, v16

    sub-int v6, v12, v16

    sub-int v2, v13, v10

    move v4, v2

    move v10, v5

    move v7, v3

    goto/16 :goto_3

    :cond_3
    move-object/from16 v0, p7

    iget-object v2, v0, Labcd/Iy;->U2:[B

    const/4 v4, 0x2

    invoke-static {v2, v3, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v7, 0x2

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_4
    sub-int v2, v7, v2

    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Labcd/Iy;->a8:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_5

    sub-int v5, v3, v2

    if-le v10, v5, :cond_8

    sub-int v3, v7, v2

    if-lez v3, :cond_7

    if-le v5, v3, :cond_7

    move v3, v7

    move v4, v5

    move v6, v2

    :goto_d
    move-object/from16 v0, p7

    iget-object v7, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v17, v7, v6

    aput-byte v17, v7, v3

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_6

    :goto_e
    sub-int v6, v10, v5

    const/4 v3, 0x0

    move v4, v2

    goto :goto_a

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    goto :goto_d

    :cond_7
    move-object/from16 v0, p7

    iget-object v3, v0, Labcd/Iy;->U2:[B

    invoke-static {v3, v2, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v7, v5

    goto :goto_e

    :cond_8
    move v4, v7

    move v3, v2

    move v6, v10

    goto :goto_a

    :cond_9
    add-int/lit8 v4, v5, 0x1

    move v2, v3

    move v5, v4

    goto :goto_b

    :cond_a
    move-object/from16 v0, p7

    iget-object v2, v0, Labcd/Iy;->U2:[B

    invoke-static {v2, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v4, v6

    goto :goto_c

    :cond_b
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p8

    iget-object v2, v0, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v12

    or-int v6, v11, v2

    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v8, v8, 0x1

    move v11, v6

    move v12, v2

    goto/16 :goto_8

    :cond_c
    and-int/lit8 v11, v5, 0x40

    if-nez v11, :cond_d

    add-int/lit8 v3, v3, 0x2

    aget v3, p5, v3

    add-int/2addr v3, v4

    sget-object v4, Labcd/Jy;->j6:[I

    aget v4, v4, v5

    and-int/2addr v4, v6

    add-int/2addr v4, v3

    add-int v3, p6, v4

    mul-int/lit8 v3, v3, 0x3

    aget v5, p5, v3

    goto/16 :goto_7

    :cond_d
    const-string v3, "invalid distance code"

    move-object/from16 v0, p8

    iput-object v3, v0, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v3, v0, Labcd/Oy;->FH:I

    sub-int v4, v3, v9

    shr-int/lit8 v3, v2, 0x3

    if-ge v3, v4, :cond_17

    move v5, v6

    move v4, v8

    :goto_f
    move v8, v4

    :goto_10
    sub-int v4, v8, v3

    move-object/from16 v0, p7

    iput v5, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v5, v3, 0x3

    sub-int/2addr v2, v5

    move-object/from16 v0, p7

    iput v2, v0, Labcd/Iy;->aM:I

    add-int v2, v9, v3

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v2, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v5, v0, Labcd/Oy;->DW:I

    sub-int v5, v4, v5

    int-to-long v8, v5

    add-long/2addr v2, v8

    move-object/from16 v0, p8

    iput-wide v2, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v4, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v7, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p8

    iget-object v3, v0, Labcd/Oy;->j6:[B

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v6, v3

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :cond_f
    and-int/lit8 v10, v2, 0x40

    if-nez v10, :cond_11

    add-int/lit8 v3, v3, 0x2

    aget v3, p3, v3

    add-int/2addr v3, v4

    sget-object v4, Labcd/Jy;->j6:[I

    aget v2, v4, v2

    and-int/2addr v2, v5

    add-int v4, v3, v2

    add-int v2, p4, v4

    mul-int/lit8 v3, v2, 0x3

    aget v2, p3, v3

    if-nez v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget v4, p3, v2

    shr-int v2, v5, v4

    sub-int v4, v6, v4

    move-object/from16 v0, p7

    iget-object v6, v0, Labcd/Iy;->U2:[B

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    aget v3, p3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    move v3, v4

    goto/16 :goto_2

    :cond_10
    move v13, v4

    move v5, v10

    goto/16 :goto_1

    :cond_11
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_12

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v3, v2, v9

    shr-int/lit8 v2, v6, 0x3

    if-ge v2, v3, :cond_15

    :goto_11
    sub-int v3, v8, v2

    move-object/from16 v0, p7

    iput v5, v0, Labcd/Iy;->j3:I

    shl-int/lit8 v4, v2, 0x3

    sub-int v4, v6, v4

    move-object/from16 v0, p7

    iput v4, v0, Labcd/Iy;->aM:I

    add-int/2addr v2, v9

    move-object/from16 v0, p8

    iput v2, v0, Labcd/Oy;->FH:I

    move-object/from16 v0, p8

    iget-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v8, v2

    add-long/2addr v4, v8

    move-object/from16 v0, p8

    iput-wide v4, v0, Labcd/Oy;->Hw:J

    move-object/from16 v0, p8

    iput v3, v0, Labcd/Oy;->DW:I

    move-object/from16 v0, p7

    iput v7, v0, Labcd/Iy;->rN:I

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_12
    const-string v2, "invalid literal/length code"

    move-object/from16 v0, p8

    iput-object v2, v0, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v2, v0, Labcd/Oy;->FH:I

    sub-int v4, v2, v9

    shr-int/lit8 v3, v6, 0x3

    if-ge v3, v4, :cond_14

    move v2, v6

    move v4, v8

    goto/16 :goto_f

    :cond_13
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p8

    iget-object v2, v0, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v5, v2

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_14
    move v2, v6

    move v3, v4

    goto/16 :goto_10

    :cond_15
    move v2, v3

    goto :goto_11

    :cond_16
    move v2, v3

    goto/16 :goto_4

    :cond_17
    move v5, v6

    move v3, v4

    goto/16 :goto_10
.end method

.method j6(II[II[II)V
    .locals 1

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
    .locals 0

    return-void
.end method
