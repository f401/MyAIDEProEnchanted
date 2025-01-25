.class public La/g/b/w;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


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

    invoke-virtual {v0}, La/g/b/q;->c()Z

    move-result v0

    return v0
.end method

.method private static b(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->b()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 3

    invoke-static {p2}, La/g/b/w;->b(La/b/j;)V

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 3

    invoke-static {p2}, La/g/b/w;->b(La/b/j;)V

    return-void
.end method
