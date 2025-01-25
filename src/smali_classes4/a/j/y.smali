.class public La/j/y;
.super La/j/t;


# instance fields
.field private final a:[C

.field private final b:[C

.field private final c:I

.field private final d:I

.field private final e:La/j/t;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>([C[CIILa/j/t;)V
    .registers 6

    invoke-direct {p0}, La/j/t;-><init>()V

    iput-object p1, p0, La/j/y;->a:[C

    iput-object p2, p0, La/j/y;->b:[C

    iput p3, p0, La/j/y;->c:I

    iput p4, p0, La/j/y;->d:I

    iput-object p5, p0, La/j/y;->e:La/j/t;

    return-void
.end method

.method private a(C)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, La/j/y;->a:[C

    if-eqz v0, :cond_17

    move v0, v1

    :goto_7
    iget-object v3, p0, La/j/y;->a:[C

    array-length v3, v3

    if-ge v0, v3, :cond_13

    iget-object v3, p0, La/j/y;->a:[C

    aget-char v3, v3, v0

    if-ne v3, p1, :cond_14

    move v1, v2

    :cond_13
    :goto_13
    return v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    iget-object v0, p0, La/j/y;->b:[C

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_1c
    iget-object v3, p0, La/j/y;->b:[C

    array-length v3, v3

    if-ge v0, v3, :cond_2a

    iget-object v3, p0, La/j/y;->b:[C

    aget-char v3, v3, v0

    if-eq v3, p1, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2a
    move v1, v2

    goto :goto_13
.end method

.method private a(Ljava/lang/String;III)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3}, La/j/y;->c(Ljava/lang/String;II)V

    iget-object v0, p0, La/j/y;->e:La/j/t;

    invoke-virtual {v0, p1, p3, p4}, La/j/t;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, La/j/y;->f:Ljava/lang/String;

    iput v1, p0, La/j/y;->g:I

    iput v1, p0, La/j/y;->h:I

    iput-object v0, p0, La/j/y;->i:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;II)Z
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_11

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, La/j/y;->a(C)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_11
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private c(Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, La/j/y;->f:Ljava/lang/String;

    iput p2, p0, La/j/y;->g:I

    iput p3, p0, La/j/y;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, La/j/y;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, La/j/y;->f:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t handle regular expression with referenced wildcard"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, La/j/y;->i:Ljava/lang/String;

    if-nez v0, :cond_1d

    iget-object v0, p0, La/j/y;->f:Ljava/lang/String;

    iget v1, p0, La/j/y;->g:I

    iget v2, p0, La/j/y;->h:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/j/y;->i:Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, La/j/y;->i:Ljava/lang/String;

    goto :goto_1c
.end method

.method protected a(Ljava/lang/String;II)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    sub-int v2, p3, p2

    iget-object v3, p0, La/j/y;->e:La/j/t;

    if-nez v3, :cond_21

    iget v3, p0, La/j/y;->c:I

    if-lt v2, v3, :cond_17

    iget v3, p0, La/j/y;->d:I

    if-gt v2, v3, :cond_17

    invoke-direct {p0, p1, p2, p3}, La/j/y;->b(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    :cond_17
    if-eqz v0, :cond_1d

    invoke-direct {p0, p1, p2, p3}, La/j/y;->c(Ljava/lang/String;II)V

    :goto_1c
    return v0

    :cond_1d
    invoke-direct {p0}, La/j/y;->b()V

    goto :goto_1c

    :cond_21
    iget v3, p0, La/j/y;->c:I

    if-lt v2, v3, :cond_2e

    iget v3, p0, La/j/y;->c:I

    add-int/2addr v3, p2

    invoke-direct {p0, p1, p2, v3}, La/j/y;->b(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_2e
    invoke-direct {p0}, La/j/y;->b()V

    goto :goto_1c

    :cond_32
    iget v3, p0, La/j/y;->d:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v2, p0, La/j/y;->c:I

    :goto_3a
    if-ge v2, v3, :cond_55

    add-int v4, p2, v2

    invoke-direct {p0, p1, p2, v4, p3}, La/j/y;->a(Ljava/lang/String;III)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, La/j/y;->a(C)Z

    move-result v4

    if-nez v4, :cond_52

    invoke-direct {p0}, La/j/y;->b()V

    goto :goto_1c

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_55
    add-int v2, p2, v3

    invoke-direct {p0, p1, p2, v2, p3}, La/j/y;->a(Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-direct {p0}, La/j/y;->b()V

    goto :goto_1c

    :cond_61
    move v0, v1

    goto :goto_1c
.end method
