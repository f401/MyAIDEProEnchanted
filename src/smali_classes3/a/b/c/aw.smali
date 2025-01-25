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

    iget-object v0, p2, La/b/a/u;->d:[La/b/c;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_9

    :cond_6
    array-length v1, v0

    new-array v1, v1, [La/b/c;

    :goto_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, La/b/f/q;

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/b/f/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, La/b/f/q;->a()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_40

    invoke-virtual {v3}, La/b/f/q;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_40

    new-instance v6, La/b/f/j;

    invoke-direct {v6, v4}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, La/b/f/j;->a()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_33
    if-ge v8, v4, :cond_42

    aget-object v9, v0, v7

    aput-object v9, v1, v6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_40
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_42
    invoke-virtual {v3}, La/b/f/q;->d()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_68

    new-instance v4, La/b/f/j;

    invoke-direct {v4, v3}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, La/b/f/j;->a()I

    move-result v3

    const/4 v4, 0x0

    :goto_5b
    if-ge v4, v3, :cond_68

    aget-object v8, v0, v7

    aput-object v8, v1, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_68
    const/4 v3, 0x0

    :goto_69
    invoke-interface {p1}, La/b/c;->d()I

    move-result v4

    if-ge v3, v4, :cond_b8

    invoke-interface {p1, v3}, La/b/c;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, La/b/f/q;

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, La/b/f/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, La/b/f/q;->e()Ljava/lang/String;

    move v9, v7

    :cond_80
    :goto_80
    invoke-virtual {v8}, La/b/f/q;->d()Z

    move-result v10

    if-eqz v10, :cond_b5

    invoke-virtual {v8}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v10

    new-instance v11, La/b/f/j;

    invoke-direct {v11, v10}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, La/b/f/j;->a()I

    move-result v12

    invoke-virtual {v11}, La/b/f/j;->c()Ljava/lang/String;

    invoke-virtual {v11}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_80

    const/4 v10, 0x0

    :goto_a6
    if-ge v10, v12, :cond_80

    aget-object v11, v0, v9

    aput-object v11, v1, v6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_a6

    :cond_b3
    add-int/2addr v9, v12

    goto :goto_80

    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_b8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    check-cast p1, La/b/k;

    iget-object p1, p1, La/b/k;->c:[La/b/b/b;

    iget v0, p2, La/b/a/u;->c:I

    aget-object p1, p1, v0

    check-cast p1, La/b/b/s;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, La/b/b/s;->a(Ljava/lang/String;)V

    iput-object v1, p2, La/b/a/u;->d:[La/b/c;

    :cond_d9
    return-void
.end method

.method public a(La/b/k;)V
    .registers 9

    iget-object v0, p1, La/b/k;->h:[I

    iget v1, p1, La/b/k;->g:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2d

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->sort([III)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_10
    if-ge v4, v1, :cond_23

    aget v5, v0, v4

    add-int/lit8 v6, v4, -0x1

    aget v6, v0, v6

    if-ne v5, v6, :cond_20

    if-nez v3, :cond_1e

    new-array v3, v1, [Z

    :cond_1e
    aput-boolean v2, v3, v4

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_23
    if-eqz v3, :cond_2d

    new-instance v0, La/b/c/av;

    invoke-direct {v0, v3}, La/b/c/av;-><init>([Z)V

    invoke-virtual {v0, p1}, La/b/c/av;->a(La/b/k;)V

    :cond_2d
    return-void
.end method
