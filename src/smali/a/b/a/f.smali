.class public La/b/a/f;
.super La/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, La/b/a/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/d/i;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/a/d/i;->a(La/b/c;La/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/d;La/b/a/d/i;)V
    .registers 4

    invoke-interface {p3, p1, p2, p0}, La/b/a/d/i;->a(La/b/c;La/b/d;La/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d/i;)V
    .registers 4

    invoke-interface {p3, p1, p2, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/f;)V

    return-void
.end method
