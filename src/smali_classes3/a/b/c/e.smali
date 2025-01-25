.class La/b/c/e;
.super La/b/g/bj;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/b/c/a;


# direct methods
.method public constructor <init>(La/b/c/a;La/b/g/aq;)V
    .registers 3

    iput-object p1, p0, La/b/c/e;->a:La/b/c/a;

    invoke-direct {p0, p2}, La/b/g/bj;-><init>(La/b/g/aq;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;La/b/a/a/h;)V
    .registers 6

    iget-object v0, p0, La/b/c/e;->a:La/b/c/a;

    const/16 v1, 0x8

    invoke-static {v0, v1}, La/b/c/a;->a(La/b/c/a;I)I

    iget-object v0, p0, La/b/c/e;->a:La/b/c/a;

    iget-object v1, p3, La/b/a/a/h;->d:La/b/c;

    invoke-static {v0, v1}, La/b/c/a;->a(La/b/c/a;La/b/c;)La/b/c;

    invoke-super {p0, p1, p2, p3}, La/b/g/bj;->a(La/b/c;La/b/a/a/a;La/b/a/a/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 3

    iget-object p1, p0, La/b/c/e;->a:La/b/c/a;

    iget-object p2, p2, La/b/b/a;->b:La/b/c;

    invoke-static {p1, p2}, La/b/c/a;->a(La/b/c/a;La/b/c;)La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 6

    iget-object p3, p0, La/b/c/e;->a:La/b/c/a;

    invoke-interface {p2}, La/b/j;->a()I

    move-result p2

    invoke-static {p3, p2}, La/b/c/a;->a(La/b/c/a;I)I

    iget p2, p5, La/b/d/b;->a:I

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 5

    invoke-virtual {p2, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, La/b/c/e;->a:La/b/c/a;

    iget-object v1, p2, La/b/b/q;->c:La/b/c;

    invoke-static {v0, v1}, La/b/c/a;->a(La/b/c/a;La/b/c;)La/b/c;

    goto :goto_17

    :cond_12
    iget v0, p2, La/b/b/q;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    :goto_17
    invoke-super {p0, p1, p2}, La/b/g/bj;->b(La/b/c;La/b/b/q;)V

    return-void
.end method
