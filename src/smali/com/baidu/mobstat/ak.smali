.class Lcom/baidu/mobstat/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:[I

.field private final c:[B

.field private final d:I

.field private e:I

.field private f:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ak;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/ak;->a:[B

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/ak;->c:[B

    iput p1, p0, Lcom/baidu/mobstat/ak;->d:I

    invoke-direct {p0}, Lcom/baidu/mobstat/ak;->b()V

    return-void
.end method

.method private static a([BI)I
    .registers 4

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/ak;->b([BII)J

    move-result-wide p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static b([BII)J
    .registers 10

    const/16 v0, 0x8

    if-gt p2, v0, :cond_19

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, p2, :cond_18

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-wide v0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t read more than eight bytes into a long value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p0

    :goto_22
    goto :goto_21
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    iget v1, p0, Lcom/baidu/mobstat/ak;->d:I

    const v2, 0x24234428

    add-int/2addr v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    const v2, -0x7a143589

    add-int/2addr v2, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    const v2, 0x61c8864f

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    return-void
.end method

.method private b([BI)V
    .registers 14

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    const/4 v7, 0x3

    aget v0, v0, v7

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v8

    const v9, -0x7a143589

    mul-int v8, v8, v9

    add-int/2addr v2, v8

    const/16 v8, 0xd

    invoke-static {v2, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/lit8 v10, p2, 0x4

    invoke-static {p1, v10}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v10

    mul-int v10, v10, v9

    add-int/2addr v4, v10

    invoke-static {v4, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    add-int/lit8 v10, p2, 0x8

    invoke-static {p1, v10}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v10

    mul-int v10, v10, v9

    add-int/2addr v6, v10

    invoke-static {v6, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result p1

    mul-int p1, p1, v9

    add-int/2addr v0, p1

    invoke-static {v0, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    iget-object p2, p0, Lcom/baidu/mobstat/ak;->b:[I

    const v0, -0x61c8864f

    mul-int v2, v2, v0

    aput v2, p2, v1

    mul-int v4, v4, v0

    aput v4, p2, v3

    mul-int v6, v6, v0

    aput v6, p2, v5

    mul-int p1, p1, v0

    aput p1, p2, v7

    iput v1, p0, Lcom/baidu/mobstat/ak;->f:I

    return-void
.end method


# virtual methods
.method protected a()J
    .registers 7

    iget v0, p0, Lcom/baidu/mobstat/ak;->e:I

    const/16 v1, 0x10

    const v2, 0x165667b1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v0, v1, :cond_36

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v0, v0, v4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget-object v5, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v1, v5, v1

    const/4 v5, 0x7

    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v1, v1, v3

    const/16 v3, 0xc

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    const/16 v3, 0x12

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3b

    :cond_36
    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v0, v0, v3

    add-int/2addr v0, v2

    :goto_3b
    iget v1, p0, Lcom/baidu/mobstat/ak;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    :goto_40
    add-int/lit8 v3, v1, -0x4

    const v5, -0x3d4d51c3

    if-gt v4, v3, :cond_5e

    iget-object v3, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-static {v3, v4}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v3

    mul-int v3, v3, v5

    add-int/2addr v0, v3

    const/16 v3, 0x11

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v3, 0x27d4eb2f

    mul-int v0, v0, v3

    add-int/lit8 v4, v4, 0x4

    goto :goto_40

    :cond_5e
    :goto_5e
    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    if-ge v4, v1, :cond_79

    iget-object v1, p0, Lcom/baidu/mobstat/ak;->c:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v1, -0x61c8864f

    mul-int v0, v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_79
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    const v1, -0x7a143589

    mul-int v0, v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected a([BII)V
    .registers 8

    if-gtz p3, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/baidu/mobstat/ak;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/baidu/mobstat/ak;->e:I

    add-int v0, p2, p3

    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    add-int v2, v1, p3

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1d

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/baidu/mobstat/ak;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/baidu/mobstat/ak;->f:I

    return-void

    :cond_1d
    const/4 p3, 0x0

    if-lez v1, :cond_2d

    rsub-int/lit8 v2, v1, 0x10

    iget-object v3, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-direct {p0, v1, p3}, Lcom/baidu/mobstat/ak;->b([BI)V

    add-int/2addr p2, v2

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v0, -0x10

    if-gt p2, v1, :cond_37

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ak;->b([BI)V

    add-int/lit8 p2, p2, 0x10

    goto :goto_2d

    :cond_37
    if-ge p2, v0, :cond_41

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/baidu/mobstat/ak;->f:I

    iget-object v1, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-static {p1, p2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41
    return-void
.end method
