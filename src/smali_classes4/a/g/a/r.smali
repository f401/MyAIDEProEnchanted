.class La/g/a/r;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/j;


# direct methods
.method private constructor <init>(La/g/a/j;)V
    .registers 2

    iput-object p1, p0, La/g/a/r;->a:La/g/a/j;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/j;La/g/a/k;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/r;-><init>(La/g/a/j;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 9

    invoke-virtual {p5}, La/b/d/k;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, La/g/a/r;->a:La/g/a/j;

    iget v1, p5, La/b/d/k;->b:I

    const/4 v2, 0x0

    invoke-static {v0, p4, v1, v2}, La/g/a/j;->a(La/g/a/j;IILa/d/a/ad;)V

    :cond_e
    return-void
.end method
