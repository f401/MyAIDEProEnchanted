.class public final Lc/bh;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lc/s;-><init>()V

    sget v0, Lx/b;->a:I

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_e
    invoke-static {p1, v0}, Lx/b;->e([CLjava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_18

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 3
    iput-object p1, p0, Lc/bh;->a:[B

    return-void

    .line 4
    :catch_18
    move-exception p1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot encode string to byte array!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-object p1, p0, Lc/bh;->a:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/bh;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lc/bh;

    iget-object v0, p0, Lc/bh;->a:[B

    iget-object p1, p1, Lc/bh;->a:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 4

    const/16 v0, 0xc

    iget-object v1, p0, Lc/bh;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/bh;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/bh;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lc/bh;->a:[B

    sget v1, Lx/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    array-length v4, v0

    const/16 v5, 0xc0

    const/16 v6, 0xe0

    const/16 v7, 0xf0

    if-ge v2, v4, :cond_2e

    aget-byte v4, v0, v2

    and-int/lit16 v8, v4, 0xf0

    if-ne v8, v7, :cond_1b

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x4

    goto :goto_7

    :cond_1b
    and-int/lit16 v7, v4, 0xe0

    if-ne v7, v6, :cond_22

    add-int/lit8 v2, v2, 0x3

    goto :goto_2b

    :cond_22
    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v5, :cond_29

    add-int/lit8 v2, v2, 0x2

    goto :goto_2b

    :cond_29
    add-int/lit8 v2, v2, 0x1

    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2e
    new-array v2, v3, [C

    const/4 v3, 0x0

    :goto_31
    array-length v4, v0

    if-ge v1, v4, :cond_b8

    aget-byte v4, v0, v1

    and-int/lit16 v8, v4, 0xf0

    if-ne v8, v7, :cond_6f

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x12

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v4, v8

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v4, v8

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v4, v8

    const/high16 v8, 0x10000

    sub-int/2addr v4, v8

    shr-int/lit8 v8, v4, 0xa

    const v9, 0xd800

    or-int/2addr v8, v9

    int-to-char v8, v8

    and-int/lit16 v4, v4, 0x3ff

    const v9, 0xdc00

    or-int/2addr v4, v9

    int-to-char v4, v4

    aput-char v8, v2, v3

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_6f
    and-int/lit16 v8, v4, 0xe0

    if-ne v8, v6, :cond_8b

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v4, v8

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v4, v8

    int-to-char v4, v4

    add-int/lit8 v1, v1, 0x3

    goto :goto_b2

    :cond_8b
    and-int/lit16 v8, v4, 0xd0

    const/16 v9, 0xd0

    if-ne v8, v9, :cond_9a

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    goto :goto_a6

    :cond_9a
    and-int/lit16 v8, v4, 0xc0

    if-ne v8, v5, :cond_ad

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    :goto_a6
    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v4, v8

    int-to-char v4, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_b2

    :cond_ad
    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    add-int/lit8 v1, v1, 0x1

    :goto_b2
    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    :cond_b8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lc/bh;->a:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc/bh;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
