.class public final Lcom/a/b/g/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/a/b/g/e;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-ge p3, p2, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    array-length v0, p1

    if-le p3, v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    iput-object p1, p0, Lcom/a/b/g/e;->a:[B

    iput p2, p0, Lcom/a/b/g/e;->b:I

    sub-int v0, p3, p2

    iput v0, p0, Lcom/a/b/g/e;->c:I

    return-void
.end method

.method static synthetic a(Lcom/a/b/g/e;)I
    .registers 2

    iget v0, p0, Lcom/a/b/g/e;->c:I

    return v0
.end method

.method static synthetic a(Lcom/a/b/g/e;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->h(I)I

    move-result v0

    return v0
.end method

.method private b(II)V
    .registers 6

    if-ltz p1, :cond_8

    if-lt p2, p1, :cond_8

    iget v0, p0, Lcom/a/b/g/e;->c:I

    if-le p2, v0, :cond_33

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/b/g/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-void
.end method

.method static synthetic b(Lcom/a/b/g/e;)[B
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/e;->a:[B

    return-object v0
.end method

.method static synthetic c(Lcom/a/b/g/e;)I
    .registers 2

    iget v0, p0, Lcom/a/b/g/e;->b:I

    return v0
.end method

.method private g(I)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/g/e;->a:[B

    iget v1, p0, Lcom/a/b/g/e;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method private h(I)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/g/e;->a:[B

    iget v1, p0, Lcom/a/b/g/e;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/g/e;->c:I

    return v0
.end method

.method public a(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/e;->b(II)V

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->g(I)I

    move-result v0

    return v0
.end method

.method public a(II)Lcom/a/b/g/e;
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/a/b/g/e;->b(II)V

    new-instance v0, Lcom/a/b/g/e;

    iget-object v1, p0, Lcom/a/b/g/e;->a:[B

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/g/e;-><init>([B)V

    return-object v0
.end method

.method public a([BI)V
    .registers 6

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/a/b/g/e;->c:I

    if-ge v0, v1, :cond_e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "(out.length - offset) < size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/a/b/g/e;->a:[B

    iget v1, p0, Lcom/a/b/g/e;->b:I

    iget v2, p0, Lcom/a/b/g/e;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/e;->b(II)V

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->g(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/a/b/g/e;->h(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public b()Lcom/a/b/g/f;
    .registers 3

    new-instance v0, Lcom/a/b/g/f;

    invoke-virtual {p0}, Lcom/a/b/g/e;->c()Lcom/a/b/g/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/g/f;-><init>(Lcom/a/b/g/g;)V

    return-object v0
.end method

.method public c(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/e;->b(II)V

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->g(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/a/b/g/e;->h(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lcom/a/b/g/e;->h(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-direct {p0, v1}, Lcom/a/b/g/e;->h(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public c()Lcom/a/b/g/g;
    .registers 2

    new-instance v0, Lcom/a/b/g/g;

    invoke-direct {v0, p0}, Lcom/a/b/g/g;-><init>(Lcom/a/b/g/e;)V

    return-object v0
.end method

.method public d(I)J
    .registers 8

    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/e;->b(II)V

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->g(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/a/b/g/e;->h(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Lcom/a/b/g/e;->h(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x3

    invoke-direct {p0, v3}, Lcom/a/b/g/e;->h(I)I

    move-result v3

    add-int/lit8 v4, p1, 0x4

    invoke-direct {p0, v4}, Lcom/a/b/g/e;->g(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, p1, 0x5

    invoke-direct {p0, v5}, Lcom/a/b/g/e;->h(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x6

    invoke-direct {p0, v5}, Lcom/a/b/g/e;->h(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x7

    invoke-direct {p0, v5}, Lcom/a/b/g/e;->h(I)I

    move-result v5

    or-int/2addr v4, v5

    int-to-long v4, v4

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public e(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/e;->b(II)V

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->h(I)I

    move-result v0

    return v0
.end method

.method public f(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/a/b/g/e;->b(II)V

    invoke-direct {p0, p1}, Lcom/a/b/g/e;->h(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/a/b/g/e;->h(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
