.class Lsun/reflect/ByteVectorImpl;
.super Ljava/lang/Object;
.source "ByteVectorImpl.java"

# interfaces
.implements Lsun/reflect/ByteVector;


# instance fields
.field private data:[B

.field private pos:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lsun/reflect/ByteVectorImpl;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, p1, [B

    iput-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    .line 39
    return-void
.end method

.method private resize(I)V
    .registers 6

    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_b

    .line 82
    array-length v0, v0

    mul-int/lit8 p1, v0, 0x2

    .line 84
    :cond_b
    new-array v0, p1, [B

    .line 85
    iget-object v1, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    .line 87
    return-void
.end method


# virtual methods
.method public add(B)V
    .registers 4

    .line 62
    iget v0, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    iget-object v1, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_e

    .line 63
    invoke-direct {p0, v0}, Lsun/reflect/ByteVectorImpl;->resize(I)V

    .line 65
    :cond_e
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    iget v1, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    aput-byte p1, v0, v1

    .line 66
    return-void
.end method

.method public get(I)B
    .registers 3

    .line 46
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    array-length v0, v0

    if-lt p1, v0, :cond_a

    .line 47
    invoke-direct {p0, p1}, Lsun/reflect/ByteVectorImpl;->resize(I)V

    .line 48
    iput p1, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    .line 50
    :cond_a
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getData()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 42
    iget v0, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public put(IB)V
    .registers 4

    .line 54
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    array-length v0, v0

    if-lt p1, v0, :cond_a

    .line 55
    invoke-direct {p0, p1}, Lsun/reflect/ByteVectorImpl;->resize(I)V

    .line 56
    iput p1, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    .line 58
    :cond_a
    iget-object v0, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    aput-byte p2, v0, p1

    .line 59
    return-void
.end method

.method public trim()V
    .registers 5

    const/4 v3, 0x0

    .line 69
    iget v0, p0, Lsun/reflect/ByteVectorImpl;->pos:I

    iget-object v1, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_15

    .line 70
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 71
    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v2, p0, Lsun/reflect/ByteVectorImpl;->data:[B

    .line 74
    :cond_15
    return-void
.end method
