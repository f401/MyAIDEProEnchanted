.class public La/g/b/c;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


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

    invoke-virtual {v0}, La/g/b/q;->j()Z

    move-result v0

    return v0
.end method

.method private static b(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->F()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget v0, p3, La/b/a/d;->g:I

    if-lez v0, :cond_7

    invoke-static {p2}, La/g/b/c;->b(La/b/j;)V

    :cond_7
    return-void
.end method
