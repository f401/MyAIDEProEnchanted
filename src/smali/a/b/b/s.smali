.class public La/b/b/s;
.super La/b/b/b;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, La/b/b/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->a:[B

    iput-object p1, p0, La/b/b/s;->b:Ljava/lang/String;

    return-void
.end method

.method private b([B)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    array-length v0, p1

    new-array v5, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v3, v2, 0xff

    const/16 v2, 0xc0

    if-ge v3, v2, :cond_0

    move v2, v4

    :goto_1
    int-to-char v3, v3

    aput-char v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0xe0

    if-ge v3, v2, :cond_1

    and-int/lit8 v2, v3, 0x1f

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, p1, v4

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v6, p1, v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v3, v4

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private b(Ljava/lang/String;)[B
    .registers 11

    const/16 v8, 0x800

    const/16 v7, 0x80

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v2

    move v4, v2

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    if-ge v0, v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-ge v0, v8, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    new-array v4, v4, [B

    move v1, v2

    move v3, v2

    :goto_2
    if-ge v1, v5, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, v3, 0x1

    const/16 v0, -0x40

    aput-byte v0, v4, v3

    add-int/lit8 v0, v2, 0x1

    const/16 v3, -0x80

    aput-byte v3, v4, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    if-ge v2, v7, :cond_5

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    goto :goto_3

    :cond_5
    if-ge v2, v8, :cond_6

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    add-int/lit8 v0, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    goto :goto_3

    :cond_7
    return-object v4
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, La/b/b/s;->a:[B

    if-nez v0, :cond_0

    iget-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, La/b/b/s;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, La/b/b/s;->a:[B

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, La/b/b/s;->a:[B

    invoke-direct {p0, v0}, La/b/b/s;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->a:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/s;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->a:[B

    iput-object p1, p0, La/b/b/s;->b:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .registers 3

    iput-object p1, p0, La/b/b/s;->a:[B

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    return-void
.end method

.method public b()[B
    .registers 3

    :try_start_0
    invoke-direct {p0}, La/b/b/s;->d()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, La/b/b/s;->a:[B

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, La/b/b/s;->e()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
