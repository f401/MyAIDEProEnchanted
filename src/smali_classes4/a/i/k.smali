.class La/i/k;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/aq;
.implements La/b/g/s;


# instance fields
.field final a:La/i/i;

.field private b:La/b/c;

.field private c:Z


# direct methods
.method private constructor <init>(La/i/i;)V
    .registers 2

    iput-object p1, p0, La/i/k;->a:La/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/i/i;La/i/j;)V
    .registers 3

    invoke-direct {p0, p1}, La/i/k;-><init>(La/i/i;)V

    return-void
.end method

.method private a(La/b/o;)V
    .registers 4

    iget-object v0, p0, La/i/k;->a:La/i/i;

    invoke-virtual {v0, p1}, La/i/i;->c(La/b/o;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, La/i/k;->a:La/i/i;

    invoke-virtual {v0, p1}, La/i/i;->g(La/b/o;)La/i/h;

    move-result-object v0

    iget-object v1, p0, La/i/k;->b:La/b/c;

    invoke-virtual {v0, v1}, La/i/h;->a(La/b/c;)Z

    move-result v1

    iput-boolean v1, p0, La/i/k;->c:Z

    iget-boolean v1, p0, La/i/k;->c:Z

    if-nez v1, :cond_20

    invoke-virtual {v0, p0}, La/i/h;->a(La/b/g/s;)V

    invoke-virtual {v0, p0}, La/i/h;->a(La/b/g/aq;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 2

    invoke-direct {p0, p1}, La/i/k;->a(La/b/o;)V

    return-void
.end method

.method public a(La/b/e;La/b/f;)V
    .registers 3

    invoke-direct {p0, p2}, La/i/k;->a(La/b/o;)V

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 3

    invoke-direct {p0, p2}, La/i/k;->a(La/b/o;)V

    return-void
.end method

.method public a(La/b/k;)V
    .registers 2

    invoke-direct {p0, p1}, La/i/k;->a(La/b/o;)V

    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 3

    invoke-direct {p0, p2}, La/i/k;->a(La/b/o;)V

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 3

    invoke-direct {p0, p2}, La/i/k;->a(La/b/o;)V

    return-void
.end method
