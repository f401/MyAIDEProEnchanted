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
    .registers 6

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/ak;->b([BII)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static b([BII)J
    .registers 11

    const/16 v0, 0x8

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t read more than eight bytes into a long value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v4, v3

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v3, v2, 0x8

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private b()V
    .registers 6

    const v4, 0x7a143589

    const v3, 0x61c8864f

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/mobstat/ak;->d:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/baidu/mobstat/ak;->d:I

    sub-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x2

    iget v2, p0, Lcom/baidu/mobstat/ak;->d:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x3

    iget v2, p0, Lcom/baidu/mobstat/ak;->d:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method private b([BI)V
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0xd

    const v6, -0x61c8864f

    const v5, -0x7a143589

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v4

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v4}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v4

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-static {v1, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/lit8 v4, p2, 0x8

    invoke-static {p1, v4}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v4

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/lit8 v4, p2, 0xc

    invoke-static {p1, v4}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v4

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/mobstat/ak;->b:[I

    mul-int/2addr v0, v6

    aput v0, v4, v8

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    mul-int/2addr v1, v6

    aput v1, v0, v9

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x2

    mul-int/2addr v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v1, 0x3

    mul-int v2, v3, v6

    aput v2, v0, v1

    iput v8, p0, Lcom/baidu/mobstat/ak;->f:I

    return-void
.end method


# virtual methods
.method protected a()J
    .registers 8

    const v6, 0x165667b1

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const v4, -0x3d4d51c3

    iget v0, p0, Lcom/baidu/mobstat/ak;->e:I

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v0, v0, v1

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v2, v2, v3

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v2, v2, v5

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/ak;->b:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/16 v3, 0x12

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    iget v2, p0, Lcom/baidu/mobstat/ak;->e:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mobstat/ak;->f:I

    :goto_1
    add-int/lit8 v3, v2, -0x4

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-static {v3, v1}, Lcom/baidu/mobstat/ak;->a([BI)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    const/16 v3, 0x11

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v3, 0x27d4eb2f

    mul-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ak;->b:[I

    aget v0, v0, v5

    add-int/2addr v0, v6

    goto :goto_0

    :cond_1
    :goto_2
    iget v2, p0, Lcom/baidu/mobstat/ak;->f:I

    if-ge v1, v2, :cond_2

    const v2, -0x61c8864f

    iget-object v3, p0, Lcom/baidu/mobstat/ak;->c:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    const/16 v3, 0xb

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    const v1, -0x7a143589

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    mul-int/2addr v0, v4

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected a([BII)V
    .registers 9

    const/4 v4, 0x0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/baidu/mobstat/ak;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/baidu/mobstat/ak;->e:I

    add-int v0, p2, p3

    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    add-int/2addr v1, p3

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->c:[B

    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/baidu/mobstat/ak;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/baidu/mobstat/ak;->f:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    rsub-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/baidu/mobstat/ak;->c:[B

    iget v3, p0, Lcom/baidu/mobstat/ak;->f:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/baidu/mobstat/ak;->c:[B

    invoke-direct {p0, v2, v4}, Lcom/baidu/mobstat/ak;->b([BI)V

    add-int/2addr p2, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v0, -0x10

    if-gt p2, v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ak;->b([BI)V

    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    :cond_4
    if-ge p2, v0, :cond_0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/baidu/mobstat/ak;->f:I

    iget-object v0, p0, Lcom/baidu/mobstat/ak;->c:[B

    iget v1, p0, Lcom/baidu/mobstat/ak;->f:I

    invoke-static {p1, p2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
