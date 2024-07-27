.class public La/b/c/aw;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/g/s;


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

.method public a(La/b/c;La/b/a/u;)V
    .registers 16

    const/4 v2, 0x0

    iget-object v7, p2, La/b/a/u;->d:[La/b/c;

    if-nez v7, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, La/b/f/q;

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, La/b/f/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, La/b/f/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, La/b/f/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    new-instance v3, La/b/f/j;

    invoke-direct {v3, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, La/b/f/j;->a()I

    move-result v6

    move v4, v2

    move v0, v2

    move v3, v2

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v9, v7, v0

    aput-object v9, v1, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    array-length v0, v7

    new-array v0, v0, [La/b/c;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    move v3, v2

    :cond_2
    invoke-virtual {v5}, La/b/f/q;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    new-instance v5, La/b/f/j;

    invoke-direct {v5, v4}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, La/b/f/j;->a()I

    move-result v5

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v6, v7, v0

    aput-object v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_3
    invoke-interface {p1}, La/b/c;->d()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {p1, v4}, La/b/c;->a(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, La/b/f/q;

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, La/b/f/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, La/b/f/q;->e()Ljava/lang/String;

    move v5, v0

    :cond_4
    :goto_4
    invoke-virtual {v10}, La/b/f/q;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v10}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v11, La/b/f/j;

    invoke-direct {v11, v6}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, La/b/f/j;->a()I

    move-result v12

    invoke-virtual {v11}, La/b/f/j;->c()Ljava/lang/String;

    invoke-virtual {v11}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4

    move v6, v2

    :goto_5
    if-ge v6, v12, :cond_4

    aget-object v11, v7, v5

    aput-object v11, v1, v3

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    add-int/2addr v5, v12

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    check-cast p1, La/b/k;

    iget-object v0, p1, La/b/k;->c:[La/b/b/b;

    iget v2, p2, La/b/a/u;->c:I

    aget-object v0, v0, v2

    check-cast v0, La/b/b/s;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, La/b/b/s;->a(Ljava/lang/String;)V

    iput-object v1, p2, La/b/a/u;->d:[La/b/c;

    :cond_8
    return-void
.end method

.method public a(La/b/k;)V
    .registers 9

    const/4 v2, 0x1

    iget-object v3, p1, La/b/k;->h:[I

    iget v4, p1, La/b/k;->g:I

    if-le v4, v2, :cond_3

    const/4 v0, 0x0

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->sort([III)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget v5, v3, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v3, v6

    if-ne v5, v6, :cond_1

    if-nez v0, :cond_0

    new-array v0, v4, [Z

    :cond_0
    aput-boolean v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, La/b/c/av;

    invoke-direct {v1, v0}, La/b/c/av;-><init>([Z)V

    invoke-virtual {v1, p1}, La/b/c/av;->a(La/b/k;)V

    :cond_3
    return-void
.end method
