.class public La/b/a/r;
.super La/b/a/a;


# instance fields
.field public c:I

.field public d:[La/b/a/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(II[La/b/a/q;)V
    .registers 4

    invoke-direct {p0, p1}, La/b/a/a;-><init>(I)V

    iput p2, p0, La/b/a/r;->c:I

    iput-object p3, p0, La/b/a/r;->d:[La/b/a/q;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/i;)V
    .registers 5

    invoke-interface {p4, p1, p2, p3, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/r;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/r;->c:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, La/b/a/r;->d:[La/b/a/q;

    aget-object v1, v1, v0

    invoke-interface {p4, p1, p2, p3, v1}, La/b/a/d/r;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method
