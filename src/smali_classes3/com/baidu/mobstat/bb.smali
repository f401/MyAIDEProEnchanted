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

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->c([B)[I

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/bb;->a:[I

    return-void

    :array_0
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
    .registers 4

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private a([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    div-int/lit8 v0, v1, 0x40

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget v3, p0, Lcom/baidu/mobstat/bb;->b:I

    add-int/2addr v3, v0

    invoke-virtual {p0, p1, p2, v3}, Lcom/baidu/mobstat/bb;->a([B[BI)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_0

    rem-int/lit8 v4, v1, 0x40

    invoke-static {p3, p4, v3, v4}, Lcom/baidu/mobstat/ba;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x40

    invoke-static {p3, p4, v3, v4}, Lcom/baidu/mobstat/ba;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static a([I)V
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-static {p0, v1, v2, v3, v4}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x5

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-static {p0, v6, v2, v3, v4}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {p0, v7, v2, v5, v3}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-static {p0, v8, v2, v3, v4}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-static {p0, v1, v2, v5, v3}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-static {p0, v6, v2, v3, v4}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/16 v4, 0xd

    invoke-static {p0, v7, v2, v3, v4}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    const/4 v2, 0x4

    const/16 v3, 0x9

    const/16 v4, 0xe

    invoke-static {p0, v8, v2, v3, v4}, Lcom/baidu/mobstat/bb;->a([IIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a([IIIII)V
    .registers 7

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result v0

    aput v0, p0, p2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bb;->a(II)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static a([I[I)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/mobstat/bb;->a:[I

    sget-object v1, Lcom/baidu/mobstat/bb;->a:[I

    array-length v1, v1

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/baidu/mobstat/bb;->a:[I

    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static c([B)[I
    .registers 3

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v1
.end method


# virtual methods
.method a()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method a([B[BI)Ljava/nio/ByteBuffer;
    .registers 10

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/baidu/mobstat/bb;->c([B)[I

    move-result-object v0

    invoke-static {p2}, Lcom/baidu/mobstat/bb;->c([B)[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/baidu/mobstat/bb;->a([I[II)[I

    move-result-object v3

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a([I)V

    move v1, v2

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget v4, v3, v1

    aget v5, v0, v1

    add-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method a(Ljava/nio/ByteBuffer;[B[B)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, p2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v0

    new-array p3, v0, [B

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/Random;->nextBytes([B)V

    :cond_1
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/baidu/mobstat/be;->a()[B

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p3, v0, p1, v1}, Lcom/baidu/mobstat/bb;->a([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method a(Ljava/nio/ByteBuffer;)[B
    .registers 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/bb;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public a([B[B)[B
    .registers 6

    array-length v0, p1

    const v1, 0x7fffffff

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "data too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/mobstat/bb;->a(Ljava/nio/ByteBuffer;[B[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method a([I[II)[I
    .registers 9

    const/4 v4, 0x0

    array-length v0, p1

    invoke-virtual {p0}, Lcom/baidu/mobstat/bb;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "need 96-bit param, but got a %d-bit param"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v0, p2}, Lcom/baidu/mobstat/bb;->a([I[I)V

    const/16 v1, 0xc

    aput p3, v0, v1

    const/16 v1, 0xd

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public b([B)[B
    .registers 3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/bb;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method
