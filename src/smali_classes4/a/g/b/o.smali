.class public La/g/b/o;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/s;


# instance fields
.field private final a:La/g/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/k;

    invoke-direct {v0, p0}, La/g/k;-><init>(La/b/g/s;)V

    iput-object v0, p0, La/g/b/o;->a:La/g/k;

    return-void
.end method

.method public static b(La/b/c;)Z
    .registers 2

    invoke-static {p0}, La/g/b/f;->b(La/b/c;)La/g/b/f;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/f;->d()Z

    move-result v0

    return v0
.end method

.method private static c(La/b/c;)V
    .registers 2

    invoke-static {p0}, La/g/b/ae;->f(La/b/c;)La/g/b/ae;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ae;->o()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;)V
    .registers 2

    invoke-static {p1}, La/g/b/o;->c(La/b/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p0, La/g/b/o;->a:La/g/k;

    invoke-virtual {p2, v0}, La/b/b/a;->a(La/b/g/s;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    iget-byte v0, p5, La/b/d/b;->c:B

    const/16 v1, -0x45

    if-ne v0, v1, :cond_b

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    :cond_b
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
