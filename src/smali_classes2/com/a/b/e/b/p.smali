.class public final Lcom/a/b/e/b/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/e/b/ab;

.field private final b:Lcom/a/b/e/b/d;

.field private final c:Lcom/a/b/e/b/q;

.field private final d:[I


# direct methods
.method private constructor <init>(Lcom/a/b/e/b/ab;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->j()I

    move-result v1

    iput-object p1, p0, Lcom/a/b/e/b/p;->a:Lcom/a/b/e/b/ab;

    iput-object v0, p0, Lcom/a/b/e/b/p;->b:Lcom/a/b/e/b/d;

    new-instance v0, Lcom/a/b/e/b/q;

    invoke-direct {v0, p1}, Lcom/a/b/e/b/q;-><init>(Lcom/a/b/e/b/ab;)V

    iput-object v0, p0, Lcom/a/b/e/b/p;->c:Lcom/a/b/e/b/q;

    invoke-static {v1}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/b/p;->d:[I

    return-void
.end method

.method private a()Lcom/a/b/e/b/q;
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/p;->a:Lcom/a/b/e/b/ab;

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->b()I

    move-result v0

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/e/b/p;->c:Lcom/a/b/e/b/q;

    invoke-virtual {v0}, Lcom/a/b/e/b/q;->c_()V

    iget-object v0, p0, Lcom/a/b/e/b/p;->c:Lcom/a/b/e/b/q;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/b/e/b/p;->d:[I

    invoke-static {v1, v0}, Lcom/a/b/g/d;->c([II)V

    invoke-direct {p0, v0}, Lcom/a/b/e/b/p;->a(I)V

    iget-object v0, p0, Lcom/a/b/e/b/p;->d:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/b/g/d;->d([II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/a/b/e/b/ab;)Lcom/a/b/e/b/q;
    .registers 2

    new-instance v0, Lcom/a/b/e/b/p;

    invoke-direct {v0, p0}, Lcom/a/b/e/b/p;-><init>(Lcom/a/b/e/b/ab;)V

    invoke-direct {v0}, Lcom/a/b/e/b/p;->a()Lcom/a/b/e/b/q;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/p;->c:Lcom/a/b/e/b/q;

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/q;->b(I)Lcom/a/b/e/b/z;

    move-result-object v3

    iget-object v0, p0, Lcom/a/b/e/b/p;->b:Lcom/a/b/e/b/d;

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/b/m;->d_()I

    move-result v7

    invoke-virtual {v5}, Lcom/a/b/e/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/a/b/e/b/m;->e()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object v2, v3

    move v4, v1

    :goto_1
    if-lt v4, v7, :cond_1

    invoke-virtual {v2}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {v5}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/g/n;->b()I

    move-result v6

    invoke-virtual {v5}, Lcom/a/b/e/b/b;->d()I

    move-result v5

    :goto_2
    if-lt v1, v6, :cond_6

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    add-int/lit8 v8, v7, -0x1

    if-ne v4, v8, :cond_2

    invoke-virtual {v2}, Lcom/a/b/e/b/z;->c_()V

    invoke-virtual {v2}, Lcom/a/b/e/b/z;->e()Lcom/a/b/e/b/z;

    move-result-object v2

    :cond_2
    invoke-virtual {v6, v4}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/b/e/b/j;->i()Lcom/a/b/e/b/u;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/a/b/e/b/u;->g()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/a/b/e/b/u;->g()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lcom/a/b/e/b/u;->n()Lcom/a/b/e/b/u;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/a/b/e/b/u;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->g()I

    move-result v11

    invoke-virtual {v9}, Lcom/a/b/e/b/u;->g()I

    move-result v12

    if-eq v11, v12, :cond_5

    invoke-virtual {v2, v10}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    :cond_5
    iget-object v10, p0, Lcom/a/b/e/b/p;->c:Lcom/a/b/e/b/q;

    invoke-virtual {v10, v8, v9}, Lcom/a/b/e/b/q;->a(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)V

    invoke-virtual {v2, v9}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v7

    if-ne v7, v5, :cond_8

    move-object v0, v2

    :goto_4
    iget-object v8, p0, Lcom/a/b/e/b/p;->c:Lcom/a/b/e/b/q;

    invoke-virtual {v8, v7, v0}, Lcom/a/b/e/b/q;->b(ILcom/a/b/e/b/z;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/b/e/b/p;->d:[I

    invoke-static {v0, v7}, Lcom/a/b/g/d;->b([II)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_4
.end method
