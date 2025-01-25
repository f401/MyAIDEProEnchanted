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

    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    array-length v4, p1

    if-ge v2, v4, :cond_40

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0xc0

    if-ge v2, v5, :cond_14

    goto :goto_39

    :cond_14
    const/16 v5, 0xe0

    if-ge v2, v5, :cond_24

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    aget-byte v5, p1, v4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_24
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v2, v4

    move v4, v5

    :goto_39
    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_6

    :cond_40
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method private b(Ljava/lang/String;)[B
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x800

    const/16 v5, 0x80

    if-ge v2, v0, :cond_21

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_15

    goto :goto_1d

    :cond_15
    if-ge v6, v5, :cond_19

    const/4 v7, 0x1

    goto :goto_1d

    :cond_19
    if-ge v6, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v7, 0x3

    :goto_1d
    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    new-array v2, v3, [B

    const/4 v3, 0x0

    :goto_24
    if-ge v1, v0, :cond_75

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v6, :cond_39

    add-int/lit8 v6, v3, 0x1

    const/16 v7, -0x40

    aput-byte v7, v2, v3

    add-int/lit8 v3, v6, 0x1

    const/16 v7, -0x80

    aput-byte v7, v2, v6

    goto :goto_72

    :cond_39
    add-int/lit8 v7, v3, 0x1

    if-ge v6, v5, :cond_42

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    :goto_40
    move v3, v7

    goto :goto_72

    :cond_42
    if-ge v6, v4, :cond_56

    ushr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    add-int/lit8 v3, v7, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    goto :goto_72

    :cond_56
    ushr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    add-int/lit8 v3, v7, 0x1

    ushr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    goto :goto_40

    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_75
    return-object v2
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, La/b/b/s;->a:[B

    if-nez v0, :cond_f

    iget-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, La/b/b/s;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, La/b/b/s;->a:[B

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, La/b/b/s;->a:[B

    invoke-direct {p0, v0}, La/b/b/s;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/b/s;->a:[B

    :cond_f
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
    .registers 2

    iput-object p1, p0, La/b/b/s;->a:[B

    const/4 p1, 0x0

    iput-object p1, p0, La/b/b/s;->b:Ljava/lang/String;

    return-void
.end method

.method public b()[B
    .registers 3

    :try_start_0
    invoke-direct {p0}, La/b/b/s;->d()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_6

    iget-object v0, p0, La/b/b/s;->a:[B

    return-object v0

    :catch_6
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
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_6

    iget-object v0, p0, La/b/b/s;->b:Ljava/lang/String;

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
