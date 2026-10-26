.class public final Lc/bh;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lc/s;-><init>()V

    sget v0, Lx/b;->a:I

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {v0, v1}, Lx/b;->e([CLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 3
    iput-object v0, p0, Lc/bh;->a:[B

    return-void

    .line 4
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot encode string to byte array!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-object p1, p0, Lc/bh;->a:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 2

    instance-of v0, p1, Lc/bh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lc/bh;

    iget-object v0, p0, Lc/bh;->a:[B

    iget-object v1, p1, Lc/bh;->a:[B

    invoke-static {v0, v1}, Lx/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Lc/q;)V
    .locals 2

    const/16 v0, 0xc

    iget-object v1, p0, Lc/bh;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .locals 2

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 10

    const/16 v9, 0xf0

    const/16 v8, 0xe0

    const/16 v7, 0xc0

    const/4 v1, 0x0

    iget-object v4, p0, Lc/bh;->a:[B

    sget v0, Lx/b;->a:I

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_3

    aget-byte v3, v4, v2

    and-int/lit16 v5, v3, 0xf0

    if-ne v5, v9, :cond_0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    and-int/lit16 v5, v3, 0xe0

    if-ne v5, v8, :cond_1

    add-int/lit8 v2, v2, 0x3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v7, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-array v5, v0, [C

    move v0, v1

    move v2, v1

    :goto_2
    array-length v1, v4

    if-ge v2, v1, :cond_8

    aget-byte v1, v4, v2

    and-int/lit16 v3, v1, 0xf0

    if-ne v3, v9, :cond_4

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    const/high16 v3, 0x10000

    sub-int/2addr v1, v3

    shr-int/lit8 v3, v1, 0xa

    const v6, 0xd800

    or-int/2addr v3, v6

    int-to-char v3, v3

    and-int/lit16 v1, v1, 0x3ff

    const v6, 0xdc00

    or-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v3, v5, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    :goto_3
    aput-char v1, v5, v0

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_2

    :cond_4
    and-int/lit16 v3, v1, 0xe0

    if-ne v3, v8, :cond_5

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x3

    goto :goto_3

    :cond_5
    and-int/lit16 v3, v1, 0xd0

    const/16 v6, 0xd0

    if-ne v3, v6, :cond_6

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v3, v1, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v4, v1

    :goto_4
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_6
    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v7, :cond_7

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v3, v1, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v4, v1

    goto :goto_4

    :cond_7
    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc/bh;->a:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/bh;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
