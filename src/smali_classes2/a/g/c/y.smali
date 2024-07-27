.class public La/g/c/y;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/m;
.implements La/b/b/a/f;
.implements La/b/g/s;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method private b(La/b/c;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-static {p1}, La/g/c/c;->b(La/b/c;)La/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/y;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/g;)V
    .registers 4

    invoke-direct {p0, p1}, La/g/c/y;->b(La/b/c;)V

    iget-object v0, p2, La/b/a/g;->e:La/b/c;

    invoke-direct {p0, v0}, La/g/c/y;->b(La/b/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/k;)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p1}, La/g/c/y;->b(La/b/c;)V

    iget-boolean v1, p0, La/g/c/y;->a:Z

    if-nez v1, :cond_2

    invoke-virtual {p2, p1, p0}, La/b/a/k;->a(La/b/c;La/b/a/d/m;)V

    iget v4, p2, La/b/a/k;->c:I

    iget-object v5, p2, La/b/a/k;->d:[La/b/a/l;

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v5, v3

    iput-boolean v0, p0, La/g/c/y;->a:Z

    invoke-virtual {v6, p1, p0}, La/b/a/l;->b(La/b/c;La/b/b/a/f;)V

    invoke-virtual {v6, p1, p0}, La/b/a/l;->a(La/b/c;La/b/b/a/f;)V

    iget-boolean v1, p0, La/g/c/y;->a:Z

    if-nez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    aput-object v6, v5, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v5, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v2, p2, La/b/a/k;->c:I

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, La/g/c/y;->a:Z

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public a(La/b/c;La/b/a/l;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/a/l;->a(La/b/c;La/b/b/a/f;)V

    invoke-virtual {p2, p1, p0}, La/b/a/l;->b(La/b/c;La/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    invoke-direct {p0, v0}, La/g/c/y;->b(La/b/c;)V

    return-void
.end method

.method public a(La/b/k;)V
    .registers 9

    const/4 v3, 0x0

    iget v4, p1, La/b/k;->m:I

    iget-object v5, p1, La/b/k;->n:[La/b/a/a;

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v5, v2

    iput-boolean v3, p0, La/g/c/y;->a:Z

    invoke-virtual {v6, p1, p0}, La/b/a/a;->a(La/b/c;La/b/a/d/i;)V

    iget-boolean v0, p0, La/g/c/y;->a:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput-object v6, v5, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v5, v1, v4, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v1, p1, La/b/k;->m:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method
