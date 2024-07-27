.class public Lorg/c/a/a/c/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/b/a/c;->b:I

    iput-object p1, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    return-void
.end method


# virtual methods
.method public a()B
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v1, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public a(I)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/c/a/a/c/b/a/c;->b:I

    return-void
.end method

.method public a([B)V
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/a/c/b/a/c;->b:I

    return-void
.end method

.method public b()I
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v1, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c()I
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v1, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .registers 7

    iget-object v0, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v1, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, v3, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final e()F
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public f()J
    .registers 11

    const-wide v8, 0xffffffffL

    iget-object v0, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v1, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, v3, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v4, v4, v5

    iget-object v5, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v6, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/c/a/a/c/b/a/c;->b:I

    and-long/2addr v0, v8

    const/16 v7, 0x20

    shl-long/2addr v0, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v5, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public g()D
    .registers 3

    invoke-virtual {p0}, Lorg/c/a/a/c/b/a/c;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const/16 v9, 0x80

    invoke-virtual {p0}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    new-array v2, v0, [C

    iget v3, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/2addr v3, v0

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/c/a/a/c/b/a/c;->b:I

    if-lt v4, v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_0
    iget-object v4, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v4, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed input around byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    int-to-char v4, v4

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v5, v5, 0x1

    if-le v5, v3, :cond_1

    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "malformed input: partial character at end"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v5, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v6, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v9, :cond_2

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed input around byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_3
    iget v5, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v5, v5, 0x2

    if-le v5, v3, :cond_3

    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "malformed input: partial character at end"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v5, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v6, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Lorg/c/a/a/c/b/a/c;->a:[B

    iget v7, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/c/a/a/c/b/a/c;->b:I

    aget-byte v6, v6, v7

    and-int/lit16 v7, v5, 0xc0

    if-ne v7, v9, :cond_4

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v9, :cond_5

    :cond_4
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed input around byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/c/a/a/c/b/a/c;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v6, 0x3f

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
