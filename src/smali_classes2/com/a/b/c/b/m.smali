.class public final Lcom/a/b/c/b/m;
.super Lcom/a/b/g/j;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    iput p2, p0, Lcom/a/b/c/b/m;->a:I

    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)Lcom/a/b/c/b/m;
    .registers 6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/a/b/c/b/m;

    invoke-direct {v3, v2, p1}, Lcom/a/b/c/b/m;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v3}, Lcom/a/b/c/b/m;->c_()V

    return-object v3

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v3, v1, v0}, Lcom/a/b/c/b/m;->a(ILcom/a/b/c/b/l;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/a/b/c/b/l;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/m;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    return-object v0
.end method

.method public a(ILcom/a/b/c/b/l;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/b/m;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/a/b/g/a;)V
    .registers 12

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/a/b/g/a;->g()I

    move-result v3

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->d_()I

    move-result v4

    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/a/b/g/a;->b()Z

    move-result v5

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    :cond_0
    :goto_1
    if-lt v1, v4, :cond_6

    invoke-interface {p1}, Lcom/a/b/g/a;->g()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->e()I

    move-result v1

    if-eq v0, v1, :cond_7

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "write length mismatch; expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but actually wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/a/b/c/b/m;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->a()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    if-eqz v5, :cond_4

    :cond_2
    const-string v7, "  "

    invoke-interface {p1}, Lcom/a/b/g/a;->d()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Lcom/a/b/c/b/l;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {p1, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_3

    const-string v0, ""

    invoke-interface {p1, v6, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1}, Lcom/a/b/c/b/m;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/a/b/c/b/l;->a(Lcom/a/b/g/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while writing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v0

    throw v0

    :cond_7
    return-void
.end method

.method public e()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->d_()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/m;->a(I)Lcom/a/b/c/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->p()I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/m;->a:I

    return v0
.end method

.method public g()I
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->d_()I

    move-result v6

    move v5, v3

    move v4, v3

    :goto_0
    if-lt v5, v6, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0, v5}, Lcom/a/b/c/b/m;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    instance-of v1, v0, Lcom/a/b/c/b/i;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/a/b/c/b/i;

    invoke-virtual {v1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v1

    instance-of v7, v1, Lcom/a/b/e/c/f;

    if-eqz v7, :cond_2

    check-cast v1, Lcom/a/b/e/c/f;

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/n;->b()I

    move-result v0

    const/16 v7, 0x71

    if-ne v0, v7, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/b/e/c/f;->b(Z)I

    move-result v0

    :goto_2
    if-le v0, v4, :cond_5

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lcom/a/b/e/c/j;

    if-eqz v0, :cond_6

    check-cast v1, Lcom/a/b/e/c/j;

    invoke-virtual {v1}, Lcom/a/b/e/c/j;->a()Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->e()I

    move-result v0

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/a/b/c/b/y;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/a/b/c/b/l;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/n;->b()I

    move-result v1

    const/16 v7, 0xfa

    if-eq v1, v7, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting invoke-polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Lcom/a/b/c/b/y;

    invoke-virtual {v0, v2}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ab;

    invoke-virtual {v0}, Lcom/a/b/e/c/ab;->i()Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2
.end method
