.class La/g/a/d;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/a;


# direct methods
.method private constructor <init>(La/g/a/a;)V
    .registers 2

    iput-object p1, p0, La/g/a/d;->a:La/g/a/a;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/a;La/g/a/b;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/d;-><init>(La/g/a/a;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 12

    iget-object v0, p0, La/g/a/d;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/v;->c(I)V

    iget-object v0, p0, La/g/a/d;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->c(La/g/a/a;)La/b/d/a/d;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/a/d;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->c(La/g/a/a;)La/b/d/a/d;

    move-result-object v5

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_1f
    return-void
.end method
