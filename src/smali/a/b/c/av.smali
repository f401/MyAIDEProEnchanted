.class public La/b/c/av;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/g/s;


# instance fields
.field private final a:[Z


# direct methods
.method public constructor <init>([Z)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/av;->a:[Z

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/u;)V
    .registers 13

    const/4 v1, 0x0

    iget-object v5, p2, La/b/a/u;->d:[La/b/c;

    if-eqz v5, :cond_6

    new-instance v6, La/b/f/q;

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, La/b/f/q;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6}, La/b/f/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, La/b/f/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, La/b/f/j;

    invoke-direct {v2, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, La/b/f/j;->a()I

    move-result v4

    move v3, v1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v8, v5, v2

    aput-object v8, v5, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :cond_1
    invoke-virtual {v6}, La/b/f/q;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, La/b/f/j;

    invoke-direct {v4, v3}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, La/b/f/j;->a()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v8, v5, v2

    aput-object v8, v5, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    move v4, v0

    :goto_2
    invoke-virtual {v6}, La/b/f/q;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v8, La/b/f/j;

    invoke-direct {v8, v0}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, La/b/f/j;->a()I

    move-result v8

    iget-object v9, p0, La/b/c/av;->a:[Z

    aget-boolean v9, v9, v3

    if-nez v9, :cond_3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_4

    aget-object v9, v5, v2

    aput-object v9, v5, v4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/2addr v2, v8

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    check-cast p1, La/b/k;

    iget-object v0, p1, La/b/k;->c:[La/b/b/b;

    iget v1, p2, La/b/a/u;->c:I

    aget-object v0, v0, v1

    check-cast v0, La/b/b/s;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/b/b/s;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v5, v4, v2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public a(La/b/k;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v3, p1, La/b/k;->h:[I

    iget v4, p1, La/b/k;->g:I

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, La/b/c/av;->a:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget v5, v3, v2

    aput v5, v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-ge v1, v4, :cond_1

    iput v1, p1, La/b/k;->g:I

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
