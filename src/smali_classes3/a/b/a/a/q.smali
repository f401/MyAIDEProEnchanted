.class public La/b/a/a/q;
.super La/b/a/a/a;


# instance fields
.field public f:La/b/a/a/a/h;

.field public g:[La/b/a/a/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(II[La/b/a/a/h;La/b/a/a/a/h;[La/b/a/a/s;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, La/b/a/a/a;-><init>(II[La/b/a/a/h;)V

    iput-object p4, p0, La/b/a/a/q;->f:La/b/a/a/a/h;

    iput-object p5, p0, La/b/a/a/q;->g:[La/b/a/a/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a/a/b;)V
    .registers 4

    iget-object v0, p0, La/b/a/a/q;->f:La/b/a/a/a/h;

    invoke-virtual {v0, p1, p0, p2}, La/b/a/a/a/h;->a(La/b/c;La/b/a/a/q;La/b/a/a/a/a/b;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/b/i;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, La/b/a/a/q;->g:[La/b/a/a/s;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-interface {p2, p1, p0, v1}, La/b/a/a/b/i;->a(La/b/c;La/b/a/a/q;La/b/a/a/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
