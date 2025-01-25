.class public La/b/a/c/n;
.super La/b/a/a;


# instance fields
.field public c:I

.field public d:[La/b/a/c/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I[La/b/a/c/m;)V
    .registers 3

    invoke-direct {p0}, La/b/a/a;-><init>()V

    iput p1, p0, La/b/a/c/n;->c:I

    iput-object p2, p0, La/b/a/c/n;->d:[La/b/a/c/m;

    return-void
.end method

.method public constructor <init>([La/b/a/c/m;)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0, p1}, La/b/a/c/n;-><init>(I[La/b/a/c/m;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/c/a/a;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, La/b/a/c/n;->c:I

    if-ge v1, v3, :cond_21

    iget-object v3, p0, La/b/a/c/n;->d:[La/b/a/c/m;

    aget-object v4, v3, v1

    invoke-virtual {v4}, La/b/a/c/m;->b()I

    move-result v3

    if-nez v1, :cond_13

    const/4 v5, 0x0

    goto :goto_14

    :cond_13
    const/4 v5, 0x1

    :goto_14
    add-int/2addr v5, v3

    add-int/2addr v2, v5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, v2

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, La/b/a/c/m;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_21
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/i;)V
    .registers 5

    invoke-interface {p4, p1, p2, p3, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/c/n;)V

    return-void
.end method
