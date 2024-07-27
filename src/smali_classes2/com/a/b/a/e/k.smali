.class public final Lcom/a/b/a/e/k;
.super Lcom/a/b/g/j;

# interfaces
.implements Lcom/a/b/a/e/b;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/e/a;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/e/k;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/e/a;

    return-object v0
.end method

.method public a(Lcom/a/b/a/e/a;)Lcom/a/b/a/e/a;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/e/k;->d_()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/b/a/e/k;->a(I)Lcom/a/b/a/e/a;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-interface {p1}, Lcom/a/b/a/e/a;->g()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/a/b/a/e/k;->a(I)Lcom/a/b/a/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/b/a/e/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/a/b/a/e/a;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/a/e/k;->d_()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/b/a/e/k;->a(I)Lcom/a/b/a/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/a/e/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(ILcom/a/b/a/e/a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/e/k;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b()I
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/a/e/k;->d_()I

    move-result v2

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/a/b/a/e/k;->a(I)Lcom/a/b/a/e/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/b/a/e/a;->a()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
