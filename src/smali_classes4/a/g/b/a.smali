.class public La/g/b/a;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;
.implements La/b/g/s;


# instance fields
.field private a:La/b/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method public static a(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->n()Z

    move-result v0

    return v0
.end method

.method public static b(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->o()Z

    move-result v0

    return v0
.end method

.method public static c(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->p()Z

    move-result v0

    return v0
.end method

.method private static d(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->J()V

    return-void
.end method

.method private static e(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->K()V

    return-void
.end method

.method private static f(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->L()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;)V
    .registers 3

    invoke-interface {p1}, La/b/c;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    iget-object v0, p0, La/g/b/a;->a:La/b/j;

    invoke-static {v0}, La/g/b/a;->e(La/b/j;)V

    :cond_d
    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 3

    invoke-virtual {p2, p0}, La/b/b/a;->a(La/b/g/s;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/b/h;->b(La/b/c;La/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 4

    iget v0, p2, La/b/b/j;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 3

    invoke-virtual {p2, p0}, La/b/b/r;->a(La/b/g/s;)V

    invoke-virtual {p2, p0}, La/b/b/r;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/i;)V
    .registers 5

    invoke-interface {p2}, La/b/i;->a()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_e

    iget-object v0, p0, La/g/b/a;->a:La/b/j;

    invoke-static {v0}, La/g/b/a;->d(La/b/j;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_18

    iget-object v0, p0, La/g/b/a;->a:La/b/j;

    invoke-static {v0}, La/g/b/a;->f(La/b/j;)V

    goto :goto_d

    :cond_18
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    iget-object v0, p0, La/g/b/a;->a:La/b/j;

    invoke-static {v0}, La/g/b/a;->e(La/b/j;)V

    goto :goto_d
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 7

    iput-object p2, p0, La/g/b/a;->a:La/b/j;

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 4

    iget v0, p2, La/b/b/q;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    invoke-virtual {p2, p0}, La/b/b/q;->a(La/b/g/s;)V

    invoke-virtual {p2, p0}, La/b/b/q;->a(La/b/g/aq;)V

    return-void
.end method
