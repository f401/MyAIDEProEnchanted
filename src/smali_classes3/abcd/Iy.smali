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
    .registers 19

    const/16 v0, 0x11

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v1, v3

    const/4 v5, 0x7

    aput v5, v1, v4

    const/4 v6, 0x4

    const/16 v7, 0xf

    aput v7, v1, v6

    const/16 v8, 0x1f

    const/4 v9, 0x5

    aput v8, v1, v9

    const/16 v8, 0x3f

    const/4 v10, 0x6

    aput v8, v1, v10

    const/16 v8, 0x7f

    aput v8, v1, v5

    const/16 v8, 0xff

    const/16 v11, 0x8

    aput v8, v1, v11

    const/16 v8, 0x1ff

    const/16 v12, 0x9

    aput v8, v1, v12

    const/16 v8, 0x3ff

    const/16 v13, 0xa

    aput v8, v1, v13

    const/16 v8, 0x7ff

    const/16 v14, 0xb

    aput v8, v1, v14

    const/16 v8, 0xfff

    const/16 v15, 0xc

    aput v8, v1, v15

    const/16 v8, 0x1fff

    const/16 v16, 0xd

    aput v8, v1, v16

    const/16 v8, 0x3fff

    const/16 v17, 0xe

    aput v8, v1, v17

    const/16 v8, 0x7fff

    aput v8, v1, v7

    const v8, 0xffff

    const/16 v18, 0x10

    aput v8, v1, v18

    sput-object v1, Labcd/Iy;->j6:[I

    const/16 v1, 0x13

    new-array v1, v1, [I

    const/4 v8, 0x0

    aput v18, v1, v8

    aput v0, v1, v2

    const/16 v8, 0x12

    aput v8, v1, v3

    aput v11, v1, v6

    aput v5, v1, v9

    aput v12, v1, v10

    aput v10, v1, v5

    aput v13, v1, v11

    aput v9, v1, v12

    aput v14, v1, v13

    aput v6, v1, v14

    aput v15, v1, v15

    aput v4, v1, v16

    aput v16, v1, v17

    aput v3, v1, v7

    aput v17, v1, v18

    aput v2, v1, v0

    aput v7, v1, v8

    sput-object v1, Labcd/Iy;->DW:[I

    return-void
.end method

.method constructor <init>(Labcd/Oy;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Iy;->gn:[I

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Iy;->u7:[I

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Iy;->tp:[I

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Iy;->EQ:[I

    new-array v1, v0, [[I

    iput-object v1, p0, Labcd/Iy;->we:[[I

    new-array v1, v0, [[I

    iput-object v1, p0, Labcd/Iy;->J0:[[I

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Iy;->J8:[I

    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Iy;->Ws:[I

    new-instance v1, Labcd/Ky;

    invoke-direct {v1}, Labcd/Ky;-><init>()V

    iput-object v1, p0, Labcd/Iy;->yS:Labcd/Ky;

    iput-object p1, p0, Labcd/Iy;->gW:Labcd/Oy;

    new-instance v1, Labcd/Jy;

    invoke-direct {v1, p1, p0}, Labcd/Jy;-><init>(Labcd/Oy;Labcd/Iy;)V

    iput-object v1, p0, Labcd/Iy;->QX:Labcd/Jy;

    const/16 v1, 0x10e0

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Iy;->Mr:[I

    new-array v1, p2, [B

    iput-object v1, p0, Labcd/Iy;->U2:[B

    iput p2, p0, Labcd/Iy;->a8:I

    iget-object p1, p1, Labcd/Oy;->EQ:Labcd/Ly;

    iget p1, p1, Labcd/Ly;->VH:I

    const/4 p2, 0x0

    if-nez p1, :cond_48

    const/4 v0, 0x0

    :cond_48
    iput-boolean v0, p0, Labcd/Iy;->er:Z

    iput p2, p0, Labcd/Iy;->FH:I

    invoke-virtual {p0}, Labcd/Iy;->DW()V

    return-void
.end method


# virtual methods
.method DW(I)I
    .registers 36

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget v2, v1, Labcd/Oy;->DW:I

    iget v1, v1, Labcd/Oy;->FH:I

    iget v3, v0, Labcd/Iy;->j3:I

    iget v4, v0, Labcd/Iy;->aM:I

    iget v5, v0, Labcd/Iy;->rN:I

    iget v6, v0, Labcd/Iy;->lg:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_16

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    goto :goto_19

    :cond_16
    iget v6, v0, Labcd/Iy;->a8:I

    sub-int/2addr v6, v5

    :goto_19
    move v8, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, p1

    :goto_21
    iget v9, v0, Labcd/Iy;->FH:I

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v14, 0x9

    const/4 v12, 0x7

    const/4 v7, -0x3

    const/4 v13, 0x0

    packed-switch v9, :pswitch_data_5ce

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :pswitch_49  #0x9
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v8, v2

    add-long/2addr v4, v8

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :pswitch_64  #0x5
    const/4 v8, 0x5

    goto/16 :goto_f5

    :goto_67
    :pswitch_67  #0x3
    const/16 v8, 0xe

    if-lt v5, v8, :cond_3be

    and-int/lit16 v8, v4, 0x3fff

    iput v8, v0, Labcd/Iy;->v5:I

    and-int/lit8 v9, v8, 0x1f

    const/16 v15, 0x1d

    if-gt v9, v15, :cond_39a

    shr-int/lit8 v8, v8, 0x5

    and-int/lit8 v8, v8, 0x1f

    if-le v8, v15, :cond_7d

    goto/16 :goto_39a

    :cond_7d
    add-int/lit16 v9, v9, 0x102

    add-int/2addr v9, v8

    iget-object v8, v0, Labcd/Iy;->VH:[I

    if-eqz v8, :cond_93

    array-length v8, v8

    if-ge v8, v9, :cond_88

    goto :goto_93

    :cond_88
    const/4 v8, 0x0

    :goto_89
    if-lt v8, v9, :cond_8c

    goto :goto_97

    :cond_8c
    iget-object v15, v0, Labcd/Iy;->VH:[I

    aput v13, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    :cond_93
    :goto_93
    new-array v8, v9, [I

    iput-object v8, v0, Labcd/Iy;->VH:[I

    :goto_97
    ushr-int/lit8 v4, v4, 0xe

    add-int/lit8 v5, v5, -0xe

    iput v13, v0, Labcd/Iy;->Zo:I

    iput v10, v0, Labcd/Iy;->FH:I

    :goto_9f
    :pswitch_9f  #0x4
    iget v8, v0, Labcd/Iy;->Zo:I

    iget v9, v0, Labcd/Iy;->v5:I

    ushr-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v10

    if-lt v8, v9, :cond_349

    :goto_a8
    iget v8, v0, Labcd/Iy;->Zo:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_331

    iget-object v8, v0, Labcd/Iy;->gn:[I

    aput v12, v8, v13

    iget-object v9, v0, Labcd/Iy;->yS:Labcd/Ky;

    iget-object v10, v0, Labcd/Iy;->VH:[I

    iget-object v15, v0, Labcd/Iy;->u7:[I

    iget-object v12, v0, Labcd/Iy;->Mr:[I

    iget-object v13, v0, Labcd/Iy;->gW:Labcd/Oy;

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v8

    move-object/from16 v21, v15

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-virtual/range {v18 .. v23}, Labcd/Ky;->j6([I[I[I[ILabcd/Oy;)I

    move-result v8

    if-eqz v8, :cond_ef

    if-ne v8, v7, :cond_d4

    iput-object v11, v0, Labcd/Iy;->VH:[I

    iput v14, v0, Labcd/Iy;->FH:I

    :cond_d4
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v4, v9

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v8}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_ef
    const/4 v8, 0x0

    iput v8, v0, Labcd/Iy;->Zo:I

    const/4 v8, 0x5

    iput v8, v0, Labcd/Iy;->FH:I

    :goto_f5
    iget v9, v0, Labcd/Iy;->v5:I

    iget v10, v0, Labcd/Iy;->Zo:I

    and-int/lit8 v12, v9, 0x1f

    add-int/lit16 v13, v12, 0x102

    shr-int/2addr v9, v8

    and-int/lit8 v8, v9, 0x1f

    add-int/2addr v13, v8

    const/4 v9, -0x1

    if-lt v10, v13, :cond_21b

    iget-object v10, v0, Labcd/Iy;->u7:[I

    const/4 v13, 0x0

    aput v9, v10, v13

    iget-object v9, v0, Labcd/Iy;->tp:[I

    aput v14, v9, v13

    iget-object v10, v0, Labcd/Iy;->EQ:[I

    const/4 v15, 0x6

    aput v15, v10, v13

    iget-object v13, v0, Labcd/Iy;->yS:Labcd/Ky;

    add-int/lit16 v12, v12, 0x101

    add-int/lit8 v26, v8, 0x1

    iget-object v8, v0, Labcd/Iy;->VH:[I

    iget-object v15, v0, Labcd/Iy;->J8:[I

    iget-object v14, v0, Labcd/Iy;->Ws:[I

    iget-object v11, v0, Labcd/Iy;->Mr:[I

    iget-object v7, v0, Labcd/Iy;->gW:Labcd/Oy;

    move-object/from16 v24, v13

    move/from16 v25, v12

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    move-object/from16 v31, v14

    move-object/from16 v32, v11

    move-object/from16 v33, v7

    invoke-virtual/range {v24 .. v33}, Labcd/Ky;->j6(II[I[I[I[I[I[ILabcd/Oy;)I

    move-result v7

    if-eqz v7, :cond_15f

    const/4 v8, -0x3

    if-ne v7, v8, :cond_144

    const/4 v1, 0x0

    iput-object v1, v0, Labcd/Iy;->VH:[I

    const/16 v1, 0x9

    iput v1, v0, Labcd/Iy;->FH:I

    :cond_144
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v8, v2

    add-long/2addr v4, v8

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_15f
    iget-object v7, v0, Labcd/Iy;->QX:Labcd/Jy;

    iget-object v8, v0, Labcd/Iy;->tp:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v10, v0, Labcd/Iy;->EQ:[I

    aget v10, v10, v9

    iget-object v12, v0, Labcd/Iy;->Mr:[I

    iget-object v11, v0, Labcd/Iy;->J8:[I

    aget v11, v11, v9

    iget-object v13, v0, Labcd/Iy;->Ws:[I

    aget v13, v13, v9

    move v9, v10

    move-object v10, v12

    invoke-virtual/range {v7 .. v13}, Labcd/Jy;->j6(II[II[II)V

    const/4 v7, 0x6

    iput v7, v0, Labcd/Iy;->FH:I

    :pswitch_17c  #0x6
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    iget-object v2, v0, Labcd/Iy;->QX:Labcd/Jy;

    invoke-virtual {v2, v1}, Labcd/Jy;->j6(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a0

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_1a0
    iget-object v1, v0, Labcd/Iy;->QX:Labcd/Jy;

    iget-object v2, v0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-virtual {v1, v2}, Labcd/Jy;->j6(Labcd/Oy;)V

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget v2, v1, Labcd/Oy;->DW:I

    iget v1, v1, Labcd/Oy;->FH:I

    iget v3, v0, Labcd/Iy;->j3:I

    iget v4, v0, Labcd/Iy;->aM:I

    iget v6, v0, Labcd/Iy;->rN:I

    iget v5, v0, Labcd/Iy;->lg:I

    if-ge v6, v5, :cond_1bb

    sub-int/2addr v5, v6

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    goto :goto_1be

    :cond_1bb
    iget v5, v0, Labcd/Iy;->a8:I

    sub-int/2addr v5, v6

    :goto_1be
    iget v7, v0, Labcd/Iy;->XL:I

    if-nez v7, :cond_1cc

    const/4 v7, 0x0

    iput v7, v0, Labcd/Iy;->FH:I

    move v8, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_496

    :cond_1cc
    const/4 v7, 0x7

    iput v7, v0, Labcd/Iy;->FH:I

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    :pswitch_1d4  #0x7
    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    iget v6, v0, Labcd/Iy;->rN:I

    iget v7, v0, Labcd/Iy;->lg:I

    if-eq v7, v6, :cond_1fb

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_1fb
    const/16 v1, 0x8

    iput v1, v0, Labcd/Iy;->FH:I

    :pswitch_1ff  #0x8
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_21b
    const/4 v7, 0x7

    iget-object v8, v0, Labcd/Iy;->gn:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    :goto_221
    if-lt v5, v8, :cond_2fe

    iget-object v11, v0, Labcd/Iy;->u7:[I

    aget v11, v11, v10

    iget-object v10, v0, Labcd/Iy;->Mr:[I

    sget-object v12, Labcd/Iy;->j6:[I

    aget v8, v12, v8

    and-int/2addr v8, v4

    add-int/2addr v8, v11

    const/4 v13, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v14, 0x1

    add-int/2addr v8, v14

    aget v8, v10, v8

    aget v12, v12, v8

    and-int/2addr v12, v4

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x3

    const/4 v12, 0x2

    add-int/2addr v11, v12

    aget v10, v10, v11

    const/16 v11, 0x10

    if-ge v10, v11, :cond_252

    ushr-int/2addr v4, v8

    sub-int/2addr v5, v8

    iget-object v8, v0, Labcd/Iy;->VH:[I

    iget v9, v0, Labcd/Iy;->Zo:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Labcd/Iy;->Zo:I

    aput v10, v8, v9

    const/4 v15, 0x5

    goto :goto_29c

    :cond_252
    const/16 v11, 0x12

    if-ne v10, v11, :cond_258

    const/4 v12, 0x7

    goto :goto_25a

    :cond_258
    add-int/lit8 v12, v10, -0xe

    :goto_25a
    if-ne v10, v11, :cond_25f

    const/16 v11, 0xb

    goto :goto_260

    :cond_25f
    const/4 v11, 0x3

    :goto_260
    add-int v13, v8, v12

    if-lt v5, v13, :cond_2cc

    ushr-int/2addr v4, v8

    sget-object v13, Labcd/Iy;->j6:[I

    aget v13, v13, v12

    and-int/2addr v13, v4

    add-int/2addr v11, v13

    ushr-int/2addr v4, v12

    sub-int/2addr v5, v8

    sub-int/2addr v5, v12

    iget v8, v0, Labcd/Iy;->Zo:I

    iget v12, v0, Labcd/Iy;->v5:I

    add-int v13, v8, v11

    and-int/lit8 v14, v12, 0x1f

    add-int/lit16 v14, v14, 0x102

    const/4 v15, 0x5

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0x1f

    add-int/2addr v14, v12

    if-gt v13, v14, :cond_2a5

    const/16 v12, 0x10

    if-ne v10, v12, :cond_287

    const/4 v13, 0x1

    if-ge v8, v13, :cond_287

    goto :goto_2a5

    :cond_287
    if-ne v10, v12, :cond_290

    iget-object v10, v0, Labcd/Iy;->VH:[I

    add-int/lit8 v12, v8, -0x1

    aget v10, v10, v12

    goto :goto_291

    :cond_290
    const/4 v10, 0x0

    :goto_291
    iget-object v12, v0, Labcd/Iy;->VH:[I

    add-int/lit8 v13, v8, 0x1

    aput v10, v12, v8

    add-int/2addr v11, v9

    if-nez v11, :cond_2a3

    iput v13, v0, Labcd/Iy;->Zo:I

    :goto_29c
    const/4 v7, -0x3

    const/4 v8, 0x5

    const/4 v11, 0x0

    const/16 v14, 0x9

    goto/16 :goto_f5

    :cond_2a3
    move v8, v13

    goto :goto_291

    :cond_2a5
    :goto_2a5
    const/4 v13, 0x0

    iput-object v13, v0, Labcd/Iy;->VH:[I

    const/16 v1, 0x9

    iput v1, v0, Labcd/Iy;->FH:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v7, "invalid bit length repeat"

    iput-object v7, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_2cc
    const/4 v13, 0x0

    const/4 v15, 0x5

    if-eqz v2, :cond_2e3

    add-int/lit8 v2, v2, -0x1

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->j6:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto/16 :goto_260

    :cond_2e3
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_2fe
    const/4 v13, 0x0

    const/4 v15, 0x5

    if-eqz v2, :cond_316

    add-int/lit8 v2, v2, -0x1

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->j6:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto/16 :goto_221

    :cond_316
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_331
    move-object v13, v11

    const/4 v7, 0x7

    const/4 v15, 0x5

    iget-object v9, v0, Labcd/Iy;->VH:[I

    sget-object v10, Labcd/Iy;->DW:[I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Labcd/Iy;->Zo:I

    aget v8, v10, v8

    const/4 v10, 0x0

    aput v10, v9, v8

    move-object v11, v13

    const/4 v7, -0x3

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/16 v14, 0x9

    goto/16 :goto_a8

    :cond_349
    move-object v13, v11

    const/4 v7, 0x7

    const/4 v15, 0x5

    :goto_34c
    const/4 v8, 0x3

    if-lt v5, v8, :cond_36b

    iget-object v8, v0, Labcd/Iy;->VH:[I

    sget-object v9, Labcd/Iy;->DW:[I

    iget v11, v0, Labcd/Iy;->Zo:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Labcd/Iy;->Zo:I

    aget v9, v9, v11

    and-int/lit8 v11, v4, 0x7

    aput v11, v8, v9

    ushr-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v5, -0x3

    move-object v11, v13

    const/4 v7, -0x3

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/16 v14, 0x9

    goto/16 :goto_9f

    :cond_36b
    if-eqz v2, :cond_37f

    add-int/lit8 v2, v2, -0x1

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->j6:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_34c

    :cond_37f
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_39a
    :goto_39a
    const/16 v1, 0x9

    iput v1, v0, Labcd/Iy;->FH:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v7, "too many length or distance symbols"

    iput-object v7, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_3be
    move-object v13, v11

    const/4 v7, 0x7

    const/4 v15, 0x5

    if-eqz v2, :cond_3dc

    add-int/lit8 v2, v2, -0x1

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->j6:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    move-object v11, v13

    const/4 v1, 0x0

    const/4 v7, -0x3

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/16 v14, 0x9

    goto/16 :goto_67

    :cond_3dc
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :pswitch_3f7  #0x2
    const/4 v7, 0x7

    if-nez v2, :cond_415

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_415
    if-nez v8, :cond_470

    iget v9, v0, Labcd/Iy;->a8:I

    if-ne v6, v9, :cond_42b

    iget v10, v0, Labcd/Iy;->lg:I

    if-eqz v10, :cond_42b

    if-lez v10, :cond_427

    add-int/lit8 v10, v10, 0x0

    const/4 v6, 0x1

    sub-int/2addr v10, v6

    move v8, v10

    goto :goto_42a

    :cond_427
    add-int/lit8 v9, v9, 0x0

    move v8, v9

    :goto_42a
    const/4 v6, 0x0

    :cond_42b
    if-nez v8, :cond_470

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    iget v6, v0, Labcd/Iy;->rN:I

    iget v8, v0, Labcd/Iy;->lg:I

    if-ge v6, v8, :cond_43e

    sub-int v9, v8, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    goto :goto_442

    :cond_43e
    const/4 v10, 0x1

    iget v9, v0, Labcd/Iy;->a8:I

    sub-int/2addr v9, v6

    :goto_442
    iget v11, v0, Labcd/Iy;->a8:I

    if-ne v6, v11, :cond_452

    if-eqz v8, :cond_452

    if-lez v8, :cond_44e

    add-int/lit8 v8, v8, 0x0

    sub-int/2addr v8, v10

    goto :goto_450

    :cond_44e
    add-int/lit8 v8, v11, 0x0

    :goto_450
    const/4 v6, 0x0

    goto :goto_453

    :cond_452
    move v8, v9

    :goto_453
    if-nez v8, :cond_470

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_470
    iget v1, v0, Labcd/Iy;->Hw:I

    if-le v1, v2, :cond_475

    move v1, v2

    :cond_475
    if-le v1, v8, :cond_478

    move v1, v8

    :cond_478
    iget-object v9, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v9, v9, Labcd/Oy;->j6:[B

    iget-object v10, v0, Labcd/Iy;->U2:[B

    invoke-static {v9, v3, v10, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    sub-int/2addr v2, v1

    add-int/2addr v6, v1

    sub-int/2addr v8, v1

    iget v9, v0, Labcd/Iy;->Hw:I

    sub-int/2addr v9, v1

    iput v9, v0, Labcd/Iy;->Hw:I

    if-eqz v9, :cond_48d

    goto :goto_496

    :cond_48d
    iget v1, v0, Labcd/Iy;->XL:I

    if-eqz v1, :cond_493

    const/4 v12, 0x7

    goto :goto_494

    :cond_493
    const/4 v12, 0x0

    :goto_494
    iput v12, v0, Labcd/Iy;->FH:I

    :goto_496
    const/4 v1, 0x0

    goto/16 :goto_593

    :pswitch_499  #0x1
    const/4 v7, 0x7

    :goto_49a
    const/16 v9, 0x20

    if-lt v5, v9, :cond_4e2

    const v9, 0xffff

    and-int v10, v4, v9

    xor-int/lit8 v11, v4, -0x1

    const/16 v12, 0x10

    ushr-int/2addr v11, v12

    and-int/2addr v9, v11

    if-eq v9, v10, :cond_4cf

    const/16 v9, 0x9

    iput v9, v0, Labcd/Iy;->FH:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v7, "invalid stored block lengths"

    iput-object v7, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_4cf
    iput v10, v0, Labcd/Iy;->Hw:I

    if-eqz v10, :cond_4d5

    const/4 v12, 0x2

    goto :goto_4dc

    :cond_4d5
    iget v4, v0, Labcd/Iy;->XL:I

    if-eqz v4, :cond_4db

    const/4 v12, 0x7

    goto :goto_4dc

    :cond_4db
    const/4 v12, 0x0

    :goto_4dc
    iput v12, v0, Labcd/Iy;->FH:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_586

    :cond_4e2
    const/16 v12, 0x10

    if-eqz v2, :cond_4f8

    add-int/lit8 v2, v2, -0x1

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->j6:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_49a

    :cond_4f8
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :goto_513
    :pswitch_513  #0x0
    const/4 v7, 0x3

    if-lt v5, v7, :cond_596

    and-int/lit8 v9, v4, 0x7

    and-int/lit8 v10, v9, 0x1

    iput v10, v0, Labcd/Iy;->XL:I

    const/4 v10, 0x1

    ushr-int/2addr v9, v10

    if-eqz v9, :cond_588

    if-eq v9, v10, :cond_556

    const/4 v10, 0x2

    if-eq v9, v10, :cond_54e

    if-eq v9, v7, :cond_528

    goto :goto_586

    :cond_528
    const/16 v9, 0x9

    iput v9, v0, Labcd/Iy;->FH:I

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    const-string v8, "invalid block type"

    iput-object v8, v1, Labcd/Oy;->u7:Ljava/lang/String;

    ushr-int/2addr v4, v7

    iput v4, v0, Labcd/Iy;->j3:I

    sub-int/2addr v5, v7

    iput v5, v0, Labcd/Iy;->aM:I

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v4, v1, Labcd/Oy;->Hw:J

    iget v2, v1, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v1, Labcd/Oy;->Hw:J

    iput v3, v1, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    const/4 v7, -0x3

    invoke-virtual {v0, v7}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :cond_54e
    ushr-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v5, -0x3

    const/4 v11, 0x3

    iput v11, v0, Labcd/Iy;->FH:I

    goto :goto_586

    :cond_556
    iget-object v7, v0, Labcd/Iy;->tp:[I

    iget-object v9, v0, Labcd/Iy;->EQ:[I

    iget-object v10, v0, Labcd/Iy;->we:[[I

    iget-object v11, v0, Labcd/Iy;->J0:[[I

    iget-object v12, v0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-static {v7, v9, v10, v11, v12}, Labcd/Ky;->j6([I[I[[I[[ILabcd/Oy;)I

    iget-object v7, v0, Labcd/Iy;->QX:Labcd/Jy;

    iget-object v9, v0, Labcd/Iy;->tp:[I

    const/4 v12, 0x0

    aget v17, v9, v12

    iget-object v9, v0, Labcd/Iy;->EQ:[I

    aget v18, v9, v12

    iget-object v9, v0, Labcd/Iy;->we:[[I

    aget-object v19, v9, v12

    const/16 v20, 0x0

    iget-object v9, v0, Labcd/Iy;->J0:[[I

    aget-object v21, v9, v12

    const/16 v22, 0x0

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v22}, Labcd/Jy;->j6(II[II[II)V

    ushr-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v5, -0x3

    const/4 v13, 0x6

    iput v13, v0, Labcd/Iy;->FH:I

    :goto_586
    const/4 v14, 0x1

    goto :goto_593

    :cond_588
    add-int/lit8 v5, v5, -0x3

    and-int/lit8 v7, v5, 0x7

    ushr-int/lit8 v4, v4, 0x3

    ushr-int/2addr v4, v7

    sub-int/2addr v5, v7

    const/4 v14, 0x1

    iput v14, v0, Labcd/Iy;->FH:I

    :goto_593
    const/4 v7, 0x1

    goto/16 :goto_21

    :cond_596
    const/4 v7, -0x3

    const/16 v9, 0x9

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x1

    if-eqz v2, :cond_5b3

    add-int/lit8 v2, v2, -0x1

    iget-object v1, v0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->j6:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto/16 :goto_513

    :cond_5b3
    iput v4, v0, Labcd/Iy;->j3:I

    iput v5, v0, Labcd/Iy;->aM:I

    iget-object v4, v0, Labcd/Iy;->gW:Labcd/Oy;

    iput v2, v4, Labcd/Oy;->FH:I

    iget-wide v7, v4, Labcd/Oy;->Hw:J

    iget v2, v4, Labcd/Oy;->DW:I

    sub-int v2, v3, v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v4, Labcd/Oy;->Hw:J

    iput v3, v4, Labcd/Oy;->DW:I

    iput v6, v0, Labcd/Iy;->rN:I

    invoke-virtual {v0, v1}, Labcd/Iy;->j6(I)I

    move-result v1

    return v1

    :pswitch_data_5ce
    .packed-switch 0x0
        :pswitch_513  #00000000
        :pswitch_499  #00000001
        :pswitch_3f7  #00000002
        :pswitch_67  #00000003
        :pswitch_9f  #00000004
        :pswitch_64  #00000005
        :pswitch_17c  #00000006
        :pswitch_1d4  #00000007
        :pswitch_1ff  #00000008
        :pswitch_49  #00000009
    .end packed-switch
.end method

.method DW()V
    .registers 3

    iget v0, p0, Labcd/Iy;->FH:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Labcd/Iy;->QX:Labcd/Jy;

    iget-object v1, p0, Labcd/Iy;->gW:Labcd/Oy;

    invoke-virtual {v0, v1}, Labcd/Jy;->j6(Labcd/Oy;)V

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Labcd/Iy;->FH:I

    iput v0, p0, Labcd/Iy;->aM:I

    iput v0, p0, Labcd/Iy;->j3:I

    iput v0, p0, Labcd/Iy;->rN:I

    iput v0, p0, Labcd/Iy;->lg:I

    iget-boolean v0, p0, Labcd/Iy;->er:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->J0:Labcd/Fy;

    invoke-interface {v0}, Labcd/Fy;->reset()V

    :cond_22
    return-void
.end method

.method j6(I)I
    .registers 12

    iget-object v0, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v0, v0, Labcd/Oy;->Zo:I

    iget v1, p0, Labcd/Iy;->lg:I

    iget v2, p0, Labcd/Iy;->rN:I

    if-gt v1, v2, :cond_b

    goto :goto_d

    :cond_b
    iget v2, p0, Labcd/Iy;->a8:I

    :goto_d
    sub-int/2addr v2, v1

    iget-object v3, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v3, v3, Labcd/Oy;->VH:I

    if-le v2, v3, :cond_15

    move v2, v3

    :cond_15
    const/4 v3, -0x5

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    if-ne p1, v3, :cond_1c

    const/4 p1, 0x0

    :cond_1c
    iget-object v5, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v6, v5, Labcd/Oy;->VH:I

    sub-int/2addr v6, v2

    iput v6, v5, Labcd/Oy;->VH:I

    iget-wide v6, v5, Labcd/Oy;->gn:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v5, Labcd/Oy;->gn:J

    iget-boolean v6, p0, Labcd/Iy;->er:Z

    if-eqz v6, :cond_36

    if-lez v2, :cond_36

    iget-object v5, v5, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v6, p0, Labcd/Iy;->U2:[B

    invoke-interface {v5, v6, v1, v2}, Labcd/Fy;->update([BII)V

    :cond_36
    iget-object v5, p0, Labcd/Iy;->U2:[B

    iget-object v6, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v6, v6, Labcd/Oy;->v5:[B

    invoke-static {v5, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    iget v2, p0, Labcd/Iy;->a8:I

    if-ne v1, v2, :cond_7f

    iget v1, p0, Labcd/Iy;->rN:I

    if-ne v1, v2, :cond_4b

    iput v4, p0, Labcd/Iy;->rN:I

    :cond_4b
    iget v1, p0, Labcd/Iy;->rN:I

    sub-int/2addr v1, v4

    iget-object v2, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v2, v2, Labcd/Oy;->VH:I

    if-le v1, v2, :cond_55

    move v1, v2

    :cond_55
    if-eqz v1, :cond_5a

    if-ne p1, v3, :cond_5a

    const/4 p1, 0x0

    :cond_5a
    iget-object v2, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->VH:I

    sub-int/2addr v3, v1

    iput v3, v2, Labcd/Oy;->VH:I

    iget-wide v5, v2, Labcd/Oy;->gn:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, v2, Labcd/Oy;->gn:J

    iget-boolean v3, p0, Labcd/Iy;->er:Z

    if-eqz v3, :cond_74

    if-lez v1, :cond_74

    iget-object v2, v2, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v3, p0, Labcd/Iy;->U2:[B

    invoke-interface {v2, v3, v4, v1}, Labcd/Fy;->update([BII)V

    :cond_74
    iget-object v2, p0, Labcd/Iy;->U2:[B

    iget-object v3, p0, Labcd/Iy;->gW:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->v5:[B

    invoke-static {v2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/2addr v1, v4

    :cond_7f
    iget-object v2, p0, Labcd/Iy;->gW:Labcd/Oy;

    iput v0, v2, Labcd/Oy;->Zo:I

    iput v1, p0, Labcd/Iy;->lg:I

    return p1
.end method

.method j6()V
    .registers 2

    invoke-virtual {p0}, Labcd/Iy;->DW()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Iy;->U2:[B

    iput-object v0, p0, Labcd/Iy;->Mr:[I

    return-void
.end method
