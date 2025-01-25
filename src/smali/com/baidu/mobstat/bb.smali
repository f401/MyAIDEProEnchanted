.class public Lcom/baidu/mobstat/bb;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->c([B)[I

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/bb;->a:[I

    return-void

    :array_e
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/bb;->b:I

    return-void
.end method

.method private static a(II)I
    .registers 3

    neg-int v0, p1

    ushr-int v0, p0, v0

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private a([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    div-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_1e

    iget v3, p0, Lcom/baidu/mobstat/bb;->b:I

    add-int/2addr v3, v2

    invoke-virtual {p0, p1, p2, v3}, Lcom/baidu/mobstat/bb;->a([B[BI)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x40

    if-ne v2, v1, :cond_18

    rem-int/lit8 v4, v0, 0x40

    :cond_18
    invoke-static {p3, p4, v3, v4}, Lcom/baidu/mobstat/ba;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method static a([I)V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0xa

    if-ge v2, v3, :cond_3b

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-static {v0, v1, v4, v5, v6}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    invoke-static {v0, v7, v8, v9, v10}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    invoke-static {v0, v11, v12, v3, v13}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    invoke-static {v0, v14, v15, v4, v9}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    invoke-static {v0, v1, v8, v3, v9}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    invoke-static {v0, v7, v12, v4, v6}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    invoke-static {v0, v11, v15, v5, v10}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/16 v3, 0x9

    const/4 v4, 0x4

    invoke-static {v0, v14, v4, v3, v13}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3b
    return-void
.end method

.method static a([IIIII)V
    .registers 7

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v1, p0, p4

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result v0

    aput v0, p0, p4

    aget v1, p0, p3

    add-int/2addr v1, v0

    aput v1, p0, p3

    aget v0, p0, p2

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result v0

    aput v0, p0, p2

    aget v1, p0, p1

    add-int/2addr v1, v0

    aput v1, p0, p1

    aget p1, p0, p4

    xor-int/2addr p1, v1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result p1

    aput p1, p0, p4

    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    aget p1, p0, p2

    xor-int/2addr p1, p4

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method static a([I[I)V
    .registers 5

    sget-object v0, Lcom/baidu/mobstat/bb;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static c([B)[I
    .registers 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method a([B[BI)Ljava/nio/ByteBuffer;
    .registers 7

    invoke-static {p1}, Lcom/baidu/mobstat/bb;->c([B)[I

    move-result-object p1

    invoke-static {p2}, Lcom/baidu/mobstat/bb;->c([B)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/bb;->a([I[II)[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-static {p2}, Lcom/baidu/mobstat/bb;->a([I)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_24

    aget v1, p1, v0

    aget v2, p2, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_24
    const/16 p2, 0x40

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p3, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object p2
.end method

.method a(Ljava/nio/ByteBuffer;[B[B)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, p2

    if-lt v0, v1, :cond_2b

    if-nez p3, :cond_1c

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result p3

    new-array p3, p3, [B

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/Random;->nextBytes([B)V

    :cond_1c
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/baidu/mobstat/be;->a()[B

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/baidu/mobstat/bb;->a([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "data output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/nio/ByteBuffer;)[B
    .registers 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v1

    if-lt v0, v1, :cond_27

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/be;->b()[B

    move-result-object v2

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/baidu/mobstat/bb;->a([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "data too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)[B
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/bb;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public a([B[B)[B
    .registers 6

    array-length v0, p1

    const v1, 0x7fffffff

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/mobstat/bb;->a(Ljava/nio/ByteBuffer;[B[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_1d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "data too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a([I[II)[I
    .registers 7

    array-length v0, p1

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v0, p2}, Lcom/baidu/mobstat/bb;->a([I[I)V

    const/16 p2, 0xc

    aput p3, v0, p2

    const/16 p2, 0xd

    array-length p3, p1

    invoke-static {p1, v2, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "need 96-bit param, but got a %d-bit param"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b([B)[B
    .registers 2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/bb;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    return-object p1
.end method
