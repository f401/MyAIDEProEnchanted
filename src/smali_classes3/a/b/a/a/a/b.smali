.class public La/b/a/a/a/b;
.super La/b/a/a/a/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a/a/h;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0, p1}, La/b/a/a/a/h;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/a/b;)V
    .registers 6

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, La/b/d;

    invoke-interface {p3, p1, v0, p2, p0}, La/b/a/a/a/a/b;->a(La/b/c;La/b/d;La/b/a/a/q;La/b/a/a/a/b;)V

    return-void
.end method
