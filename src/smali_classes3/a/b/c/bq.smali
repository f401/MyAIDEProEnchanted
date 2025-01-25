.class public La/b/c/bq;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/a/a/b;


# instance fields
.field private final a:La/b/k;

.field private final b:La/b/a/a/q;


# direct methods
.method public constructor <init>(La/b/k;La/b/a/a/q;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/bq;->a:La/b/k;

    iput-object p2, p0, La/b/c/bq;->b:La/b/a/a/q;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/g;)V
    .registers 5

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/g;

    iget-byte v0, p3, La/b/a/a/a/g;->c:B

    iget p3, p3, La/b/a/a/a/g;->b:I

    invoke-direct {p2, v0, p3}, La/b/a/a/a/g;-><init>(BI)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/k;)V
    .registers 6

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/k;

    iget-byte v0, p3, La/b/a/a/a/k;->c:B

    iget v1, p3, La/b/a/a/a/k;->a:I

    iget p3, p3, La/b/a/a/a/k;->b:I

    invoke-direct {p2, v0, v1, p3}, La/b/a/a/a/k;-><init>(BII)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/l;)V
    .registers 5

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/l;

    iget-byte v0, p3, La/b/a/a/a/l;->c:B

    iget p3, p3, La/b/a/a/a/l;->a:I

    invoke-direct {p2, v0, p3}, La/b/a/a/a/l;-><init>(BI)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/i;La/b/a/a/q;La/b/a/a/a/b;)V
    .registers 5

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/b;

    invoke-direct {p2}, La/b/a/a/a/b;-><init>()V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/a/q;La/b/a/a/a/c;)V
    .registers 5

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/c;

    iget-byte p3, p4, La/b/a/a/a/c;->c:B

    iget p4, p4, La/b/a/a/a/c;->a:I

    invoke-direct {p2, p3, p4}, La/b/a/a/a/c;-><init>(BI)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/a/q;La/b/a/a/a/i;)V
    .registers 5

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/i;

    iget-byte p3, p4, La/b/a/a/a/i;->c:B

    iget p4, p4, La/b/a/a/a/i;->a:I

    invoke-direct {p2, p3, p4}, La/b/a/a/a/i;-><init>(BI)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/a;)V
    .registers 6

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/a;

    iget-byte p3, p5, La/b/a/a/a/a;->c:B

    iget p4, p5, La/b/a/a/a/a;->a:I

    invoke-direct {p2, p3, p4}, La/b/a/a/a/a;-><init>(BI)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/e;)V
    .registers 9

    iget-object p1, p5, La/b/a/a/a/e;->b:[La/b/a/a/a/d;

    iget p1, p5, La/b/a/a/a/e;->a:I

    new-array p1, p1, [La/b/a/a/a/d;

    new-instance p2, La/b/a/a/a/e;

    iget-byte p3, p5, La/b/a/a/a/e;->c:B

    iget p4, p5, La/b/a/a/a/e;->a:I

    invoke-direct {p2, p3, p4, p1}, La/b/a/a/a/e;-><init>(BI[La/b/a/a/a/d;)V

    const/4 p3, 0x0

    :goto_10
    iget p4, p5, La/b/a/a/a/e;->a:I

    if-ge p3, p4, :cond_28

    iget-object p4, p5, La/b/a/a/a/e;->b:[La/b/a/a/a/d;

    aget-object p4, p4, p3

    new-instance v0, La/b/a/a/a/d;

    iget v1, p4, La/b/a/a/a/d;->a:I

    iget v2, p4, La/b/a/a/a/d;->b:I

    iget p4, p4, La/b/a/a/a/d;->c:I

    invoke-direct {v0, v1, v2, p4}, La/b/a/a/a/d;-><init>(III)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_10

    :cond_28
    iput-object p1, p2, La/b/a/a/a/e;->b:[La/b/a/a/a/d;

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/f;)V
    .registers 6

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/f;

    iget-byte p3, p5, La/b/a/a/a/f;->c:B

    iget p4, p5, La/b/a/a/a/f;->a:I

    invoke-direct {p2, p3, p4}, La/b/a/a/a/f;-><init>(BI)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/j;)V
    .registers 6

    iget-object p1, p0, La/b/c/bq;->b:La/b/a/a/q;

    new-instance p2, La/b/a/a/a/j;

    iget-byte p3, p5, La/b/a/a/a/j;->c:B

    iget p4, p5, La/b/a/a/a/j;->a:I

    iget p5, p5, La/b/a/a/a/j;->b:I

    invoke-direct {p2, p3, p4, p5}, La/b/a/a/a/j;-><init>(BII)V

    iput-object p2, p1, La/b/a/a/q;->f:La/b/a/a/a/h;

    return-void
.end method
