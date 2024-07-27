.class public final Lcom/a/b/e/c/e;
.super Lcom/a/b/g/j;

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/e;)I
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/c/e;->d_()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/e/c/e;->d_()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v2, v3

    :goto_0
    move v6, v5

    :goto_1
    if-lt v6, v2, :cond_2

    if-ge v3, v4, :cond_3

    const/4 v0, -0x1

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/a/b/e/c/e;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    invoke-virtual {p1, v6}, Lcom/a/b/e/c/e;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/a;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method public a(I)Lcom/a/b/e/c/a;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/c/e;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    return-object v0
.end method

.method public a(ILcom/a/b/e/c/a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/e/c/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/c/e;

    invoke-virtual {p0, p1}, Lcom/a/b/e/c/e;->a(Lcom/a/b/e/c/e;)I

    move-result v0

    return v0
.end method
