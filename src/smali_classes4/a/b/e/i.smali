.class La/b/e/i;
.super La/b/f/w;

# interfaces
.implements La/b/a/c/a/b;


# instance fields
.field final a:La/b/e/c;


# direct methods
.method private constructor <init>(La/b/e/c;)V
    .registers 2

    iput-object p1, p0, La/b/e/i;->a:La/b/e/c;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/b/e/c;La/b/e/d;)V
    .registers 3

    invoke-direct {p0, p1}, La/b/e/i;-><init>(La/b/e/c;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/i;)V
    .registers 8

    iget-object v0, p0, La/b/e/i;->a:La/b/e/c;

    invoke-static {v0}, La/b/e/c;->a(La/b/e/c;)La/b/e/k;

    move-result-object v0

    iget v1, p5, La/b/a/c/i;->a:I

    invoke-virtual {v0, v1}, La/b/e/k;->d(I)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/q;)V
    .registers 8

    iget-object v0, p0, La/b/e/i;->a:La/b/e/c;

    invoke-static {v0}, La/b/e/c;->a(La/b/e/c;)La/b/e/k;

    move-result-object v0

    iget v1, p5, La/b/a/c/q;->a:I

    invoke-virtual {v0, v1}, La/b/e/k;->d(I)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/r;)V
    .registers 6

    return-void
.end method
