.class public La/g/b/p;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# instance fields
.field private final a:La/g/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/l;

    invoke-direct {v0, p0}, La/g/l;-><init>(La/b/g/aq;)V

    iput-object v0, p0, La/g/b/p;->a:La/g/l;

    return-void
.end method

.method public static a(La/b/j;)I
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->s()I

    move-result v0

    return v0
.end method

.method private static b(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->O()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 4

    iget-object v0, p0, La/g/b/p;->a:La/g/l;

    invoke-virtual {p2, v0}, La/b/b/q;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 4

    iget-object v0, p0, La/g/b/p;->a:La/g/l;

    invoke-virtual {p2, v0}, La/b/b/r;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 7

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 3

    invoke-static {p2}, La/g/b/p;->b(La/b/j;)V

    return-void
.end method
