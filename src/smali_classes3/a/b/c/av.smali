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

    iget-object v0, p2, La/b/a/u;->d:[La/b/c;

    if-eqz v0, :cond_a3

    new-instance v1, La/b/f/q;

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/b/f/q;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, La/b/f/q;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_39

    invoke-virtual {v1}, La/b/f/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, La/b/f/j;

    invoke-direct {v5, v3}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, La/b/f/j;->a()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v3, :cond_3b

    aget-object v8, v0, v6

    aput-object v8, v0, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_39
    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_3b
    invoke-virtual {v1}, La/b/f/q;->d()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {v1}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, La/b/f/j;

    invoke-direct {v7, v3}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, La/b/f/j;->a()I

    move-result v3

    const/4 v7, 0x0

    :goto_52
    if-ge v7, v3, :cond_5f

    aget-object v8, v0, v6

    aput-object v8, v0, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    invoke-virtual {v1}, La/b/f/q;->d()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-virtual {v1}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v7

    new-instance v8, La/b/f/j;

    invoke-direct {v8, v7}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, La/b/f/j;->a()I

    move-result v8

    iget-object v9, p0, La/b/c/av;->a:[Z

    aget-boolean v9, v9, v3

    if-nez v9, :cond_8a

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    :goto_7d
    if-ge v7, v8, :cond_8b

    aget-object v9, v0, v6

    aput-object v9, v0, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    :cond_8a
    add-int/2addr v6, v8

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_8e
    check-cast p1, La/b/k;

    iget-object p1, p1, La/b/k;->c:[La/b/b/b;

    iget p2, p2, La/b/a/u;->c:I

    aget-object p1, p1, p2

    check-cast p1, La/b/b/s;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La/b/b/s;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, v5, v6, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_a3
    return-void
.end method

.method public a(La/b/k;)V
    .registers 8

    iget-object v0, p1, La/b/k;->h:[I

    iget v1, p1, La/b/k;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    iget-object v4, p0, La/b/c/av;->a:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_15

    add-int/lit8 v4, v3, 0x1

    aget v5, v0, v2

    aput v5, v0, v3

    move v3, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    if-ge v3, v1, :cond_1f

    iput v3, p1, La/b/k;->g:I

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    :cond_1f
    return-void
.end method
