.class public La/i/f;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/g/s;


# instance fields
.field private final a:La/i/n;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(La/i/n;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/i/f;->a:La/i/n;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/a;)V
    .registers 5

    iget-object v0, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->c(La/b/o;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p2, p0}, La/b/b/a;->a(La/b/g/s;)V

    iget-boolean v0, p0, La/i/f;->b:Z

    if-eqz v0, :cond_19

    iget-object v1, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v1, p2}, La/i/n;->a(La/b/o;)V

    iget v1, p2, La/b/b/a;->a:I

    invoke-interface {p1, v1, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    :cond_19
    iput-boolean v0, p0, La/i/f;->b:Z

    iget-boolean v1, p0, La/i/f;->c:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/i/f;->c:Z

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .registers 4

    iget-object v0, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->c(La/b/o;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->a(La/b/o;)V

    :cond_d
    return-void
.end method

.method public a(La/b/e;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, La/i/f;->b:Z

    iput-boolean v0, p0, La/i/f;->c:Z

    return-void
.end method

.method public a(La/b/k;)V
    .registers 6

    iget-object v0, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v0, p1}, La/i/n;->c(La/b/o;)Z

    move-result v0

    iget-object v1, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v1, p1}, La/i/n;->f(La/b/o;)Z

    move-result v1

    if-nez v0, :cond_10

    if-eqz v1, :cond_2c

    :cond_10
    iget-boolean v2, p0, La/i/f;->c:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, La/i/f;->c:Z

    invoke-virtual {p1, p0}, La/b/k;->c(La/b/b/a/f;)V

    iget-boolean v3, p0, La/i/f;->c:Z

    or-int/2addr v0, v3

    iput-boolean v2, p0, La/i/f;->c:Z

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2f

    iget-object v1, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v1, p1}, La/i/n;->a(La/b/o;)V

    invoke-virtual {p1, p0}, La/b/k;->d(La/b/b/a/f;)V

    invoke-virtual {p1, p0}, La/b/k;->b(La/b/b/a/f;)V

    :cond_2c
    :goto_2c
    iput-boolean v0, p0, La/i/f;->b:Z

    return-void

    :cond_2f
    iget-object v1, p0, La/i/f;->a:La/i/n;

    invoke-virtual {v1, p1}, La/i/n;->h(La/b/o;)V

    goto :goto_2c
.end method
