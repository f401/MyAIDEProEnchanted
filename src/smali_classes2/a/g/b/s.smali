.class public La/g/b/s;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method private static a(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->f()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 3

    invoke-static {p2}, La/g/b/s;->a(La/b/j;)V

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 3

    invoke-static {p2}, La/g/b/s;->a(La/b/j;)V

    return-void
.end method
