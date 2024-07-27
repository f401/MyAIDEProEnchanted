.class public La/i/g;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/q;
.implements La/b/a/d/r;
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

    iput-object p1, p0, La/i/g;->a:La/i/n;

    return-void
.end method

.method private a(La/b/c;I)V
    .registers 3

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 4

    iget-object v0, p0, La/i/g;->a:La/i/n;

    invoke-virtual {v0, p2}, La/i/n;->a(La/b/o;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/o;)V
    .registers 7

    const/4 v1, 0x1

    iput-boolean v1, p0, La/i/g;->c:Z

    invoke-virtual {p4, p0}, La/b/a/o;->a(La/b/g/s;)V

    iget-boolean v0, p0, La/i/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/i/g;->a:La/i/n;

    invoke-virtual {v0, p4}, La/i/n;->a(La/b/o;)V

    iget v0, p4, La/b/a/o;->c:I

    invoke-direct {p0, p1, v0}, La/i/g;->a(La/b/c;I)V

    iget v0, p4, La/b/a/o;->d:I

    invoke-direct {p0, p1, v0}, La/i/g;->a(La/b/c;I)V

    iput-boolean v1, p0, La/i/g;->b:Z

    :cond_0
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, La/i/g;->b:Z

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/p;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/q;)V

    iget-boolean v0, p0, La/i/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/i/g;->a:La/i/n;

    invoke-virtual {v0, p4}, La/i/n;->a(La/b/o;)V

    iget v0, p4, La/b/a/p;->a:I

    invoke-direct {p0, p1, v0}, La/i/g;->a(La/b/c;I)V

    :cond_0
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V
    .registers 7

    const/4 v1, 0x1

    iput-boolean v1, p0, La/i/g;->c:Z

    invoke-virtual {p4, p0}, La/b/a/q;->a(La/b/g/s;)V

    iget-boolean v0, p0, La/i/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/i/g;->a:La/i/n;

    invoke-virtual {v0, p4}, La/i/n;->a(La/b/o;)V

    iget v0, p4, La/b/a/q;->c:I

    invoke-direct {p0, p1, v0}, La/i/g;->a(La/b/c;I)V

    iget v0, p4, La/b/a/q;->d:I

    invoke-direct {p0, p1, v0}, La/i/g;->a(La/b/c;I)V

    iput-boolean v1, p0, La/i/g;->b:Z

    :cond_0
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, La/i/g;->b:Z

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/r;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/r;)V

    iget-boolean v0, p0, La/i/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/i/g;->a:La/i/n;

    invoke-virtual {v0, p4}, La/i/n;->a(La/b/o;)V

    iget v0, p4, La/b/a/r;->a:I

    invoke-direct {p0, p1, v0}, La/i/g;->a(La/b/c;I)V

    :cond_0
    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    iget-object v0, p0, La/i/g;->a:La/i/n;

    invoke-virtual {v0, p1}, La/i/n;->c(La/b/o;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/i/g;->c:Z

    :cond_0
    return-void
.end method
