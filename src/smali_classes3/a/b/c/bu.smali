.class public La/b/c/bu;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/a/a/a;
.implements La/b/a/a/a/a/b;
.implements La/b/a/a/b/h;
.implements La/b/a/d/i;
.implements La/b/a/d/q;
.implements La/b/a/d/r;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/c/v;

.field private b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/v;

    invoke-direct {v0}, La/b/c/v;-><init>()V

    iput-object v0, p0, La/b/c/bu;->a:La/b/c/v;

    return-void
.end method

.method private a(I)I
    .registers 3

    iget-object v0, p0, La/b/c/bu;->b:[I

    aget p1, v0, p1

    return p1
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/a/a/q;->a(La/b/c;La/b/a/a/a/a/b;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/h;)V
    .registers 4

    return-void
.end method

.method public a(La/b/c;La/b/a/a/r;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/a/a/r;->a(La/b/c;La/b/a/a/b/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    iget-object v0, p0, La/b/c/bu;->a:La/b/c/v;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/v;->a(I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/b/c/bu;->a:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 6

    iget p1, p5, La/b/d/k;->b:I

    invoke-direct {p0, p1}, La/b/c/bu;->a(I)I

    move-result p2

    if-eq p2, p1, :cond_16

    new-instance p1, La/b/d/k;

    iget-byte p3, p5, La/b/d/k;->c:B

    iget p5, p5, La/b/d/k;->d:I

    invoke-direct {p1, p3, p2, p5}, La/b/d/k;-><init>(BII)V

    iget-object p2, p0, La/b/c/bu;->a:La/b/c/v;

    invoke-virtual {p2, p4, p1}, La/b/c/v;->b(ILa/b/d/c;)V

    :cond_16
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/e;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, La/b/a/a/a/e;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/a/a;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/e;La/b/a/a/a/d;)V
    .registers 7

    iget p1, p6, La/b/a/a/a/d;->c:I

    invoke-direct {p0, p1}, La/b/c/bu;->a(I)I

    move-result p1

    iput p1, p6, La/b/a/a/a/d;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/o;)V
    .registers 5

    iget p1, p4, La/b/a/o;->e:I

    invoke-direct {p0, p1}, La/b/c/bu;->a(I)I

    move-result p1

    iput p1, p4, La/b/a/o;->e:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/p;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/q;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V
    .registers 5

    iget p1, p4, La/b/a/q;->e:I

    invoke-direct {p0, p1}, La/b/c/bu;->a(I)I

    move-result p1

    iput p1, p4, La/b/a/q;->e:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/r;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/r;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/s;)V
    .registers 7

    iget-object p1, p3, La/b/a/s;->d:[La/b/a/t;

    iget p2, p3, La/b/a/s;->c:I

    new-array p2, p2, [La/b/a/t;

    const/4 v0, 0x0

    :goto_7
    iget v1, p3, La/b/a/s;->c:I

    if-ge v0, v1, :cond_16

    invoke-direct {p0, v0}, La/b/c/bu;->a(I)I

    move-result v1

    aget-object v2, p1, v0

    aput-object v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    iput-object p2, p3, La/b/a/s;->d:[La/b/a/t;

    return-void
.end method

.method public a([I)V
    .registers 2

    iput-object p1, p0, La/b/c/bu;->b:[I

    return-void
.end method
