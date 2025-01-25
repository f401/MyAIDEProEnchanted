.class public La/b/c/ba;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/n;)V
    .registers 11

    iget-object p1, p4, La/b/a/n;->d:[La/b/a/m;

    iget p2, p4, La/b/a/n;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v0, p2, :cond_2f

    aget-object v2, p1, v0

    iget v3, v2, La/b/a/m;->b:I

    iget v4, v2, La/b/a/m;->c:I

    iget v5, p3, La/b/a/d;->e:I

    if-ge v3, v5, :cond_2c

    add-int/lit8 v5, p2, -0x1

    if-eq v0, v5, :cond_1e

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    iget v5, v5, La/b/a/m;->b:I

    if-ge v3, v5, :cond_2c

    :cond_1e
    if-eqz v0, :cond_28

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p1, v3

    iget v3, v3, La/b/a/m;->c:I

    if-eq v4, v3, :cond_2c

    :cond_28
    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2f
    iget p2, p4, La/b/a/n;->c:I

    const/4 p3, 0x0

    invoke-static {p1, v1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v1, p4, La/b/a/n;->c:I

    return-void
.end method
