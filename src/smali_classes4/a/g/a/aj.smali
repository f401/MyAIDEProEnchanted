.class public La/g/a/aj;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/q;
.implements La/b/a/d/r;


# instance fields
.field private final a:Z

.field private final b:La/b/g/aq;

.field private final c:La/g/a/s;

.field private final d:La/b/c/bu;

.field private e:La/b/c/bs;

.field private f:[I


# direct methods
.method public constructor <init>(ZLa/b/g/aq;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/a/s;

    invoke-direct {v0}, La/g/a/s;-><init>()V

    iput-object v0, p0, La/g/a/aj;->c:La/g/a/s;

    new-instance v0, La/b/c/bu;

    invoke-direct {v0}, La/b/c/bu;-><init>()V

    iput-object v0, p0, La/g/a/aj;->d:La/b/c/bu;

    new-instance v0, La/b/c/bs;

    invoke-direct {v0}, La/b/c/bs;-><init>()V

    iput-object v0, p0, La/g/a/aj;->e:La/b/c/bs;

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, La/g/a/aj;->f:[I

    iput-boolean p1, p0, La/g/a/aj;->a:Z

    iput-object p2, p0, La/g/a/aj;->b:La/b/g/aq;

    return-void
.end method

.method private a(La/b/a/d;)V
    .registers 4

    iget v0, p1, La/b/a/d;->e:I

    iget-object v1, p0, La/g/a/aj;->f:[I

    array-length v1, v1

    if-ge v1, v0, :cond_b

    new-array v0, v0, [I

    iput-object v0, p0, La/g/a/aj;->f:[I

    :cond_b
    return-void
.end method

.method private a(III)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_30

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1, p1}, La/g/a/s;->a(II)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1, p2}, La/g/a/s;->a(II)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_14
    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1, p1}, La/g/a/s;->b(II)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1, p2}, La/g/a/s;->b(II)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_24
    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1, p1}, La/g/a/s;->c(II)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method private b(III)V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    if-ge v0, p3, :cond_2c

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v0, p1}, La/g/a/s;->a(II)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v0, p1, v1}, La/g/a/s;->a(IIZ)V

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v0, p2, v3}, La/g/a/s;->a(IIZ)V

    :cond_17
    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v0, p1}, La/g/a/s;->b(II)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v0, p1, v1}, La/g/a/s;->b(IIZ)V

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v0, p2, v3}, La/g/a/s;->b(IIZ)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2c
    return-void
.end method

.method private c(III)I
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_14

    iget-object v1, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v1, v0}, La/g/a/s;->a(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v1, v0, p3}, La/g/a/s;->a(II)Z

    move-result v1

    if-eqz v1, :cond_15

    move p2, v0

    :cond_14
    return p2

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private d(III)I
    .registers 7

    add-int/lit8 v1, p2, -0x1

    move v0, p2

    :goto_3
    if-lt v1, p1, :cond_1a

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1}, La/g/a/s;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v2, v1, p3}, La/g/a/s;->a(II)Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_1a
    move v0, p2

    goto :goto_15
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p3}, La/g/a/aj;->a(La/b/a/d;)V

    iget-object v0, p0, La/g/a/aj;->c:La/g/a/s;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/s;->a(La/b/c;La/b/j;La/b/a/d;)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    invoke-interface {p2}, La/b/j;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_19

    iget-boolean v0, p0, La/g/a/aj;->a:Z

    if-eqz v0, :cond_4d

    :cond_19
    move v0, v2

    :goto_1a
    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, La/b/j;->a()I

    move-result v4

    invoke-static {v3, v4}, La/b/f/i;->c(Ljava/lang/String;I)I

    move-result v5

    iget v6, p3, La/b/a/d;->d:I

    iget v7, p3, La/b/a/d;->e:I

    move v3, v2

    move v4, v2

    :goto_2c
    if-ge v4, v6, :cond_52

    iget-object v2, p0, La/g/a/aj;->f:[I

    aput v4, v2, v4

    if-lt v4, v5, :cond_70

    const/16 v2, 0x40

    if-ge v4, v2, :cond_70

    move v2, v0

    :goto_39
    if-ge v2, v4, :cond_70

    invoke-direct {p0, v4, v2, v7}, La/g/a/aj;->a(III)Z

    move-result v8

    if-eqz v8, :cond_4f

    iget-object v3, p0, La/g/a/aj;->f:[I

    aput v2, v3, v4

    invoke-direct {p0, v4, v2, v7}, La/g/a/aj;->b(III)V

    move v2, v1

    :goto_49
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_2c

    :cond_4d
    move v0, v1

    goto :goto_1a

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_52
    if-eqz v3, :cond_6a

    iget-object v0, p0, La/g/a/aj;->d:La/b/c/bu;

    iget-object v1, p0, La/g/a/aj;->f:[I

    invoke-virtual {v0, v1}, La/b/c/bu;->a([I)V

    iget-object v0, p0, La/g/a/aj;->d:La/b/c/bu;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/bu;->a(La/b/c;La/b/j;La/b/a/d;)V

    iget-object v0, p0, La/g/a/aj;->b:La/b/g/aq;

    if-eqz v0, :cond_69

    iget-object v0, p0, La/g/a/aj;->b:La/b/g/aq;

    invoke-interface {p2, p1, v0}, La/b/j;->a(La/b/c;La/b/g/aq;)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, La/g/a/aj;->e:La/b/c/bs;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/bs;->a(La/b/c;La/b/j;La/b/a/d;)V

    goto :goto_69

    :cond_70
    move v2, v3

    goto :goto_49
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/o;)V
    .registers 8

    iget v0, p4, La/b/a/o;->e:I

    iget v1, p4, La/b/a/o;->a:I

    iget v2, p4, La/b/a/o;->b:I

    add-int/2addr v2, v1

    invoke-direct {p0, v1, v2, v0}, La/g/a/aj;->c(III)I

    move-result v1

    invoke-direct {p0, v1, v2, v0}, La/g/a/aj;->d(III)I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_14

    iput v1, p4, La/b/a/o;->a:I

    :cond_14
    iput v0, p4, La/b/a/o;->b:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/p;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/q;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V
    .registers 8

    iget v0, p4, La/b/a/q;->e:I

    iget v1, p4, La/b/a/q;->a:I

    iget v2, p4, La/b/a/q;->b:I

    add-int/2addr v2, v1

    invoke-direct {p0, v1, v2, v0}, La/g/a/aj;->c(III)I

    move-result v1

    invoke-direct {p0, v1, v2, v0}, La/g/a/aj;->d(III)I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_14

    iput v1, p4, La/b/a/q;->a:I

    :cond_14
    iput v0, p4, La/b/a/q;->b:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/r;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/r;)V

    return-void
.end method
