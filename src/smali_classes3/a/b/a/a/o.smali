.class public La/b/a/a/o;
.super La/b/a/a/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a/j;-><init>()V

    return-void
.end method

.method public constructor <init>(II[I[[La/b/a/a/a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, La/b/a/a/j;-><init>(II[I[[La/b/a/a/a;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d/i;)V
    .registers 4

    invoke-interface {p3, p1, p2, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/a/o;)V

    return-void
.end method
