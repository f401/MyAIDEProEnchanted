.class La/e/aa;
.super Ljava/io/FilterReader;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, -0x2

    iput v0, p0, La/e/aa;->a:I

    return-void
.end method


# virtual methods
.method public read()I
    .registers 6

    const/16 v4, 0xd

    const/4 v3, -0x2

    const/16 v1, 0xa

    :cond_5
    iget v0, p0, La/e/aa;->a:I

    if-eq v0, v3, :cond_12

    iget v0, p0, La/e/aa;->a:I

    :goto_b
    iput v3, p0, La/e/aa;->a:I

    if-eq v0, v1, :cond_17

    if-eq v0, v4, :cond_17

    :goto_11
    return v0

    :cond_12
    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result v0

    goto :goto_b

    :cond_17
    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result v2

    if-eq v2, v1, :cond_1f

    if-ne v2, v4, :cond_2d

    :cond_1f
    if-eq v0, v2, :cond_2d

    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result v0

    :goto_25
    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    iput v0, p0, La/e/aa;->a:I

    move v0, v1

    goto :goto_11

    :cond_2d
    move v0, v2

    goto :goto_25
.end method

.method public read([CII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_a

    invoke-virtual {p0}, La/e/aa;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    :cond_a
    return v0

    :cond_b
    add-int v2, v0, p2

    int-to-char v1, v1

    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public skip(J)J
    .registers 8

    const/4 v0, 0x0

    :goto_1
    int-to-long v2, v0

    cmp-long v1, v2, p1

    if-gez v1, :cond_d

    invoke-virtual {p0}, La/e/aa;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    :cond_d
    int-to-long v0, v0

    return-wide v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
