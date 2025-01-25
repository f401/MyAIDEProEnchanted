.class public Lsun1/security/util/BitArray;
.super Ljava/lang/Object;


# static fields
.field private static final NYBBLE:[[B


# instance fields
.field private length:I

.field private repn:[B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/4 v14, 0x4

    new-array v0, v14, [B

    fill-array-data v0, :array_90

    new-array v1, v14, [B

    fill-array-data v1, :array_96

    new-array v2, v14, [B

    fill-array-data v2, :array_9c

    new-array v3, v14, [B

    fill-array-data v3, :array_a2

    new-array v4, v14, [B

    fill-array-data v4, :array_a8

    new-array v5, v14, [B

    fill-array-data v5, :array_ae

    new-array v6, v14, [B

    fill-array-data v6, :array_b4

    new-array v7, v14, [B

    fill-array-data v7, :array_ba

    new-array v8, v14, [B

    fill-array-data v8, :array_c0

    new-array v9, v14, [B

    fill-array-data v9, :array_c6

    new-array v10, v14, [B

    fill-array-data v10, :array_cc

    new-array v11, v14, [B

    fill-array-data v11, :array_d2

    const/16 v12, 0x10

    new-array v12, v12, [[B

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    new-array v1, v14, [B

    fill-array-data v1, :array_d8

    aput-object v1, v12, v0

    const/4 v0, 0x3

    new-array v1, v14, [B

    fill-array-data v1, :array_de

    aput-object v1, v12, v0

    aput-object v2, v12, v14

    const/4 v0, 0x5

    aput-object v3, v12, v0

    const/4 v0, 0x6

    new-array v1, v14, [B

    fill-array-data v1, :array_e4

    aput-object v1, v12, v0

    const/4 v0, 0x7

    aput-object v4, v12, v0

    const/16 v0, 0x8

    new-array v1, v14, [B

    fill-array-data v1, :array_ea

    aput-object v1, v12, v0

    const/16 v0, 0x9

    aput-object v5, v12, v0

    const/16 v0, 0xa

    aput-object v6, v12, v0

    const/16 v0, 0xb

    aput-object v7, v12, v0

    const/16 v0, 0xc

    aput-object v8, v12, v0

    const/16 v0, 0xd

    aput-object v9, v12, v0

    const/16 v0, 0xe

    aput-object v10, v12, v0

    const/16 v0, 0xf

    aput-object v11, v12, v0

    sput-object v12, Lsun1/security/util/BitArray;->NYBBLE:[[B

    return-void

    nop

    :array_90
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_96
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_9c
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_a2
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_a8
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_ae
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_b4
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_ba
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_c0
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_c6
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_cc
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_d2
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_d8
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_de
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_e4
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_ea
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_12

    iput p1, p0, Lsun1/security/util/BitArray;->length:I

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun1/security/util/BitArray;->repn:[B

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_3d

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    if-lt v0, p1, :cond_35

    iput p1, p0, Lsun1/security/util/BitArray;->length:I

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, p1

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    new-array v2, v0, [B

    iput-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v0, :cond_34

    iget-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v2, v0

    and-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    :cond_34
    return-void

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array too short to represent bit array of given length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lsun1/security/util/BitArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lsun1/security/util/BitArray;->length:I

    iput v0, p0, Lsun1/security/util/BitArray;->length:I

    iget-object v0, p1, Lsun1/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun1/security/util/BitArray;->repn:[B

    return-void
.end method

.method public constructor <init>([Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lsun1/security/util/BitArray;->length:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun1/security/util/BitArray;->repn:[B

    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Lsun1/security/util/BitArray;->length:I

    if-lt v0, v1, :cond_14

    return-void

    :cond_14
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lsun1/security/util/BitArray;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private static position(I)I
    .registers 3

    const/4 v0, 0x1

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    return v0
.end method

.method private static subscript(I)I
    .registers 2

    div-int/lit8 v0, p0, 0x8

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lsun1/security/util/BitArray;

    invoke-direct {v0, p0}, Lsun1/security/util/BitArray;-><init>(Lsun1/security/util/BitArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-eqz p1, :cond_4

    instance-of v0, p1, Lsun1/security/util/BitArray;

    if-eqz v0, :cond_4

    check-cast p1, Lsun1/security/util/BitArray;

    iget v0, p1, Lsun1/security/util/BitArray;->length:I

    iget v2, p0, Lsun1/security/util/BitArray;->length:I

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_14
    iget-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-byte v2, v2, v0

    iget-object v3, p1, Lsun1/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public get(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_19

    iget v0, p0, Lsun1/security/util/BitArray;->length:I

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lsun1/security/util/BitArray;->repn:[B

    invoke-static {p1}, Lsun1/security/util/BitArray;->subscript(I)I

    move-result v1

    aget-byte v0, v0, v1

    invoke-static {p1}, Lsun1/security/util/BitArray;->position(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    :cond_19
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget-object v1, p0, Lsun1/security/util/BitArray;->repn:[B

    array-length v3, v1

    if-lt v0, v3, :cond_c

    iget v0, p0, Lsun1/security/util/BitArray;->length:I

    xor-int/2addr v0, v2

    return v0

    :cond_c
    mul-int/lit8 v2, v2, 0x1f

    aget-byte v1, v1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3
.end method

.method public length()I
    .registers 2

    iget v0, p0, Lsun1/security/util/BitArray;->length:I

    return v0
.end method

.method public set(IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_32

    iget v0, p0, Lsun1/security/util/BitArray;->length:I

    if-ge p1, v0, :cond_32

    invoke-static {p1}, Lsun1/security/util/BitArray;->subscript(I)I

    move-result v0

    invoke-static {p1}, Lsun1/security/util/BitArray;->position(I)I

    move-result v1

    if-eqz p2, :cond_20

    iget-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v0

    or-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    :goto_1f
    return-void

    :cond_20
    iget-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    xor-int/lit8 v1, v1, -0x1

    aget-byte v3, v2, v0

    and-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_1f

    :cond_32
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBooleanArray()[Z
    .registers 4

    iget v0, p0, Lsun1/security/util/BitArray;->length:I

    new-array v1, v0, [Z

    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lsun1/security/util/BitArray;->length:I

    if-lt v0, v2, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p0, v0}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lsun1/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x4

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    :goto_8
    iget-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_33

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_14
    iget v1, p0, Lsun1/security/util/BitArray;->length:I

    if-lt v0, v1, :cond_22

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_22
    invoke-virtual {p0, v0}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v1, 0x31

    :goto_2a
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_30
    const/16 v1, 0x30

    goto :goto_2a

    :cond_33
    sget-object v4, Lsun1/security/util/BitArray;->NYBBLE:[[B

    aget-byte v2, v2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v3, v2, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v2, p0, Lsun1/security/util/BitArray;->repn:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v3, v2, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    rem-int/lit8 v2, v0, 0x8

    const/4 v4, 0x7

    if-ne v2, v4, :cond_58

    const/16 v2, 0xa

    :goto_52
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_58
    const/16 v2, 0x20

    goto :goto_52
.end method

.method public truncate()Lsun1/security/util/BitArray;
    .registers 5

    iget v0, p0, Lsun1/security/util/BitArray;->length:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-gez v1, :cond_e

    new-instance v0, Lsun1/security/util/BitArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsun1/security/util/BitArray;-><init>(I)V

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0, v1}, Lsun1/security/util/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lsun1/security/util/BitArray;

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lsun1/security/util/BitArray;->repn:[B

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x8

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lsun1/security/util/BitArray;-><init>(I[B)V

    goto :goto_d

    :cond_26
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5
.end method
