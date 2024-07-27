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

    const/4 v2, -0x1

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    sput-object v0, Labcd/Ly;->j6:[B

    return-void
.end method

.method constructor <init>(Labcd/Oy;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/Ly;->Hw:J

    const/4 v0, -0x1

    iput v0, p0, Labcd/Ly;->we:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/Ly;->J0:[B

    iput-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    iput-object v2, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Labcd/Ly;->tp:Labcd/Oy;

    return-void
.end method

.method private DW(II)I
    .registers 10

    const/4 v6, 0x1

    iget-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->FH:I

    if-eqz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v2, v0, Labcd/Oy;->Hw:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/Oy;->Hw:J

    iget-object v1, v0, Labcd/Oy;->j6:[B

    iget v0, v0, Labcd/Oy;->DW:I

    aget-byte v2, v1, v0

    if-eqz v2, :cond_1

    iget-object v3, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v1, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v1, v0, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v3, v0, Labcd/Oy;->j6:[B

    iget v0, v0, Labcd/Oy;->DW:I

    invoke-interface {v1, v3, v0, v6}, Labcd/Fy;->update([BII)V

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->DW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Labcd/Oy;->DW:I

    if-nez v2, :cond_2

    return p2

    :cond_2
    move p1, p2

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/Ly$a;

    invoke-direct {v0, p0, p1}, Labcd/Ly$a;-><init>(Labcd/Ly;I)V

    throw v0
.end method

.method private j6(II)I
    .registers 11

    const-wide/16 v6, 0x1

    const/4 v4, 0x1

    iget-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    :cond_0
    :goto_0
    iget-wide v0, p0, Labcd/Ly;->v5:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    return p1

    :cond_1
    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->FH:I

    if-eqz v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v2, v0, Labcd/Oy;->Hw:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Labcd/Oy;->Hw:J

    iget-object v1, v0, Labcd/Oy;->j6:[B

    iget v0, v0, Labcd/Oy;->DW:I

    aget-byte v2, v1, v0

    iget-object v2, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v1, v0, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v2, v0, Labcd/Oy;->j6:[B

    iget v0, v0, Labcd/Oy;->DW:I

    invoke-interface {v1, v2, v0, v4}, Labcd/Fy;->update([BII)V

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v1, v0, Labcd/Oy;->DW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Labcd/Oy;->DW:I

    iget-wide v0, p0, Labcd/Ly;->v5:J

    sub-long/2addr v0, v6

    iput-wide v0, p0, Labcd/Ly;->v5:J

    move p1, p2

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/Ly$a;

    invoke-direct {v0, p0, p1}, Labcd/Ly$a;-><init>(Labcd/Ly;I)V

    throw v0
.end method

.method private j6(III)I
    .registers 12

    const/4 v7, -0x1

    iget v0, p0, Labcd/Ly;->we:I

    if-ne v0, v7, :cond_0

    iput p1, p0, Labcd/Ly;->we:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Ly;->v5:J

    :cond_0
    :goto_0
    iget v0, p0, Labcd/Ly;->we:I

    if-gtz v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Labcd/Ly;->v5:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Ly;->v5:J

    :cond_1
    :goto_1
    iput v7, p0, Labcd/Ly;->we:I

    return p2

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Labcd/Ly;->v5:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Ly;->v5:J

    goto :goto_1

    :cond_3
    iget-object v1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v2, v1, Labcd/Oy;->FH:I

    if-eqz v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Labcd/Oy;->FH:I

    iget-wide v2, v1, Labcd/Oy;->Hw:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Labcd/Oy;->Hw:J

    iget-wide v2, p0, Labcd/Ly;->v5:J

    iget-object v4, v1, Labcd/Oy;->j6:[B

    iget v5, v1, Labcd/Oy;->DW:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Labcd/Oy;->DW:I

    aget-byte v1, v4, v5

    and-int/lit16 v1, v1, 0xff

    sub-int v4, p1, v0

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v1, v4

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ly;->we:I

    move p2, p3

    goto :goto_0

    :cond_4
    new-instance v0, Labcd/Ly$a;

    invoke-direct {v0, p0, p2}, Labcd/Ly$a;-><init>(Labcd/Ly;I)V

    throw v0
.end method

.method private j6(IJ)V
    .registers 10

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v0, v0, Labcd/Oy;->J0:Labcd/Fy;

    iget-object v2, p0, Labcd/Ly;->J0:[B

    invoke-interface {v0, v2, v1, p1}, Labcd/Fy;->update([BII)V

    return-void

    :cond_0
    iget-object v2, p0, Labcd/Ly;->J0:[B

    const-wide/16 v4, 0xff

    and-long/2addr v4, p2

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/16 v2, 0x8

    shr-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method DW()I
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iput-wide v2, v0, Labcd/Oy;->gn:J

    iput-wide v2, v0, Labcd/Oy;->Hw:J

    const/4 v1, 0x0

    iput-object v1, v0, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v0, 0xe

    iput v0, p0, Labcd/Ly;->DW:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/Ly;->we:I

    iget-object v0, p0, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {v0}, Labcd/Iy;->DW()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method DW(I)I
    .registers 7

    const/16 v4, 0x30

    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iput-object v3, v1, Labcd/Oy;->u7:Ljava/lang/String;

    iput-object v3, p0, Labcd/Ly;->u7:Labcd/Iy;

    iput v0, p0, Labcd/Ly;->VH:I

    if-gez p1, :cond_2

    neg-int p1, p1

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    const/16 v1, 0xf

    if-le p1, v1, :cond_5

    :cond_1
    invoke-virtual {p0}, Labcd/Ly;->j6()I

    const/4 v0, -0x2

    :goto_1
    return v0

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    iput v2, p0, Labcd/Ly;->VH:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr p1, v1

    if-ge p1, v4, :cond_0

    :goto_2
    and-int/lit8 p1, p1, 0xf

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, -0x20

    if-eqz v1, :cond_4

    iput v2, p0, Labcd/Ly;->VH:I

    goto :goto_2

    :cond_4
    shr-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Ly;->VH:I

    if-ge p1, v4, :cond_0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Labcd/Ly;->u7:Labcd/Iy;

    if-eqz v1, :cond_6

    iget v2, p0, Labcd/Ly;->gn:I

    if-eq v2, p1, :cond_6

    invoke-virtual {v1}, Labcd/Iy;->j6()V

    iput-object v3, p0, Labcd/Ly;->u7:Labcd/Iy;

    :cond_6
    iput p1, p0, Labcd/Ly;->gn:I

    new-instance v1, Labcd/Iy;

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Labcd/Iy;-><init>(Labcd/Oy;I)V

    iput-object v1, p0, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {p0}, Labcd/Ly;->DW()I

    goto :goto_1
.end method

.method j6()I
    .registers 2

    iget-object v0, p0, Labcd/Ly;->u7:Labcd/Iy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/Iy;->j6()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method j6(I)I
    .registers 12

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    if-eqz v0, :cond_0

    iget-object v0, v0, Labcd/Oy;->j6:[B

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_30

    iget v0, p0, Labcd/Ly;->DW:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_30

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 v0, -0x5

    :goto_1
    const/4 v1, -0x5

    :goto_2
    iget v2, p0, Labcd/Ly;->DW:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_0
    .catch Labcd/Ly$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-wide v2, p0, Labcd/Ly;->v5:J

    long-to-int v4, v2

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, p0, Labcd/Ly;->EQ:I

    iget v4, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "unknown compression method"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    goto :goto_2

    :cond_4
    const v5, 0xe000

    and-int/2addr v5, v4

    if-eqz v5, :cond_5

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "unknown header flags set"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    goto :goto_2

    :cond_5
    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    invoke-direct {p0, v4, v2, v3}, Labcd/Ly;->j6(IJ)V

    :cond_6
    const/16 v2, 0x10

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_1
    const/4 v2, 0x4

    :try_start_1
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_1
    .catch Labcd/Ly$a; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_7

    iget-wide v4, p0, Labcd/Ly;->v5:J

    iput-wide v4, v2, Labcd/Hy;->FH:J

    :cond_7
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    iget-wide v4, p0, Labcd/Ly;->v5:J

    invoke-direct {p0, v2, v4, v5}, Labcd/Ly;->j6(IJ)V

    :cond_8
    const/16 v2, 0x11

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_2
    const/4 v2, 0x2

    :try_start_2
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_2
    .catch Labcd/Ly$a; {:try_start_2 .. :try_end_2} :catch_6

    move-result v1

    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_9

    iget-wide v4, p0, Labcd/Ly;->v5:J

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Labcd/Hy;->Hw:I

    long-to-int v3, v4

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Labcd/Hy;->v5:I

    :cond_9
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    iget-wide v4, p0, Labcd/Ly;->v5:J

    invoke-direct {p0, v2, v4, v5}, Labcd/Ly;->j6(IJ)V

    :cond_a
    const/16 v2, 0x12

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_3
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    :try_start_3
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_3
    .catch Labcd/Ly$a; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_b

    iget-wide v4, p0, Labcd/Ly;->v5:J

    long-to-int v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, v2, Labcd/Hy;->Zo:[B

    :cond_b
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    iget-wide v4, p0, Labcd/Ly;->v5:J

    invoke-direct {p0, v2, v4, v5}, Labcd/Ly;->j6(IJ)V

    :cond_c
    :goto_3
    const/16 v2, 0x13

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_4
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_15

    :try_start_4
    invoke-direct {p0, v1, v0}, Labcd/Ly;->j6(II)I

    move-result v1

    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_d

    iget-object v2, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    array-length v3, v2

    iget-object v4, p0, Labcd/Ly;->J8:Labcd/Hy;

    iget-object v4, v4, Labcd/Hy;->Zo:[B

    array-length v4, v4

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Ly;->J8:Labcd/Hy;

    iget-object v4, v4, Labcd/Hy;->Zo:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Labcd/Ly$a; {:try_start_4 .. :try_end_4} :catch_2

    :cond_d
    :goto_4
    const/16 v2, 0x14

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_5
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_16

    :try_start_5
    invoke-direct {p0, v1, v0}, Labcd/Ly;->DW(II)I

    iget-object v1, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v1, :cond_e

    iget-object v1, p0, Labcd/Ly;->J8:Labcd/Hy;

    iget-object v2, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Labcd/Hy;->VH:[B

    :cond_e
    const/4 v1, 0x0

    iput-object v1, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;
    :try_end_5
    .catch Labcd/Ly$a; {:try_start_5 .. :try_end_5} :catch_3

    move v1, v0

    :cond_f
    :goto_5
    const/16 v2, 0x15

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_6
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_17

    :try_start_6
    invoke-direct {p0, v1, v0}, Labcd/Ly;->DW(II)I

    iget-object v1, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v1, :cond_10

    iget-object v1, p0, Labcd/Ly;->J8:Labcd/Hy;

    iget-object v2, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Labcd/Hy;->gn:[B

    :cond_10
    const/4 v1, 0x0

    iput-object v1, p0, Labcd/Ly;->Ws:Ljava/io/ByteArrayOutputStream;
    :try_end_6
    .catch Labcd/Ly$a; {:try_start_6 .. :try_end_6} :catch_4

    move v1, v0

    :cond_11
    :goto_6
    const/16 v2, 0x16

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_7
    iget v2, p0, Labcd/Ly;->EQ:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    :try_start_7
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_7
    .catch Labcd/Ly$a; {:try_start_7 .. :try_end_7} :catch_5

    move-result v1

    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_12

    iget-wide v4, p0, Labcd/Ly;->v5:J

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Labcd/Hy;->u7:I

    :cond_12
    iget-wide v2, p0, Labcd/Ly;->v5:J

    iget-object v4, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v4, v4, Labcd/Oy;->J0:Labcd/Fy;

    invoke-interface {v4}, Labcd/Fy;->getValue()J

    move-result-wide v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "header crc mismatch"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, p0, Labcd/Ly;->Zo:I

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/Hy;->Zo:[B

    goto/16 :goto_3

    :cond_14
    :try_start_8
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "bad extra field length"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I
    :try_end_8
    .catch Labcd/Ly$a; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_d

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/Hy;->Zo:[B

    goto/16 :goto_4

    :catch_3
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_f

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/Hy;->VH:[B

    goto/16 :goto_5

    :catch_4
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v2, :cond_11

    const/4 v3, 0x0

    iput-object v3, v2, Labcd/Hy;->gn:[B

    goto/16 :goto_6

    :catch_5
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    new-instance v3, Labcd/Ey;

    invoke-direct {v3}, Labcd/Ey;-><init>()V

    iput-object v3, v2, Labcd/Oy;->J0:Labcd/Fy;

    const/4 v2, 0x7

    iput v2, p0, Labcd/Ly;->DW:I

    goto/16 :goto_2

    :catch_6
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :catch_7
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :pswitch_8
    iget v2, p0, Labcd/Ly;->VH:I

    if-nez v2, :cond_19

    const/4 v2, 0x7

    iput v2, p0, Labcd/Ly;->DW:I

    goto/16 :goto_2

    :cond_19
    const/4 v2, 0x2

    :try_start_9
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_9
    .catch Labcd/Ly$a; {:try_start_9 .. :try_end_9} :catch_8

    move-result v1

    iget v2, p0, Labcd/Ly;->VH:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1a

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1d

    :cond_1a
    iget-wide v2, p0, Labcd/Ly;->v5:J

    const-wide/32 v4, 0x8b1f

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    iget v2, p0, Labcd/Ly;->VH:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x2

    iput v2, p0, Labcd/Ly;->VH:I

    :cond_1b
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    new-instance v3, Labcd/Ey;

    invoke-direct {v3}, Labcd/Ey;-><init>()V

    iput-object v3, v2, Labcd/Oy;->J0:Labcd/Fy;

    const/4 v2, 0x2

    iget-wide v4, p0, Labcd/Ly;->v5:J

    invoke-direct {p0, v2, v4, v5}, Labcd/Ly;->j6(IJ)V

    iget-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-nez v2, :cond_1c

    new-instance v2, Labcd/Hy;

    invoke-direct {v2}, Labcd/Hy;-><init>()V

    iput-object v2, p0, Labcd/Ly;->J8:Labcd/Hy;

    :cond_1c
    const/16 v2, 0x17

    iput v2, p0, Labcd/Ly;->DW:I

    goto/16 :goto_2

    :cond_1d
    iget v2, p0, Labcd/Ly;->VH:I

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1e

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "incorrect header check"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1e
    const/4 v3, 0x0

    iput v3, p0, Labcd/Ly;->EQ:I

    iget-wide v4, p0, Labcd/Ly;->v5:J

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Labcd/Ly;->FH:I

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1f

    iget v2, p0, Labcd/Ly;->FH:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x1f

    if-eqz v2, :cond_21

    :cond_1f
    iget v2, p0, Labcd/Ly;->FH:I

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0x8

    if-eq v2, v4, :cond_21

    iget v2, p0, Labcd/Ly;->VH:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v2, Labcd/Oy;->DW:I

    iget v3, v2, Labcd/Oy;->FH:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    const/4 v2, 0x0

    iput v2, p0, Labcd/Ly;->VH:I

    const/4 v2, 0x7

    iput v2, p0, Labcd/Ly;->DW:I

    goto/16 :goto_2

    :cond_20
    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "incorrect header check"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    goto/16 :goto_2

    :cond_21
    iget v2, p0, Labcd/Ly;->FH:I

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0x8

    if-eq v2, v4, :cond_22

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "unknown compression method"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    goto/16 :goto_2

    :cond_22
    iget v2, p0, Labcd/Ly;->VH:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_23

    const/4 v2, 0x1

    iput v2, p0, Labcd/Ly;->VH:I

    :cond_23
    iget v2, p0, Labcd/Ly;->FH:I

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    iget v4, p0, Labcd/Ly;->gn:I

    if-le v2, v4, :cond_24

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v3, "invalid window size"

    iput-object v3, v2, Labcd/Oy;->u7:Ljava/lang/String;

    goto/16 :goto_2

    :cond_24
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    new-instance v4, Labcd/Dy;

    invoke-direct {v4}, Labcd/Dy;-><init>()V

    iput-object v4, v2, Labcd/Oy;->J0:Labcd/Fy;

    and-int/lit8 v2, v3, 0x20

    if-nez v2, :cond_25

    const/4 v2, 0x7

    iput v2, p0, Labcd/Ly;->DW:I

    goto/16 :goto_2

    :cond_25
    const/4 v2, 0x2

    iput v2, p0, Labcd/Ly;->DW:I

    :pswitch_9
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    const/4 v1, 0x3

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_a
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-wide v4, p0, Labcd/Ly;->v5:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v2, v1

    const-wide/32 v6, 0xff0000

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    const/4 v1, 0x4

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_b
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-wide v4, p0, Labcd/Ly;->v5:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v2, v1

    const-wide/32 v6, 0xff00

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    const/4 v1, 0x5

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_c
    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v2, v0, Labcd/Oy;->FH:I

    if-eqz v2, :cond_1

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Labcd/Oy;->FH:I

    iget-wide v2, v0, Labcd/Oy;->Hw:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/Oy;->Hw:J

    iget-wide v2, p0, Labcd/Ly;->v5:J

    iget-object v1, v0, Labcd/Oy;->j6:[B

    iget v4, v0, Labcd/Oy;->DW:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Labcd/Oy;->DW:I

    aget-byte v1, v1, v4

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    iget-object v0, v0, Labcd/Oy;->J0:Labcd/Fy;

    iget-wide v2, p0, Labcd/Ly;->v5:J

    invoke-interface {v0, v2, v3}, Labcd/Fy;->j6(J)V

    const/4 v0, 0x6

    iput v0, p0, Labcd/Ly;->DW:I

    const/4 v1, 0x2

    goto/16 :goto_0

    :catch_8
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :pswitch_d
    const/4 v1, -0x3

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {v2, v1}, Labcd/Iy;->DW(I)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_26

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    const/4 v2, 0x0

    iput v2, p0, Labcd/Ly;->Zo:I

    goto/16 :goto_2

    :cond_26
    if-nez v1, :cond_27

    move v1, v0

    :cond_27
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v1, v1, Labcd/Oy;->J0:Labcd/Fy;

    invoke-interface {v1}, Labcd/Fy;->getValue()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Ly;->Hw:J

    iget-object v1, p0, Labcd/Ly;->u7:Labcd/Iy;

    invoke-virtual {v1}, Labcd/Iy;->DW()V

    iget v1, p0, Labcd/Ly;->VH:I

    if-nez v1, :cond_28

    const/16 v1, 0xc

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    goto/16 :goto_2

    :cond_28
    const/16 v1, 0x8

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_f
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    const/16 v1, 0x9

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_10
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-wide v4, p0, Labcd/Ly;->v5:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v2, v1

    const-wide/32 v6, 0xff0000

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    const/16 v1, 0xa

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_11
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-wide v4, p0, Labcd/Ly;->v5:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v2, v1

    const-wide/32 v6, 0xff00

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    const/16 v1, 0xb

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_12
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget v3, v2, Labcd/Oy;->FH:I

    if-eqz v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    iput v1, v2, Labcd/Oy;->FH:I

    iget-wide v4, v2, Labcd/Oy;->Hw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Labcd/Oy;->Hw:J

    iget-wide v4, p0, Labcd/Ly;->v5:J

    iget-object v1, v2, Labcd/Oy;->j6:[B

    iget v3, v2, Labcd/Oy;->DW:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v2, Labcd/Oy;->DW:I

    aget-byte v1, v1, v3

    int-to-long v2, v1

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    iget v1, p0, Labcd/Ly;->EQ:I

    if-eqz v1, :cond_29

    iget-wide v2, p0, Labcd/Ly;->v5:J

    const-wide/32 v4, 0xffff

    and-long/2addr v4, v2

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    const-wide/32 v6, -0x1000000

    and-long/2addr v6, v2

    const/16 v1, 0x18

    shr-long/2addr v6, v1

    const-wide/32 v8, 0xff0000

    and-long/2addr v8, v2

    const/16 v1, 0x8

    shr-long/2addr v8, v1

    or-long/2addr v6, v8

    const-wide/32 v8, 0xff00

    and-long/2addr v2, v8

    const/16 v1, 0x8

    shl-long/2addr v2, v1

    or-long/2addr v2, v6

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Labcd/Ly;->v5:J

    :cond_29
    iget-wide v2, p0, Labcd/Ly;->Hw:J

    long-to-int v1, v2

    iget-wide v2, p0, Labcd/Ly;->v5:J

    long-to-int v4, v2

    if-eq v1, v4, :cond_2b

    iget-object v1, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v2, "incorrect data check"

    iput-object v2, v1, Labcd/Oy;->u7:Ljava/lang/String;

    :cond_2a
    :goto_7
    const/16 v1, 0xf

    iput v1, p0, Labcd/Ly;->DW:I

    move v1, v0

    :pswitch_13
    iget v2, p0, Labcd/Ly;->VH:I

    if-eqz v2, :cond_2f

    iget v2, p0, Labcd/Ly;->EQ:I

    if-eqz v2, :cond_2f

    const/4 v2, 0x4

    :try_start_a
    invoke-direct {p0, v2, v1, v0}, Labcd/Ly;->j6(III)I
    :try_end_a
    .catch Labcd/Ly$a; {:try_start_a .. :try_end_a} :catch_9

    move-result v1

    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->u7:Ljava/lang/String;

    if-eqz v2, :cond_2c

    const-string v3, "incorrect data check"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    const/4 v2, 0x5

    iput v2, p0, Labcd/Ly;->Zo:I

    goto/16 :goto_2

    :cond_2b
    iget v1, p0, Labcd/Ly;->EQ:I

    if-eqz v1, :cond_2a

    iget-object v1, p0, Labcd/Ly;->J8:Labcd/Hy;

    if-eqz v1, :cond_2a

    iput-wide v2, v1, Labcd/Hy;->tp:J

    goto :goto_7

    :cond_2c
    iget-wide v2, p0, Labcd/Ly;->v5:J

    iget-object v4, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-wide v6, v4, Labcd/Oy;->gn:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2d

    const-string v2, "incorrect length check"

    iput-object v2, v4, Labcd/Oy;->u7:Ljava/lang/String;

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    goto/16 :goto_2

    :cond_2d
    const/4 v0, 0x0

    iput-object v0, v4, Labcd/Oy;->u7:Ljava/lang/String;

    :cond_2e
    const/16 v0, 0xc

    iput v0, p0, Labcd/Ly;->DW:I

    :pswitch_14
    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_9
    move-exception v0

    iget v1, v0, Labcd/Ly$a;->j6:I

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p0, Labcd/Ly;->tp:Labcd/Oy;

    iget-object v2, v2, Labcd/Oy;->u7:Ljava/lang/String;

    if-eqz v2, :cond_2e

    const-string v3, "incorrect data check"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xd

    iput v2, p0, Labcd/Ly;->DW:I

    const/4 v2, 0x5

    iput v2, p0, Labcd/Ly;->Zo:I

    goto/16 :goto_2

    :pswitch_15
    const/16 v0, 0xd

    iput v0, p0, Labcd/Ly;->DW:I

    iget-object v0, p0, Labcd/Ly;->tp:Labcd/Oy;

    const-string v1, "need dictionary"

    iput-object v1, v0, Labcd/Oy;->u7:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ly;->Zo:I

    const/4 v1, -0x2

    goto/16 :goto_0

    :cond_30
    const/4 v1, -0x2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_15
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_d
        :pswitch_8
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method
