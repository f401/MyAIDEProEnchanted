.class final Labcd/Iy;
.super Ljava/lang/Object;


# static fields
.field static final DW:[I

.field private static final j6:[I


# instance fields
.field EQ:[I

.field FH:I

.field Hw:I

.field J0:[[I

.field J8:[I

.field Mr:[I

.field private final QX:Labcd/Jy;

.field U2:[B

.field VH:[I

.field Ws:[I

.field XL:I

.field Zo:I

.field a8:I

.field aM:I

.field private er:Z

.field private final gW:Labcd/Oy;

.field gn:[I

.field j3:I

.field lg:I

.field rN:I

.field tp:[I

.field u7:[I

.field v5:I

.field we:[[I

.field private final yS:Labcd/Ky;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0xf

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/16 v0, 0x11

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v7, v0, v6

    aput v4, v0, v7

    const/4 v1, 0x4

    aput v5, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x7f

    aput v1, v0, v4

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

    aput v1, v0, v5

    const/16 v1, 0x10

    const v2, 0xffff

    aput v2, v0, v1

    sput-object v0, Labcd/Iy;->j6:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v1, v0, v3

    const/16 v1, 0x12

    aput v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v1, v0, v4

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v7, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aput v2, v0, v1

    aput v6, v0, v5

    const/16 v1, 0x10

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v5, v0, v1

    sput-object v0, Labcd/Iy;->DW:[I

    return-void
.end method

.method constructor <init>(Labcd/Oy;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Iy;->gn:[I

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Iy;->u7:[I

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Iy;->tp:[I

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Iy;->EQ:[I

    new-array v2, v0, [[I

    iput-object v2, p0, Labcd/Iy;->we:[[I

    new-array v2, v0, [[I

    iput-object v2, p0, Labcd/Iy;->J0:[[I

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Iy;->J8:[I

    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Iy;->Ws:[I

    new-instance v2, Labcd/Ky;

    invoke-direct {v2}, Labcd/Ky;-><init>()V

    iput-object v2, p0, Labcd/Iy;->yS:Labcd/Ky;

    iput-object p1, p0, Labcd/Iy;->gW:Labcd/Oy;

    new-instance v2, Labcd/Jy;

    invoke-direct {v2, p1, p0}, Labcd/Jy;-><init>(Labcd/Oy;Labcd/Iy;)V

    iput-object v2, p0, Labcd/Iy;->QX:Labcd/Jy;

    const/16 v2, 0x10e0

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Iy;->Mr:[I

    new-array v2, p2, [B

    iput-object v2, p0, Labcd/Iy;->U2:[B

    iput p2, p0, Labcd/Iy;->a8:I

    iget-object v2, p1, Labcd/Oy;->EQ:Labcd/Ly;

    iget v2, v2, Labcd/Ly;->VH:I

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Labcd/Iy;->er:Z

    iput v1, p0, Labcd/Iy;->FH:I

    invoke-virtual {p0}, Labcd/Iy;->DW()V

    return-void
.end method


# virtual methods
.method DW(I)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget v4, v2, Labcd/Oy;->DW:I

    iget v5, v2, Labcd/Oy;->FH:I

    move-object/from16 v0, p0

    iget v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iget v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v3, v2, :cond_0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move v9, v2

    move v12, v3

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Labcd/Iy;->FH:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v8, :pswitch_data_0

    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    :goto_2
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->a8:I

    sub-int/2addr v2, v3

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto :goto_2

    :pswitch_1
    move v14, v4

    move v13, v5

    move v15, v6

    move/from16 v16, v7

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->v5:I

    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->Zo:I

    and-int/lit8 v4, v2, 0x1f

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v5, v2, 0x1f

    add-int/lit16 v2, v4, 0x102

    add-int/2addr v2, v5

    if-lt v3, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->u7:[I

    const/4 v3, 0x0

    const/4 v6, -0x1

    aput v6, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Iy;->tp:[I

    const/4 v2, 0x0

    const/16 v3, 0x9

    aput v3, v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Iy;->EQ:[I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->yS:Labcd/Ky;

    add-int/lit16 v3, v4, 0x101

    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->VH:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/Iy;->J8:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/Iy;->Ws:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Labcd/Iy;->Mr:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-virtual/range {v2 .. v11}, Labcd/Ky;->j6(II[I[I[I[I[I[ILabcd/Oy;)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Labcd/Iy;->VH:[I

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iput v3, v0, Labcd/Iy;->FH:I

    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Labcd/Iy;->j3:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v13, v3, Labcd/Oy;->FH:I

    iget-wide v4, v3, Labcd/Oy;->Hw:J

    iget v6, v3, Labcd/Oy;->DW:I

    sub-int v6, v14, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Labcd/Oy;->Hw:J

    iput v14, v3, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_2
    if-eqz v13, :cond_1f

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v14

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    or-int/2addr v6, v2

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v14, v14, 0x1

    const/16 p1, 0x0

    :goto_4
    const/16 v2, 0xe

    if-lt v7, v2, :cond_2

    and-int/lit16 v2, v6, 0x3fff

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->v5:I

    and-int/lit8 v4, v2, 0x1f

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_3

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    const/16 v5, 0x1d

    if-le v2, v5, :cond_4

    :cond_3
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v3, "too many length or distance symbols"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    iput v13, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v14, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v14, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_4
    add-int/lit16 v4, v4, 0x102

    add-int/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->VH:[I

    if-eqz v2, :cond_5

    array-length v2, v2

    if-ge v2, v4, :cond_8

    :cond_5
    new-array v2, v4, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Labcd/Iy;->VH:[I

    :cond_6
    ushr-int/lit8 v15, v6, 0xe

    add-int/lit8 v16, v7, -0xe

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->Zo:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move-object v8, v3

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->Zo:I

    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->v5:I

    ushr-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x4

    if-lt v2, v3, :cond_1d

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->Zo:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Iy;->gn:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput v3, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->yS:Labcd/Ky;

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->VH:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->u7:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Iy;->Mr:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-virtual/range {v2 .. v7}, Labcd/Ky;->j6([I[I[I[ILabcd/Oy;)I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, -0x3

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iput-object v8, v0, Labcd/Iy;->VH:[I

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iput v3, v0, Labcd/Iy;->FH:I

    :cond_7
    move-object/from16 v0, p0

    iput v15, v0, Labcd/Iy;->j3:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v13, v3, Labcd/Oy;->FH:I

    iget-wide v4, v3, Labcd/Oy;->Hw:J

    iget v6, v3, Labcd/Oy;->DW:I

    sub-int v6, v14, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Labcd/Oy;->Hw:J

    iput v14, v3, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->VH:[I

    const/4 v8, 0x0

    aput v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->Zo:I

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->QX:Labcd/Jy;

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->tp:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Iy;->EQ:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->Mr:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Iy;->J8:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Iy;->Ws:[I

    const/4 v8, 0x0

    aget v8, v7, v8

    move-object v7, v5

    invoke-virtual/range {v2 .. v8}, Labcd/Jy;->j6(II[II[II)V

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move v5, v13

    move v4, v14

    move v6, v15

    move/from16 v7, v16

    :pswitch_2
    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->QX:Labcd/Jy;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Labcd/Jy;->j6(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->QX:Labcd/Jy;

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-virtual {v2, v3}, Labcd/Jy;->j6(Labcd/Oy;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget v4, v2, Labcd/Oy;->DW:I

    iget v5, v2, Labcd/Oy;->FH:I

    move-object/from16 v0, p0

    iget v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iget v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->lg:I

    if-ge v12, v2, :cond_c

    sub-int/2addr v2, v12

    add-int/lit8 v2, v2, -0x1

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->XL:I

    if-nez v3, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Labcd/Iy;->FH:I

    :goto_9
    const/16 p1, 0x0

    move v3, v12

    :goto_a
    move v9, v2

    move v12, v3

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->a8:I

    sub-int/2addr v2, v12

    goto :goto_8

    :cond_d
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    const/16 p1, 0x0

    :pswitch_3
    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    invoke-virtual/range {p0 .. p1}, Labcd/Iy;->j6(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->lg:I

    if-eq v3, v12, :cond_e

    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    iget v5, v3, Labcd/Oy;->DW:I

    sub-int v5, v4, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iput v4, v3, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_e
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    :pswitch_4
    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gn:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move/from16 v2, p1

    move v3, v14

    move v4, v13

    :goto_b
    move/from16 v0, v16

    if-lt v0, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Iy;->u7:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Iy;->Mr:[I

    sget-object v8, Labcd/Iy;->j6:[I

    aget v5, v8, v5

    and-int/2addr v5, v15

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v11, v7, v5

    aget v5, v8, v11

    and-int/2addr v5, v15

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v13, v7, v5

    const/16 v5, 0x10

    if-ge v13, v5, :cond_10

    ushr-int v5, v15, v11

    sub-int v6, v16, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Iy;->VH:[I

    move-object/from16 v0, p0

    iget v8, v0, Labcd/Iy;->Zo:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Labcd/Iy;->Zo:I

    aput v13, v7, v8

    move v10, v6

    :goto_c
    move/from16 p1, v2

    move v14, v3

    move v13, v4

    move v15, v5

    move/from16 v16, v10

    goto/16 :goto_3

    :cond_10
    const/16 v5, 0x12

    if-ne v13, v5, :cond_12

    const/4 v5, 0x7

    move v10, v5

    :goto_d
    const/16 v5, 0x12

    if-ne v13, v5, :cond_13

    const/16 v5, 0xb

    move v6, v2

    move v7, v3

    move v8, v4

    :goto_e
    add-int v2, v11, v10

    move/from16 v0, v16

    if-lt v0, v2, :cond_17

    ushr-int v3, v15, v11

    sget-object v2, Labcd/Iy;->j6:[I

    aget v2, v2, v10

    and-int/2addr v2, v3

    add-int/2addr v2, v5

    ushr-int v9, v3, v10

    sub-int v3, v16, v11

    sub-int v10, v3, v10

    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->Zo:I

    move-object/from16 v0, p0

    iget v4, v0, Labcd/Iy;->v5:I

    add-int v5, v3, v2

    and-int/lit8 v11, v4, 0x1f

    add-int/lit16 v11, v11, 0x102

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v11

    if-gt v5, v4, :cond_11

    const/16 v4, 0x10

    if-ne v13, v4, :cond_14

    const/4 v4, 0x1

    if-ge v3, v4, :cond_14

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Labcd/Iy;->VH:[I

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v3, "invalid bit length repeat"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v9, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v10, v0, Labcd/Iy;->aM:I

    iput v8, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v7, v3

    int-to-long v8, v3

    add-long/2addr v4, v8

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v7, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_12
    add-int/lit8 v5, v13, -0xe

    move v10, v5

    goto :goto_d

    :cond_13
    const/4 v5, 0x3

    move v6, v2

    move v7, v3

    move v8, v4

    goto :goto_e

    :cond_14
    const/16 v4, 0x10

    if-ne v13, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Iy;->VH:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    move v5, v4

    :goto_f
    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/Iy;->VH:[I

    add-int/lit8 v4, v3, 0x1

    aput v5, v11, v3

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iput v4, v0, Labcd/Iy;->Zo:I

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    goto/16 :goto_c

    :cond_15
    const/4 v4, 0x0

    move v5, v4

    goto :goto_f

    :cond_16
    move v3, v4

    goto :goto_f

    :cond_17
    if-eqz v8, :cond_18

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0x8

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    move v6, v2

    move v7, v3

    move v8, v4

    goto/16 :goto_e

    :cond_18
    move-object/from16 v0, p0

    iput v15, v0, Labcd/Iy;->j3:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v8, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v7, v3

    int-to-long v8, v3

    add-long/2addr v4, v8

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v7, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_19
    if-eqz v4, :cond_1a

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0x8

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iput v15, v0, Labcd/Iy;->j3:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v4, v5, Labcd/Oy;->FH:I

    iget-wide v6, v5, Labcd/Oy;->Hw:J

    iget v4, v5, Labcd/Oy;->DW:I

    sub-int v4, v3, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v5, Labcd/Oy;->Hw:J

    iput v3, v5, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->VH:[I

    sget-object v4, Labcd/Iy;->DW:[I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Labcd/Iy;->Zo:I

    aget v2, v4, v2

    const/4 v4, 0x0

    aput v4, v3, v2

    goto/16 :goto_6

    :cond_1c
    if-eqz v13, :cond_1e

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v14

    and-int/lit16 v2, v2, 0xff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0x8

    add-int/lit8 v14, v14, 0x1

    const/16 p1, 0x0

    :cond_1d
    const/4 v2, 0x3

    move/from16 v0, v16

    if-lt v0, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->VH:[I

    sget-object v3, Labcd/Iy;->DW:[I

    move-object/from16 v0, p0

    iget v4, v0, Labcd/Iy;->Zo:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Labcd/Iy;->Zo:I

    aget v3, v3, v4

    and-int/lit8 v4, v15, 0x7

    aput v4, v2, v3

    ushr-int/lit8 v15, v15, 0x3

    add-int/lit8 v16, v16, -0x3

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iput v15, v0, Labcd/Iy;->j3:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v13, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v14, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v14, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    invoke-virtual/range {p0 .. p1}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v13, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v14, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v14, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    invoke-virtual/range {p0 .. p1}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :pswitch_5
    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    invoke-virtual/range {p0 .. p1}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_20
    if-nez v9, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->a8:I

    if-ne v12, v2, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Labcd/Iy;->lg:I

    if-eqz v3, :cond_21

    if-lez v3, :cond_22

    add-int/lit8 v2, v3, 0x0

    add-int/lit8 v2, v2, -0x1

    :goto_10
    const/4 v12, 0x0

    move v9, v2

    :cond_21
    if-nez v9, :cond_25

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    invoke-virtual/range {p0 .. p1}, Labcd/Iy;->j6(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    iget v8, v0, Labcd/Iy;->lg:I

    if-ge v12, v8, :cond_23

    sub-int v2, v8, v12

    add-int/lit8 v2, v2, -0x1

    :goto_11
    move-object/from16 v0, p0

    iget v9, v0, Labcd/Iy;->a8:I

    if-ne v12, v9, :cond_35

    if-eqz v8, :cond_35

    if-lez v8, :cond_24

    add-int/lit8 v2, v8, 0x0

    add-int/lit8 v2, v2, -0x1

    :goto_12
    const/4 v12, 0x0

    move v9, v2

    :goto_13
    if-nez v9, :cond_25

    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v5, v2, Labcd/Oy;->DW:I

    sub-int v5, v4, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_22
    add-int/lit8 v2, v2, 0x0

    goto :goto_10

    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->a8:I

    sub-int/2addr v2, v12

    goto :goto_11

    :cond_24
    add-int/lit8 v2, v9, 0x0

    goto :goto_12

    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->Hw:I

    if-le v2, v5, :cond_26

    move v2, v5

    :cond_26
    if-le v2, v9, :cond_27

    move v2, v9

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->j6:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/Iy;->U2:[B

    invoke-static {v3, v4, v8, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    sub-int/2addr v5, v2

    add-int/2addr v12, v2

    sub-int v3, v9, v2

    move-object/from16 v0, p0

    iget v8, v0, Labcd/Iy;->Hw:I

    sub-int v2, v8, v2

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->Hw:I

    if-eqz v2, :cond_28

    move v2, v3

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->XL:I

    if-eqz v2, :cond_29

    const/4 v2, 0x7

    :goto_14
    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move v2, v3

    goto/16 :goto_9

    :cond_29
    const/4 v2, 0x0

    goto :goto_14

    :cond_2a
    if-eqz v5, :cond_2e

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    or-int/2addr v6, v2

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    :goto_15
    const/16 v2, 0x20

    if-lt v7, v2, :cond_2a

    const v2, 0xffff

    and-int/2addr v2, v6

    const v8, 0xffff

    xor-int/lit8 v10, v6, -0x1

    ushr-int/lit8 v10, v10, 0x10

    and-int/2addr v8, v10

    if-eq v8, v2, :cond_2b

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v3, "invalid stored block lengths"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->Hw:I

    if-eqz v2, :cond_2c

    const/4 v2, 0x2

    :goto_16
    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v8, v3

    move v7, v2

    :goto_17
    move v2, v9

    move v3, v12

    move/from16 p1, v8

    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Labcd/Iy;->XL:I

    if-eqz v2, :cond_2d

    const/4 v2, 0x7

    goto :goto_16

    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    :cond_2e
    move-object/from16 v0, p0

    iput v6, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v7, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v5, v2, Labcd/Oy;->FH:I

    iget-wide v6, v2, Labcd/Oy;->Hw:J

    iget v5, v2, Labcd/Oy;->DW:I

    sub-int v5, v4, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/Oy;->Hw:J

    iput v4, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_2f
    if-eqz v13, :cond_34

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->j6:[B

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v14

    or-int/2addr v15, v2

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    :goto_18
    const/4 v2, 0x3

    if-lt v14, v2, :cond_2f

    and-int/lit8 v2, v15, 0x7

    and-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Labcd/Iy;->XL:I

    ushr-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_33

    const/4 v3, 0x1

    if-eq v2, v3, :cond_32

    const/4 v3, 0x2

    if-eq v2, v3, :cond_31

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    move v8, v10

    move v4, v11

    move v5, v13

    move v7, v14

    move v6, v15

    goto :goto_17

    :cond_30
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v3, "invalid block type"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    ushr-int/lit8 v3, v15, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Labcd/Iy;->j3:I

    add-int/lit8 v3, v14, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Labcd/Iy;->aM:I

    iput v13, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v11, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v11, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_31
    ushr-int/lit8 v3, v15, 0x3

    add-int/lit8 v2, v14, -0x3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Labcd/Iy;->FH:I

    move v8, v10

    move v4, v11

    move v5, v13

    move v7, v2

    move v6, v3

    goto/16 :goto_17

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->tp:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->EQ:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Iy;->we:[[I

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->J0:[[I

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-static {v2, v3, v4, v5, v6}, Labcd/Ky;->j6([I[I[[I[[ILabcd/Oy;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->QX:Labcd/Jy;

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Iy;->tp:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Iy;->EQ:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Iy;->we:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Iy;->J0:[[I

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Labcd/Jy;->j6(II[II[II)V

    ushr-int/lit8 v3, v15, 0x3

    add-int/lit8 v2, v14, -0x3

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Labcd/Iy;->FH:I

    move v8, v10

    move v4, v11

    move v5, v13

    move v7, v2

    move v6, v3

    goto/16 :goto_17

    :cond_33
    add-int/lit8 v2, v14, -0x3

    and-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v4, v15, 0x3

    ushr-int v6, v4, v3

    sub-int v7, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Labcd/Iy;->FH:I

    move v2, v9

    move v3, v12

    move/from16 p1, v10

    move v4, v11

    move v5, v13

    goto/16 :goto_a

    :cond_34
    move-object/from16 v0, p0

    iput v15, v0, Labcd/Iy;->j3:I

    move-object/from16 v0, p0

    iput v14, v0, Labcd/Iy;->aM:I

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v13, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    iget v3, v2, Labcd/Oy;->DW:I

    sub-int v3, v11, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iput v11, v2, Labcd/Oy;->DW:I

    move-object/from16 v0, p0

    iput v12, v0, Labcd/Iy;->rN:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Labcd/Iy;->j6(I)I

    move-result v2

    goto/16 :goto_2

    :cond_35
    move v9, v2

    goto/16 :goto_13

    :pswitch_6
    move-object v8, v2

    move v14, v4

    move v13, v5

    move/from16 v16, v7

    move v15, v6

    goto/16 :goto_5

    :pswitch_7
    move v15, v6

    move v14, v7

    move v11, v4

    move v13, v5

    move/from16 v10, p1

    goto/16 :goto_18

    :pswitch_8
    move/from16 v3, p1

    goto/16 :goto_15

    :pswitch_9
    move v14, v4

    move v13, v5

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method DW()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Labcd/Iy;->FH:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/Iy;->QX:Labcd/Jy;

    iget-object v1, p0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-virtual {v0, v1}, Labcd/Jy;->j6(Labcd/Oy;)V

    :cond_0
    iput v2, p0, Labcd/Iy;->FH:I

    iput v2, p0, Labcd/Iy;->aM:I

    iput v2, p0, Labcd/Iy;->j3:I

    iput v2, p0, Labcd/Iy;->rN:I

    iput v2, p0, Labcd/Iy;->lg:I

    iget-boolean v0, p0, Labcd/Iy;->er:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->J0:Labcd/Fy;

    invoke-interface {v0}, Labcd/Fy;->reset()V

    :cond_1
    return-void
.end method

.method j6(I)I
    .locals 11

    const/4 v10, -0x5

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v3, v0, Labcd/Oy;->Zo:I

    iget v4, p0, Labcd/Iy;->lg:I

    iget v0, p0, Labcd/Iy;->rN:I

    if-gt v4, v0, :cond_6

    :goto_0
    sub-int v2, v0, v4

    iget-object v0, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v0, v0, Labcd/Oy;->VH:I

    if-le v2, v0, :cond_0

    move v2, v0

    :cond_0
    if-eqz v2, :cond_1

    if-ne p1, v10, :cond_1

    move p1, v1

    :cond_1
    iget-object v0, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v5, v0, Labcd/Oy;->VH:I

    sub-int/2addr v5, v2

    iput v5, v0, Labcd/Oy;->VH:I

    iget-wide v6, v0, Labcd/Oy;->gn:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v0, Labcd/Oy;->gn:J

    iget-boolean v5, p0, Labcd/Iy;->er:Z

    if-eqz v5, :cond_2

    if-lez v2, :cond_2

    iget-object v0, v0, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v5, p0, Labcd/Iy;->U2:[B

    invoke-interface {v0, v5, v4, v2}, Labcd/Fy;->update([BII)V

    :cond_2
    iget-object v0, p0, Labcd/Iy;->U2:[B

    iget-object v5, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v5, v5, Labcd/Oy;->v5:[B

    invoke-static {v0, v4, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v3, v2

    add-int/2addr v2, v4

    iget v3, p0, Labcd/Iy;->a8:I

    if-ne v2, v3, :cond_8

    iget v2, p0, Labcd/Iy;->rN:I

    if-ne v2, v3, :cond_3

    iput v1, p0, Labcd/Iy;->rN:I

    :cond_3
    iget v2, p0, Labcd/Iy;->rN:I

    add-int/lit8 v3, v2, 0x0

    iget-object v2, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v2, v2, Labcd/Oy;->VH:I

    if-le v3, v2, :cond_7

    :goto_1
    if-eqz v2, :cond_4

    if-ne p1, v10, :cond_4

    move p1, v1

    :cond_4
    iget-object v3, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v4, v3, Labcd/Oy;->VH:I

    sub-int/2addr v4, v2

    iput v4, v3, Labcd/Oy;->VH:I

    iget-wide v4, v3, Labcd/Oy;->gn:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Labcd/Oy;->gn:J

    iget-boolean v4, p0, Labcd/Iy;->er:Z

    if-eqz v4, :cond_5

    if-lez v2, :cond_5

    iget-object v3, v3, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v4, p0, Labcd/Iy;->U2:[B

    invoke-interface {v3, v4, v1, v2}, Labcd/Fy;->update([BII)V

    :cond_5
    iget-object v3, p0, Labcd/Iy;->U2:[B

    iget-object v4, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v4, v4, Labcd/Oy;->v5:[B

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    add-int/lit8 v1, v2, 0x0

    :goto_2
    iget-object v2, p0, Labcd/Iy;->gW:Labcd/Oy;

    iput v0, v2, Labcd/Oy;->Zo:I

    iput v1, p0, Labcd/Iy;->lg:I

    return p1

    :cond_6
    iget v0, p0, Labcd/Iy;->a8:I

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method j6()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/Iy;->DW()V

    iput-object v0, p0, Labcd/Iy;->U2:[B

    iput-object v0, p0, Labcd/Iy;->Mr:[I

    return-void
.end method
