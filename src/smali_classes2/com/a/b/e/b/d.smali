.class public final Lcom/a/b/e/b/d;
.super Lcom/a/b/g/q;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/g/q;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/e/b/d;->a:I

    return-void
.end method

.method private constructor <init>(Lcom/a/b/e/b/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/g/q;-><init>(Lcom/a/b/g/q;)V

    iget v0, p1, Lcom/a/b/e/b/d;->a:I

    iput v0, p0, Lcom/a/b/e/b/d;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/b/b;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/b;)Lcom/a/b/e/b/b;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILcom/a/b/e/b/b;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/a/b/g/q;->a(ILcom/a/b/g/p;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/e/b/d;->a:I

    return-void
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/d;->d_()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/a/b/e/b/m;->a(Lcom/a/b/e/b/l;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lcom/a/b/e/b/b;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/d;->c(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 3

    iget v0, p0, Lcom/a/b/e/b/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/a/b/e/b/e;

    invoke-direct {v0}, Lcom/a/b/e/b/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/d;->a(Lcom/a/b/e/b/l;)V

    invoke-virtual {v0}, Lcom/a/b/e/b/e;->a()I

    move-result v0

    iput v0, p0, Lcom/a/b/e/b/d;->a:I

    :cond_0
    iget v0, p0, Lcom/a/b/e/b/d;->a:I

    return v0
.end method

.method public f()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/d;->d_()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/a/b/e/b/d;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/m;->d_()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public g()I
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/d;->d_()I

    move-result v5

    move v4, v3

    move v1, v3

    :goto_0
    if-lt v4, v5, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/a/b/e/b/d;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/b/m;->d_()I

    move-result v7

    move v2, v3

    move v0, v1

    :goto_1
    if-lt v2, v7, :cond_1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v2}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    const/16 v8, 0x36

    if-eq v1, v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public h()Lcom/a/b/e/b/d;
    .registers 2

    new-instance v0, Lcom/a/b/e/b/d;

    invoke-direct {v0, p0}, Lcom/a/b/e/b/d;-><init>(Lcom/a/b/e/b/d;)V

    return-object v0
.end method
