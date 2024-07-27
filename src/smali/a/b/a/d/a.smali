.class public La/b/a/d/a;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/g/aq;
.implements La/b/g/s;


# instance fields
.field private final a:Z

.field private final b:La/b/a/d/i;


# direct methods
.method public constructor <init>(La/b/a/d/i;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La/b/a/d/a;-><init>(ZLa/b/a/d/i;)V

    return-void
.end method

.method public constructor <init>(ZLa/b/a/d/i;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/b/a/d/a;->a:Z

    iput-object p2, p0, La/b/a/d/a;->b:La/b/a/d/i;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget-object v0, p0, La/b/a/d/a;->b:La/b/a/d/i;

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/e;La/b/g;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    iget-object v0, p0, La/b/a/d/a;->b:La/b/a/d/i;

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/a/d/i;)V

    iget-boolean v0, p0, La/b/a/d/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->b(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    :cond_0
    return-void
.end method

.method public a(La/b/k;La/b/m;)V
    .registers 4

    iget-object v0, p0, La/b/a/d/a;->b:La/b/a/d/i;

    invoke-virtual {p2, p1, v0}, La/b/m;->a(La/b/k;La/b/a/d/i;)V

    iget-boolean v0, p0, La/b/a/d/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p0}, La/b/m;->a(La/b/k;La/b/a/d/i;)V

    :cond_0
    return-void
.end method
