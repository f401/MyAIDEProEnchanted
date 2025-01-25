.class public Lorg/objectweb/asm/ByteVector;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v1, p1

    if-le v0, v1, :cond_17

    :goto_b
    new-array v0, v0, [B

    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v2, p0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    return-void

    :cond_17
    move v0, v1

    goto :goto_b
.end method


# virtual methods
.method a(II)Lorg/objectweb/asm/ByteVector;
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_d
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    int-to-byte v0, p2

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method b(II)Lorg/objectweb/asm/ByteVector;
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_d
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    int-to-byte v2, p2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method c(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;
    .registers 13

    const/16 v8, 0x7ff

    const/16 v7, 0x7f

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p2

    move v0, p2

    :goto_b
    if-ge v1, v2, :cond_22

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1a

    if-gt v3, v7, :cond_1a

    add-int/lit8 v0, v0, 0x1

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    if-le v3, v8, :cond_1f

    add-int/lit8 v0, v0, 0x3

    goto :goto_17

    :cond_1f
    add-int/lit8 v0, v0, 0x2

    goto :goto_17

    :cond_22
    if-le v0, p3, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2a
    iget v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_41

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v4, v0

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    :cond_41
    iget v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v3, v3

    if-le v1, v3, :cond_4e

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_4e
    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    move v1, v0

    :goto_51
    if-ge p2, v2, :cond_ad

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_67

    if-gt v3, v7, :cond_67

    iget-object v4, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v0, v1, 0x1

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    :goto_63
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_51

    :cond_67
    if-le v3, v8, :cond_92

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    iget-object v4, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto :goto_63

    :cond_92
    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_63

    :cond_ad
    iput v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method public putByte(I)Lorg/objectweb/asm/ByteVector;
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_d
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method public putByteArray([BII)Lorg/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_b

    invoke-direct {p0, p3}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_b
    if-eqz p1, :cond_14

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method public putInt(I)Lorg/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_d
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method public putLong(J)Lorg/objectweb/asm/ByteVector;
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_e

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_e
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    long-to-int v2, p1

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    int-to-byte v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method public putShort(I)Lorg/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_d
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lorg/objectweb/asm/ByteVector;
    .registers 9

    const v6, 0xffff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    iget v0, p0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    array-length v3, v3

    if-le v1, v3, :cond_1e

    add-int/lit8 v1, v2, 0x2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_1e
    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->a:[B

    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v1, v4, 0x1

    int-to-byte v0, v2

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_4c

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_45

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_45

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_45
    iput v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p0, p1, v0, v6}, Lorg/objectweb/asm/ByteVector;->c(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;

    move-result-object p0

    :goto_4b
    return-object p0

    :cond_4c
    iput v1, p0, Lorg/objectweb/asm/ByteVector;->b:I

    goto :goto_4b
.end method
