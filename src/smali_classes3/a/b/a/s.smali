.class public La/b/a/s;
.super La/b/a/a;


# instance fields
.field public c:I

.field public d:[La/b/a/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(II[La/b/a/t;)V
    .registers 4

    invoke-direct {p0, p1}, La/b/a/a;-><init>(I)V

    iput p2, p0, La/b/a/s;->c:I

    iput-object p3, p0, La/b/a/s;->d:[La/b/a/t;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d/i;)V
    .registers 4

    invoke-interface {p3, p1, p2, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/s;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d/u;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/s;->c:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, La/b/a/s;->d:[La/b/a/t;

    aget-object v1, v1, v0

    invoke-interface {p3, p1, p2, v0, v1}, La/b/a/d/u;->a(La/b/c;La/b/j;ILa/b/a/t;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method
