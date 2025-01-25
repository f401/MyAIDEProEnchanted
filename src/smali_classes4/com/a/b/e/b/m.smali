.class public final Lcom/a/b/e/b/m;
.super Lcom/a/b/g/j;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/b/j;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/m;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/j;

    return-object v0
.end method

.method public a(ILcom/a/b/e/b/j;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/e/b/m;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/m;->d_()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0, v0}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/l;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a(Lcom/a/b/e/b/m;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/a/b/e/b/m;->d_()I

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/e/b/m;->d_()I

    move-result v1

    if-ne v2, v1, :cond_3

    move v1, v0

    :goto_f
    if-lt v1, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_3

    :cond_13
    invoke-virtual {p0, v1}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/b/j;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public e()Lcom/a/b/e/b/j;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/b/m;->d_()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v0

    return-object v0
.end method
