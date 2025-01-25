.class public La/b/a/c/l;
.super La/b/a/a;


# instance fields
.field public c:I

.field public d:[La/b/a/c/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I[La/b/a/c/c;)V
    .registers 3

    invoke-direct {p0}, La/b/a/a;-><init>()V

    iput p1, p0, La/b/a/c/l;->c:I

    iput-object p2, p0, La/b/a/c/l;->d:[La/b/a/c/c;

    return-void
.end method

.method public constructor <init>([La/b/a/c/c;)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0, p1}, La/b/a/c/l;-><init>(I[La/b/a/c/c;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/c/a/a;)V
    .registers 13

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/c/l;->c:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, La/b/a/c/l;->d:[La/b/a/c/c;

    aget-object v7, v1, v0

    invoke-virtual {v7}, La/b/a/c/c;->b()I

    move-result v6

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v7}, La/b/a/c/a/a;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/i;)V
    .registers 5

    invoke-interface {p4, p1, p2, p3, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/c/l;)V

    return-void
.end method
