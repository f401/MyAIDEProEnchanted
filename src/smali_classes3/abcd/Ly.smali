.class final Labcd/Ly;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ly$a;
    }
.end annotation


# static fields
.field private static j6:[B


# instance fields
.field DW:I

.field private EQ:I

.field FH:I

.field Hw:J

.field private J0:[B

.field J8:Labcd/Hy;

.field VH:I

.field private Ws:Ljava/io/ByteArrayOutputStream;

.field Zo:I

.field gn:I

.field private final tp:Labcd/Oy;

.field u7:Labcd/Iy;

.field v5:J

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    sput-object v0, Labcd/Ly;->j6:[B

    return-void
.end method

.method constructor <init>(Labcd/Oy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/Ly;->Hw:J

    const/4 v0, -0x1

    iput v0, p0, Labcd/Ly;->we:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/Ly;->J0:[B

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ly;->J8:Labcd/Hy;

    iput-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Labcd/Ly;->tp:Labcd/Oy;

    return-void
.end method

.method private DW(II)I
    .registers 8

    iget-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_b

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    :cond_b
    :goto_b
    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->FH:I

    if-eqz v1, :cond_41

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v1, v0, Labcd/Oy;->Hw:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/Oy;->Hw:J

    iget-object p1, v0, Labcd/Oy;->j6:[B

    iget v0, v0, Labcd/Oy;->DW:I

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    iget-object v3, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2a
    iget-object p1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v0, p1, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v3, p1, Labcd/Oy;->j6:[B

    iget p1, p1, Labcd/Oy;->DW:I

    invoke-interface {v0, v3, p1, v2}, Labcd/Fy;->update([BII)V

    iget-object p1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v0, p1, Labcd/Oy;->DW:I

    add-int/2addr v0, v2

    iput v0, p1, Labcd/Oy;->DW:I

    if-nez v1, :cond_3f

    return p2

    :cond_3f
    move p1, p2

    goto :goto_b

    :cond_41
    new-instance p2, Labcd/Ly$a;

    invoke-direct {p2, p0, p1}, Labcd/Ly$a;-><init>(Labcd/Ly;I)V

    goto :goto_48

    :goto_47
    throw p2

    :goto_48
    goto :goto_47
.end method

.method private j6(II)I
    .registers 8

    iget-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_b

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    :cond_b
    :goto_b
    iget-wide v0, p0, Labcd/Ly;->v5:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_14

    return p1

    :cond_14
    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->FH:I

    if-eqz v1, :cond_4a

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v1, v0, Labcd/Oy;->Hw:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/Oy;->Hw:J

    iget-object p1, v0, Labcd/Oy;->j6:[B

    iget v0, v0, Labcd/Oy;->DW:I

    aget-byte v1, p1, v0

    iget-object v1, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v0, p1, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v1, p1, Labcd/Oy;->j6:[B

    iget p1, p1, Labcd/Oy;->DW:I

    invoke-interface {v0, v1, p1, v2}, Labcd/Fy;->update([BII)V

    iget-object p1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v0, p1, Labcd/Oy;->DW:I

    add-int/2addr v0, v2

    iput v0, p1, Labcd/Oy;->DW:I

    iget-wide v0, p0, Labcd/Ly;->v5:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Labcd/Ly;->v5:J

    move p1, p2

    goto :goto_b

    :cond_4a
    new-instance p2, Labcd/Ly$a;

    invoke-direct {p2, p0, p1}, Labcd/Ly$a;-><init>(Labcd/Ly;I)V

    goto :goto_51

    :goto_50
    throw p2

    :goto_51
    goto :goto_50
.end method

.method private j6(III)I
    .registers 11

    iget v0, p0, Labcd/Ly;->we:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iput p1, p0, Labcd/Ly;->we:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Labcd/Ly;->v5:J

    :cond_b
    :goto_b
    iget v0, p0, Labcd/Ly;->we:I

    if-gtz v0, :cond_29

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1b

    iget-wide v2, p0, Labcd/Ly;->v5:J

    const-wide/32 v4, 0xffff

    :goto_17
    and-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    goto :goto_26

    :cond_1b
    const/4 p3, 0x4

    if-ne p1, p3, :cond_26

    iget-wide v2, p0, Labcd/Ly;->v5:J

    const-wide v4, 0xffffffffL

    goto :goto_17

    :cond_26
    :goto_26
    iput v1, p0, Labcd/Ly;->we:I

    return p2

    :cond_29
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_57

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Labcd/Oy;->FH:I

    iget-wide v3, v2, Labcd/Oy;->Hw:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Labcd/Oy;->Hw:J

    iget-wide v3, p0, Labcd/Ly;->v5:J

    iget-object p2, v2, Labcd/Oy;->j6:[B

    iget v5, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte p2, p2, v5

    and-int/lit16 p2, p2, 0xff

    sub-int v2, p1, v0

    mul-int/lit8 v2, v2, 0x8

    shl-int/2addr p2, v2

    int-to-long v5, p2

    or-long/2addr v3, v5

    iput-wide v3, p0, Labcd/Ly;->v5:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ly;->we:I

    move p2, p3

    goto :goto_b

    :cond_57
    new-instance p1, Labcd/Ly$a;

    invoke-direct {p1, p0, p2}, Labcd/Ly$a;-><init>(Labcd/Ly;I)V

    goto :goto_5e

    :goto_5d
    throw p1

    :goto_5e
    goto :goto_5d
.end method

.method private j6(IJ)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-lt v1, p1, :cond_e

    iget-object p2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object p2, p2, Labcd/Oy;->J0:Labcd/Fy;

    iget-object p3, p0, Labcd/Ly;->J0:[B

    invoke-interface {p2, p3, v0, p1}, Labcd/Fy;->update([BII)V

    return-void

    :cond_e
    iget-object v2, p0, Labcd/Ly;->J0:[B

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v1

    const/16 v2, 0x8

    shr-long/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method DW()I
    .registers 4

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    if-nez v0, :cond_6

    const/4 v0, -0x2

    return v0

    :cond_6
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Labcd/Oy;->gn:J

    iput-wide v1, v0, Labcd/Oy;->Hw:J

    const/4 v1, 0x0

    iput-object v1, v0, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v0, 0xe

    iput v0, p0, Labcd/Ly;->DW:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/Ly;->we:I

    iget-object v0, p0, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {v0}, Labcd/Iy;->DW()V

    const/4 v0, 0x0

    return v0
.end method

.method DW(I)I
    .registers 8

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    const/4 v1, 0x0

    iput-object v1, v0, Labcd/Oy;->u7:Ljava/lang/String;

    iput-object v1, p0, Labcd/Ly;->u7:Labcd/Iy;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ly;->VH:I

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-gez p1, :cond_11

    neg-int p1, p1

    goto :goto_31

    :cond_11
    const/high16 v3, 0x40000000  # 2.0f

    and-int/2addr v3, p1

    const/16 v4, 0x30

    const/4 v5, 0x4

    if-eqz v3, :cond_22

    iput v5, p0, Labcd/Ly;->VH:I

    const v3, -0x40000001  # -1.9999999f

    and-int/2addr p1, v3

    if-ge p1, v4, :cond_31

    goto :goto_30

    :cond_22
    and-int/lit8 v3, p1, -0x20

    if-eqz v3, :cond_29

    iput v5, p0, Labcd/Ly;->VH:I

    goto :goto_30

    :cond_29
    shr-int/lit8 v3, p1, 0x4

    add-int/2addr v3, v2

    iput v3, p0, Labcd/Ly;->VH:I

    if-ge p1, v4, :cond_31

    :goto_30
    and-int/2addr p1, v1

    :cond_31
    :goto_31
    const/16 v3, 0x8

    if-lt p1, v3, :cond_49

    if-le p1, v1, :cond_38

    goto :goto_49

    :cond_38
    iput p1, p0, Labcd/Ly;->gn:I

    new-instance v1, Labcd/Iy;

    iget-object v3, p0, Labcd/Ly;->tp:Labcd/Oy;

    shl-int p1, v2, p1

    invoke-direct {v1, v3, p1}, Labcd/Iy;-><init>(Labcd/Oy;I)V

    iput-object v1, p0, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {p0}, Labcd/Ly;->DW()I

    return v0

    :cond_49
    :goto_49
    invoke-virtual {p0}, Labcd/Ly;->j6()I

    const/4 p1, -0x2

    return p1
.end method

.method j6()I
    .registers 2

    iget-object v0, p0, Labcd/Ly;->u7:Labcd/Iy;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Labcd/Iy;->j6()V

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method j6(I)I
    .registers 25

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Labcd/Ly;->tp:Labcd/Oy;

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v2, :cond_49b

    iget-object v2, v2, Labcd/Oy;->j6:[B

    if-nez v2, :cond_10

    goto/16 :goto_49b

    :cond_10
    const/4 v2, -0x5

    if-ne v0, v5, :cond_15

    const/4 v0, -0x5

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget v6, v1, Labcd/Ly;->DW:I

    const-string v7, "incorrect data check"

    const-wide/32 v8, 0xffff

    const/16 v14, 0x10

    const/16 v16, 0x18

    const/4 v10, 0x0

    const-wide/16 v19, 0x1

    const/16 v11, 0x8

    const/16 v12, 0xd

    const/4 v13, 0x2

    const/4 v15, 0x1

    packed-switch v6, :pswitch_data_4a8

    const/4 v2, -0x2

    return v2

    :pswitch_2f  #0x17
    :try_start_2f
    invoke-direct {v1, v13, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_33
    .catch Labcd/Ly$a; {:try_start_2f .. :try_end_33} :catch_5f

    iget-wide v6, v1, Labcd/Ly;->v5:J

    long-to-int v15, v6

    const v16, 0xffff

    and-int v15, v15, v16

    iput v15, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v15, 0xff

    if-eq v3, v11, :cond_4a

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "unknown compression method"

    :goto_45
    iput-object v6, v3, Labcd/Oy;->u7:Ljava/lang/String;

    iput v12, v1, Labcd/Ly;->DW:I

    goto :goto_16

    :cond_4a
    const v3, 0xe000

    and-int/2addr v3, v15

    if-eqz v3, :cond_55

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "unknown header flags set"

    goto :goto_45

    :cond_55
    and-int/lit16 v3, v15, 0x200

    if-eqz v3, :cond_5c

    invoke-direct {v1, v13, v6, v7}, Labcd/Ly;->j6(IJ)V

    :cond_5c
    iput v14, v1, Labcd/Ly;->DW:I

    goto :goto_64

    :catch_5f
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :goto_64
    :pswitch_64  #0x10
    :try_start_64
    invoke-direct {v1, v5, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_68
    .catch Labcd/Ly$a; {:try_start_64 .. :try_end_68} :catch_1ac

    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_70

    iget-wide v6, v1, Labcd/Ly;->v5:J

    iput-wide v6, v3, Labcd/Hy;->FH:J

    :cond_70
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_7b

    iget-wide v6, v1, Labcd/Ly;->v5:J

    invoke-direct {v1, v5, v6, v7}, Labcd/Ly;->j6(IJ)V

    :cond_7b
    const/16 v3, 0x11

    iput v3, v1, Labcd/Ly;->DW:I

    :pswitch_7f  #0x11
    :try_start_7f
    invoke-direct {v1, v13, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_83
    .catch Labcd/Ly$a; {:try_start_7f .. :try_end_83} :catch_1a7

    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_94

    iget-wide v6, v1, Labcd/Ly;->v5:J

    long-to-int v7, v6

    and-int/lit16 v6, v7, 0xff

    iput v6, v3, Labcd/Hy;->Hw:I

    shr-int/lit8 v6, v7, 0x8

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Labcd/Hy;->v5:I

    :cond_94
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_9f

    iget-wide v6, v1, Labcd/Ly;->v5:J

    invoke-direct {v1, v13, v6, v7}, Labcd/Ly;->j6(IJ)V

    :cond_9f
    const/16 v3, 0x12

    iput v3, v1, Labcd/Ly;->DW:I

    :pswitch_a3  #0x12
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_cd

    :try_start_a9
    invoke-direct {v1, v13, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_ad
    .catch Labcd/Ly$a; {:try_start_a9 .. :try_end_ad} :catch_c8

    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_bc

    iget-wide v6, v1, Labcd/Ly;->v5:J

    long-to-int v7, v6

    const v6, 0xffff

    and-int/2addr v6, v7

    new-array v6, v6, [B

    iput-object v6, v3, Labcd/Hy;->Zo:[B

    :cond_bc
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_d3

    iget-wide v6, v1, Labcd/Ly;->v5:J

    invoke-direct {v1, v13, v6, v7}, Labcd/Ly;->j6(IJ)V

    goto :goto_d3

    :catch_c8
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :cond_cd
    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_d3

    iput-object v10, v3, Labcd/Hy;->Zo:[B

    :cond_d3
    :goto_d3
    const/16 v3, 0x13

    iput v3, v1, Labcd/Ly;->DW:I

    :pswitch_d7  #0x13
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_10c

    :try_start_dd
    invoke-direct {v1, v2, v0}, Labcd/Ly;->j6(II)I

    move-result v2

    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_112

    iget-object v3, v1, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v10, v1, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    array-length v6, v3

    iget-object v7, v1, Labcd/Ly;->J8:Labcd/Hy;

    iget-object v7, v7, Labcd/Hy;->Zo:[B

    array-length v7, v7

    if-ne v6, v7, :cond_fe

    iget-object v6, v1, Labcd/Ly;->J8:Labcd/Hy;

    iget-object v6, v6, Labcd/Hy;->Zo:[B

    array-length v7, v3

    invoke-static {v3, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_112

    :cond_fe
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "bad extra field length"

    iput-object v6, v3, Labcd/Oy;->u7:Ljava/lang/String;

    iput v12, v1, Labcd/Ly;->DW:I
    :try_end_106
    .catch Labcd/Ly$a; {:try_start_dd .. :try_end_106} :catch_108

    goto/16 :goto_16

    :catch_108
    move-exception v0

    iget v0, v0, Labcd/Ly$a;->j6:I

    return v0

    :cond_10c
    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_112

    iput-object v10, v3, Labcd/Hy;->Zo:[B

    :cond_112
    :goto_112
    const/16 v3, 0x14

    iput v3, v1, Labcd/Ly;->DW:I

    :pswitch_116  #0x14
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_133

    :try_start_11c
    invoke-direct {v1, v2, v0}, Labcd/Ly;->DW(II)I

    iget-object v2, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_12b

    iget-object v3, v1, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Labcd/Hy;->VH:[B

    :cond_12b
    iput-object v10, v1, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;
    :try_end_12d
    .catch Labcd/Ly$a; {:try_start_11c .. :try_end_12d} :catch_12f

    move v2, v0

    goto :goto_139

    :catch_12f
    move-exception v0

    iget v0, v0, Labcd/Ly$a;->j6:I

    return v0

    :cond_133
    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_139

    iput-object v10, v3, Labcd/Hy;->VH:[B

    :cond_139
    :goto_139
    const/16 v3, 0x15

    iput v3, v1, Labcd/Ly;->DW:I

    :pswitch_13d  #0x15
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_15a

    :try_start_143
    invoke-direct {v1, v2, v0}, Labcd/Ly;->DW(II)I

    iget-object v2, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_152

    iget-object v3, v1, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Labcd/Hy;->gn:[B

    :cond_152
    iput-object v10, v1, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;
    :try_end_154
    .catch Labcd/Ly$a; {:try_start_143 .. :try_end_154} :catch_156

    move v2, v0

    goto :goto_160

    :catch_156
    move-exception v0

    iget v0, v0, Labcd/Ly$a;->j6:I

    return v0

    :cond_15a
    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_160

    iput-object v10, v3, Labcd/Hy;->gn:[B

    :cond_160
    :goto_160
    const/16 v3, 0x16

    iput v3, v1, Labcd/Ly;->DW:I

    :pswitch_164  #0x16
    iget v3, v1, Labcd/Ly;->EQ:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_199

    :try_start_16a
    invoke-direct {v1, v13, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_16e
    .catch Labcd/Ly$a; {:try_start_16a .. :try_end_16e} :catch_194

    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v3, :cond_178

    iget-wide v6, v1, Labcd/Ly;->v5:J

    and-long/2addr v6, v8

    long-to-int v7, v6

    iput v7, v3, Labcd/Hy;->u7:I

    :cond_178
    iget-wide v6, v1, Labcd/Ly;->v5:J

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->J0:Labcd/Fy;

    invoke-interface {v3}, Labcd/Fy;->getValue()J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-eqz v3, :cond_199

    iput v12, v1, Labcd/Ly;->DW:I

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "header crc mismatch"

    iput-object v6, v3, Labcd/Oy;->u7:Ljava/lang/String;

    const/4 v3, 0x5

    iput v3, v1, Labcd/Ly;->Zo:I

    goto/16 :goto_16

    :catch_194
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :cond_199
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    new-instance v6, Labcd/Ey;

    invoke-direct {v6}, Labcd/Ey;-><init>()V

    iput-object v6, v3, Labcd/Oy;->J0:Labcd/Fy;

    :goto_1a2
    const/4 v3, 0x7

    :goto_1a3
    iput v3, v1, Labcd/Ly;->DW:I

    goto/16 :goto_16

    :catch_1a7
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :catch_1ac
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :pswitch_1b1  #0xe
    iget v3, v1, Labcd/Ly;->VH:I

    if-nez v3, :cond_1b6

    :goto_1b5
    goto :goto_1a2

    :cond_1b6
    :try_start_1b6
    invoke-direct {v1, v13, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_1ba
    .catch Labcd/Ly$a; {:try_start_1b6 .. :try_end_1ba} :catch_25e

    iget v3, v1, Labcd/Ly;->VH:I

    if-eq v3, v5, :cond_1c2

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1eb

    :cond_1c2
    iget-wide v6, v1, Labcd/Ly;->v5:J

    const-wide/32 v8, 0x8b1f

    cmp-long v10, v6, v8

    if-nez v10, :cond_1eb

    if-ne v3, v5, :cond_1cf

    iput v13, v1, Labcd/Ly;->VH:I

    :cond_1cf
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    new-instance v6, Labcd/Ey;

    invoke-direct {v6}, Labcd/Ey;-><init>()V

    iput-object v6, v3, Labcd/Oy;->J0:Labcd/Fy;

    iget-wide v6, v1, Labcd/Ly;->v5:J

    invoke-direct {v1, v13, v6, v7}, Labcd/Ly;->j6(IJ)V

    iget-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-nez v3, :cond_1e8

    new-instance v3, Labcd/Hy;

    invoke-direct {v3}, Labcd/Hy;-><init>()V

    iput-object v3, v1, Labcd/Ly;->J8:Labcd/Hy;

    :cond_1e8
    const/16 v3, 0x17

    goto :goto_1a3

    :cond_1eb
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1f9

    :cond_1ef
    iput v12, v1, Labcd/Ly;->DW:I

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "incorrect header check"

    :goto_1f5
    iput-object v6, v3, Labcd/Oy;->u7:Ljava/lang/String;

    goto/16 :goto_16

    :cond_1f9
    iput v4, v1, Labcd/Ly;->EQ:I

    iget-wide v6, v1, Labcd/Ly;->v5:J

    long-to-int v8, v6

    and-int/lit16 v8, v8, 0xff

    iput v8, v1, Labcd/Ly;->FH:I

    shr-long/2addr v6, v11

    long-to-int v7, v6

    and-int/lit16 v6, v7, 0xff

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_211

    shl-int/lit8 v7, v8, 0x8

    add-int/2addr v7, v6

    rem-int/lit8 v7, v7, 0x1f

    if-eqz v7, :cond_22e

    :cond_211
    and-int/lit8 v7, v8, 0xf

    if-eq v7, v11, :cond_22e

    if-ne v3, v5, :cond_1ef

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v6, v3, Labcd/Oy;->DW:I

    sub-int/2addr v6, v13

    iput v6, v3, Labcd/Oy;->DW:I

    iget v6, v3, Labcd/Oy;->FH:I

    add-int/2addr v6, v13

    iput v6, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iput v4, v1, Labcd/Ly;->VH:I

    goto/16 :goto_1a2

    :cond_22e
    and-int/lit8 v7, v8, 0xf

    if-eq v7, v11, :cond_239

    iput v12, v1, Labcd/Ly;->DW:I

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "unknown compression method"

    goto :goto_1f5

    :cond_239
    if-ne v3, v5, :cond_23d

    iput v15, v1, Labcd/Ly;->VH:I

    :cond_23d
    shr-int/lit8 v3, v8, 0x4

    add-int/2addr v3, v11

    iget v7, v1, Labcd/Ly;->gn:I

    if-le v3, v7, :cond_24b

    iput v12, v1, Labcd/Ly;->DW:I

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v6, "invalid window size"

    goto :goto_1f5

    :cond_24b
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    new-instance v7, Labcd/Dy;

    invoke-direct {v7}, Labcd/Dy;-><init>()V

    iput-object v7, v3, Labcd/Oy;->J0:Labcd/Fy;

    and-int/lit8 v3, v6, 0x20

    if-nez v3, :cond_25a

    goto/16 :goto_1b5

    :cond_25a
    iput v13, v1, Labcd/Ly;->DW:I

    goto/16 :goto_3ee

    :catch_25e
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :pswitch_263  #0xd
    const/4 v0, -0x3

    return v0

    :pswitch_265  #0x7
    iget-object v3, v1, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {v3, v2}, Labcd/Iy;->DW(I)I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_274

    iput v12, v1, Labcd/Ly;->DW:I

    iput v4, v1, Labcd/Ly;->Zo:I

    goto/16 :goto_16

    :cond_274
    if-nez v2, :cond_277

    move v2, v0

    :cond_277
    if-eq v2, v15, :cond_27a

    return v2

    :cond_27a
    iget-object v2, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->J0:Labcd/Fy;

    invoke-interface {v2}, Labcd/Fy;->getValue()J

    move-result-wide v2

    iput-wide v2, v1, Labcd/Ly;->Hw:J

    iget-object v2, v1, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {v2}, Labcd/Iy;->DW()V

    iget v2, v1, Labcd/Ly;->VH:I

    if-nez v2, :cond_294

    const/16 v2, 0xc

    iput v2, v1, Labcd/Ly;->DW:I

    move v2, v0

    goto/16 :goto_16

    :cond_294
    iput v11, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_297  #0x8
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v6, v3, Labcd/Oy;->FH:I

    if-nez v6, :cond_29e

    return v2

    :cond_29e
    add-int/lit8 v6, v6, -0x1

    iput v6, v3, Labcd/Oy;->FH:I

    iget-wide v12, v3, Labcd/Oy;->Hw:J

    add-long v12, v12, v19

    iput-wide v12, v3, Labcd/Oy;->Hw:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v6, v3, Labcd/Oy;->DW:I

    add-int/lit8 v12, v6, 0x1

    iput v12, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v12, 0xff000000L

    and-long/2addr v2, v12

    iput-wide v2, v1, Labcd/Ly;->v5:J

    const/16 v2, 0x9

    iput v2, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_2c4  #0x9
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v6, v3, Labcd/Oy;->FH:I

    if-nez v6, :cond_2cb

    return v2

    :cond_2cb
    add-int/lit8 v6, v6, -0x1

    iput v6, v3, Labcd/Oy;->FH:I

    iget-wide v12, v3, Labcd/Oy;->Hw:J

    add-long v12, v12, v19

    iput-wide v12, v3, Labcd/Oy;->Hw:J

    iget-wide v12, v1, Labcd/Ly;->v5:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v6, v3, Labcd/Oy;->DW:I

    add-int/lit8 v4, v6, 0x1

    iput v4, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v14

    int-to-long v2, v2

    const-wide/32 v21, 0xff0000

    and-long v2, v2, v21

    add-long/2addr v12, v2

    iput-wide v12, v1, Labcd/Ly;->v5:J

    const/16 v2, 0xa

    iput v2, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_2f2  #0xa
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v4, v3, Labcd/Oy;->FH:I

    if-nez v4, :cond_2f9

    return v2

    :cond_2f9
    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Labcd/Oy;->FH:I

    iget-wide v12, v3, Labcd/Oy;->Hw:J

    add-long v12, v12, v19

    iput-wide v12, v3, Labcd/Oy;->Hw:J

    iget-wide v12, v1, Labcd/Ly;->v5:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v4, v3, Labcd/Oy;->DW:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v11

    int-to-long v2, v2

    const-wide/32 v17, 0xff00

    and-long v2, v2, v17

    add-long/2addr v12, v2

    iput-wide v12, v1, Labcd/Ly;->v5:J

    const/16 v2, 0xb

    iput v2, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_320  #0xb
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v4, v3, Labcd/Oy;->FH:I

    if-nez v4, :cond_327

    return v2

    :cond_327
    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Labcd/Oy;->FH:I

    iget-wide v12, v3, Labcd/Oy;->Hw:J

    add-long v12, v12, v19

    iput-wide v12, v3, Labcd/Oy;->Hw:J

    iget-wide v12, v1, Labcd/Ly;->v5:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v4, v3, Labcd/Oy;->DW:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v4

    int-to-long v2, v2

    const-wide/16 v19, 0xff

    and-long v2, v2, v19

    add-long/2addr v12, v2

    iput-wide v12, v1, Labcd/Ly;->v5:J

    iget v2, v1, Labcd/Ly;->EQ:I

    if-eqz v2, :cond_36d

    and-long v3, v12, v8

    shl-long v3, v3, v16

    const-wide/32 v8, -0x1000000

    and-long/2addr v8, v12

    shr-long v8, v8, v16

    const-wide/32 v19, 0xff0000

    and-long v19, v12, v19

    shr-long v19, v19, v11

    or-long v8, v8, v19

    const-wide/32 v16, 0xff00

    and-long v12, v12, v16

    shl-long v11, v12, v11

    or-long/2addr v8, v11

    or-long/2addr v3, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v3, v8

    iput-wide v3, v1, Labcd/Ly;->v5:J

    :cond_36d
    iget-wide v3, v1, Labcd/Ly;->Hw:J

    long-to-int v4, v3

    iget-wide v8, v1, Labcd/Ly;->v5:J

    long-to-int v3, v8

    if-eq v4, v3, :cond_37a

    iget-object v2, v1, Labcd/Ly;->tp:Labcd/Oy;

    iput-object v7, v2, Labcd/Oy;->u7:Ljava/lang/String;

    goto :goto_382

    :cond_37a
    if-eqz v2, :cond_382

    iget-object v2, v1, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_382

    iput-wide v8, v2, Labcd/Hy;->tp:J

    :cond_382
    :goto_382
    const/16 v2, 0xf

    iput v2, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_387  #0xf
    iget v3, v1, Labcd/Ly;->VH:I

    if-eqz v3, :cond_3c1

    iget v3, v1, Labcd/Ly;->EQ:I

    if-eqz v3, :cond_3c1

    :try_start_38f
    invoke-direct {v1, v5, v2, v0}, Labcd/Ly;->j6(III)I

    move-result v2
    :try_end_393
    .catch Labcd/Ly$a; {:try_start_38f .. :try_end_393} :catch_3bc

    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->u7:Ljava/lang/String;

    if-eqz v3, :cond_3a0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a0

    goto :goto_3cd

    :cond_3a0
    iget-wide v3, v1, Labcd/Ly;->v5:J

    iget-object v6, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget-wide v7, v6, Labcd/Oy;->gn:J

    const-wide v11, 0xffffffffL

    and-long/2addr v7, v11

    cmp-long v9, v3, v7

    if-eqz v9, :cond_3b9

    const-string v3, "incorrect length check"

    iput-object v3, v6, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v3, 0xd

    iput v3, v1, Labcd/Ly;->DW:I

    goto :goto_3d4

    :cond_3b9
    iput-object v10, v6, Labcd/Oy;->u7:Ljava/lang/String;

    goto :goto_3d7

    :catch_3bc
    move-exception v0

    move-object v2, v0

    iget v0, v2, Labcd/Ly$a;->j6:I

    return v0

    :cond_3c1
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v3, v3, Labcd/Oy;->u7:Ljava/lang/String;

    if-eqz v3, :cond_3d7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d7

    :goto_3cd
    const/16 v3, 0xd

    iput v3, v1, Labcd/Ly;->DW:I

    const/4 v3, 0x5

    iput v3, v1, Labcd/Ly;->Zo:I

    :goto_3d4
    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_3d7
    :goto_3d7
    const/16 v0, 0xc

    iput v0, v1, Labcd/Ly;->DW:I

    :pswitch_3db  #0xc
    return v15

    :pswitch_3dc  #0x6
    const/16 v3, 0xd

    iput v3, v1, Labcd/Ly;->DW:I

    iget-object v0, v1, Labcd/Ly;->tp:Labcd/Oy;

    const-string v2, "need dictionary"

    iput-object v2, v0, Labcd/Oy;->u7:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Labcd/Ly;->Zo:I

    const/4 v0, -0x2

    return v0

    :pswitch_3eb  #0x5
    move v0, v2

    goto/16 :goto_46d

    :goto_3ee
    :pswitch_3ee  #0x2
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v4, v3, Labcd/Oy;->FH:I

    if-nez v4, :cond_3f5

    return v2

    :cond_3f5
    sub-int/2addr v4, v15

    iput v4, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    add-long v6, v6, v19

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v4, v3, Labcd/Oy;->DW:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v6, 0xff000000L

    and-long/2addr v2, v6

    iput-wide v2, v1, Labcd/Ly;->v5:J

    const/4 v2, 0x3

    iput v2, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_419  #0x3
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v4, v3, Labcd/Oy;->FH:I

    if-nez v4, :cond_420

    return v2

    :cond_420
    sub-int/2addr v4, v15

    iput v4, v3, Labcd/Oy;->FH:I

    iget-wide v6, v3, Labcd/Oy;->Hw:J

    add-long v6, v6, v19

    iput-wide v6, v3, Labcd/Oy;->Hw:J

    iget-wide v6, v1, Labcd/Ly;->v5:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v4, v3, Labcd/Oy;->DW:I

    add-int/lit8 v8, v4, 0x1

    iput v8, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v14

    int-to-long v2, v2

    const-wide/32 v8, 0xff0000

    and-long/2addr v2, v8

    add-long/2addr v6, v2

    iput-wide v6, v1, Labcd/Ly;->v5:J

    iput v5, v1, Labcd/Ly;->DW:I

    move v2, v0

    :pswitch_443  #0x4
    iget-object v3, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v4, v3, Labcd/Oy;->FH:I

    if-nez v4, :cond_44a

    return v2

    :cond_44a
    sub-int/2addr v4, v15

    iput v4, v3, Labcd/Oy;->FH:I

    iget-wide v4, v3, Labcd/Oy;->Hw:J

    add-long v4, v4, v19

    iput-wide v4, v3, Labcd/Oy;->Hw:J

    iget-wide v4, v1, Labcd/Ly;->v5:J

    iget-object v2, v3, Labcd/Oy;->j6:[B

    iget v6, v3, Labcd/Oy;->DW:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Labcd/Oy;->DW:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v11

    int-to-long v2, v2

    const-wide/32 v6, 0xff00

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    iput-wide v4, v1, Labcd/Ly;->v5:J

    const/4 v2, 0x5

    iput v2, v1, Labcd/Ly;->DW:I

    :goto_46d
    iget-object v2, v1, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-nez v3, :cond_474

    return v0

    :cond_474
    sub-int/2addr v3, v15

    iput v3, v2, Labcd/Oy;->FH:I

    iget-wide v3, v2, Labcd/Oy;->Hw:J

    add-long v3, v3, v19

    iput-wide v3, v2, Labcd/Oy;->Hw:J

    iget-wide v3, v1, Labcd/Ly;->v5:J

    iget-object v0, v2, Labcd/Oy;->j6:[B

    iget v5, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v1, Labcd/Ly;->v5:J

    iget-object v0, v2, Labcd/Oy;->J0:Labcd/Fy;

    iget-wide v2, v1, Labcd/Ly;->v5:J

    invoke-interface {v0, v2, v3}, Labcd/Fy;->j6(J)V

    const/4 v0, 0x6

    iput v0, v1, Labcd/Ly;->DW:I

    return v13

    :cond_49b
    :goto_49b
    const/4 v2, -0x2

    if-ne v0, v5, :cond_4a6

    iget v0, v1, Labcd/Ly;->DW:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_4a6

    const/4 v0, 0x0

    return v0

    :cond_4a6
    return v2

    nop

    :pswitch_data_4a8
    .packed-switch 0x2
        :pswitch_3ee  #00000002
        :pswitch_419  #00000003
        :pswitch_443  #00000004
        :pswitch_3eb  #00000005
        :pswitch_3dc  #00000006
        :pswitch_265  #00000007
        :pswitch_297  #00000008
        :pswitch_2c4  #00000009
        :pswitch_2f2  #0000000a
        :pswitch_320  #0000000b
        :pswitch_3db  #0000000c
        :pswitch_263  #0000000d
        :pswitch_1b1  #0000000e
        :pswitch_387  #0000000f
        :pswitch_64  #00000010
        :pswitch_7f  #00000011
        :pswitch_a3  #00000012
        :pswitch_d7  #00000013
        :pswitch_116  #00000014
        :pswitch_13d  #00000015
        :pswitch_164  #00000016
        :pswitch_2f  #00000017
    .end packed-switch
.end method
