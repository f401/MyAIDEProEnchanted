.class public La/b/a/n;
.super La/b/a/a;


# instance fields
.field public c:I

.field public d:[La/b/a/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(II[La/b/a/m;)V
    .registers 4

    invoke-direct {p0, p1}, La/b/a/a;-><init>(I)V

    iput p2, p0, La/b/a/n;->c:I

    iput-object p3, p0, La/b/a/n;->d:[La/b/a/m;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 7

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_8
    iget v4, p0, La/b/a/n;->c:I

    if-ge v2, v4, :cond_1e

    iget-object v4, p0, La/b/a/n;->d:[La/b/a/m;

    aget-object v4, v4, v2

    invoke-virtual {v4}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    iget v4, v4, La/b/a/m;->c:I

    if-ge v4, v3, :cond_1b

    move v3, v4

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    if-ne v3, v1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, La/b/a/n;->b(I)La/b/a/m;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/i;)V
    .registers 5

    invoke-interface {p4, p1, p2, p3, p0}, La/b/a/d/i;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/n;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/o;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/n;->c:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, La/b/a/n;->d:[La/b/a/m;

    aget-object v1, v1, v0

    invoke-interface {p4, p1, p2, p3, v1}, La/b/a/d/o;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public b()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, La/b/a/n;->c:I

    if-ge v0, v2, :cond_18

    iget-object v2, p0, La/b/a/n;->d:[La/b/a/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    iget v2, v2, La/b/a/m;->c:I

    if-le v2, v1, :cond_15

    move v1, v2

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    return v1
.end method

.method public b(I)La/b/a/m;
    .registers 5

    iget v0, p0, La/b/a/n;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_12

    iget-object v1, p0, La/b/a/n;->d:[La/b/a/m;

    aget-object v1, v1, v0

    iget v2, v1, La/b/a/m;->b:I

    if-lt p1, v2, :cond_f

    goto :goto_1d

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_12
    iget p1, p0, La/b/a/n;->c:I

    if-lez p1, :cond_1c

    iget-object p1, p0, La/b/a/n;->d:[La/b/a/m;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return-object v1
.end method
