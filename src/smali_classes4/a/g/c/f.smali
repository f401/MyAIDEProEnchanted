.class public La/g/c/f;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/d/a/d;

.field private final b:La/g/c/a;

.field private final c:La/b/c/v;


# direct methods
.method public constructor <init>(La/b/d/a/d;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/c/a;

    invoke-direct {v0}, La/g/c/a;-><init>()V

    iput-object v0, p0, La/g/c/f;->b:La/g/c/a;

    new-instance v0, La/b/c/v;

    invoke-direct {v0}, La/b/c/v;-><init>()V

    iput-object v0, p0, La/g/c/f;->c:La/b/c/v;

    iput-object p1, p0, La/g/c/f;->a:La/b/d/a/d;

    return-void
.end method

.method private a(La/b/a/d;II)I
    .registers 11

    iget-object v2, p1, La/b/a/d;->f:[B

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_4
    if-gt v1, p2, :cond_16

    if-gt v1, p3, :cond_16

    sub-int v3, p3, v1

    if-eq v3, p2, :cond_16

    sub-int v3, p2, v1

    sub-int v4, p3, v1

    aget-byte v5, v2, v3

    aget-byte v6, v2, v4

    if-eq v5, v6, :cond_17

    :cond_16
    return v0

    :cond_17
    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->a(I)Z

    move-result v5

    iget-object v6, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v6, v4}, La/g/c/a;->a(I)Z

    move-result v6

    xor-int/2addr v5, v6

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v4}, La/g/c/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->e(I)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->f(I)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->g(I)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->h(I)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v3}, La/g/c/a;->c(I)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v4}, La/g/c/a;->g(I)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v4}, La/g/c/a;->h(I)Z

    move-result v5

    if-nez v5, :cond_16

    aget-byte v5, v2, v3

    invoke-direct {p0, v5}, La/g/c/f;->a(B)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v4}, La/g/c/a;->f(I)Z

    move-result v4

    if-eqz v4, :cond_7f

    move v0, v1

    :cond_7f
    iget-object v4, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v4, v3}, La/g/c/a;->f(I)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method private a(B)Z
    .registers 3

    const/16 v0, 0x57

    if-eq p1, v0, :cond_c

    const/16 v0, 0x58

    if-eq p1, v0, :cond_c

    const/16 v0, -0x42

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b(La/b/a/d;II)Z
    .registers 7

    if-ge p3, p2, :cond_1e

    move v0, p3

    move v1, p2

    :goto_4
    if-gt v0, v1, :cond_1c

    iget-object v2, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v2, v0}, La/g/c/a;->g(I)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v2, v0}, La/g/c/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    add-int/lit8 p2, v0, 0x1

    move v0, p2

    goto :goto_4

    :cond_1c
    const/4 v0, 0x0

    goto :goto_17

    :cond_1e
    move v0, p2

    move v1, p3

    goto :goto_4
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    iget-object v0, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v0, p1, p2, p3}, La/g/c/a;->a(La/b/c;La/b/j;La/b/a/d;)V

    iget-object v0, p0, La/g/c/f;->c:La/b/c/v;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/v;->a(I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/c/f;->c:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 12

    iget-byte v1, p5, La/b/d/a;->c:B

    const/16 v0, -0x59

    if-eq v1, v0, :cond_a

    const/16 v0, -0x38

    if-ne v1, v0, :cond_5c

    :cond_a
    iget-object v0, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v0, p4}, La/g/c/a;->f(I)Z

    move-result v0

    if-nez v0, :cond_5c

    iget v2, p5, La/b/d/a;->a:I

    add-int v0, p4, v2

    invoke-direct {p0, p3, p4, v0}, La/g/c/f;->a(La/b/a/d;II)I

    move-result v3

    if-lez v3, :cond_5c

    invoke-direct {p0, p3, p4, v0}, La/g/c/f;->b(La/b/a/d;II)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    :goto_23
    if-gt v0, v3, :cond_3c

    sub-int v4, p4, v0

    iget-object v5, p0, La/g/c/f;->b:La/g/c/a;

    invoke-virtual {v5, v4}, La/g/c/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, La/g/c/f;->c:La/b/c/v;

    invoke-virtual {v5, v4}, La/b/c/v;->e(I)V

    iget-object v5, p0, La/g/c/f;->c:La/b/c/v;

    invoke-virtual {v5, v4}, La/b/c/v;->c(I)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3c
    sub-int v0, v2, v3

    invoke-virtual {p5, p4}, La/b/d/a;->a(I)I

    move-result v2

    if-eq v0, v2, :cond_4e

    new-instance v2, La/b/d/a;

    invoke-direct {v2, v1, v0}, La/b/d/a;-><init>(BI)V

    iget-object v0, p0, La/g/c/f;->c:La/b/c/v;

    invoke-virtual {v0, p4, v2}, La/b/c/v;->b(ILa/b/d/c;)V

    :cond_4e
    iget-object v0, p0, La/g/c/f;->a:La/b/d/a/d;

    if-eqz v0, :cond_5c

    iget-object v0, p0, La/g/c/f;->a:La/b/d/a/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V

    :cond_5c
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
