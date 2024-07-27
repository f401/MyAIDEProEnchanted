.class abstract Lcom/a/b/a/d/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/a/d/e;

.field private final b:Lcom/a/b/e/c/ae;

.field private final c:I

.field private final d:Lcom/a/b/a/d/b;

.field private e:I

.field private f:Lcom/a/b/a/e/j;


# direct methods
.method public constructor <init>(Lcom/a/b/a/d/e;Lcom/a/b/e/c/ae;ILcom/a/b/a/d/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/a/b/a/d/h;->a:Lcom/a/b/a/d/e;

    iput-object p2, p0, Lcom/a/b/a/d/h;->b:Lcom/a/b/e/c/ae;

    iput p3, p0, Lcom/a/b/a/d/h;->c:I

    iput-object p4, p0, Lcom/a/b/a/d/h;->d:Lcom/a/b/a/d/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/a/d/h;->e:I

    return-void
.end method

.method private a()V
    .registers 16

    const/4 v1, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->c()I

    move-result v8

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->f()I

    move-result v9

    iget v2, p0, Lcom/a/b/a/d/h;->c:I

    add-int/lit8 v3, v2, 0x2

    iget-object v2, p0, Lcom/a/b/a/d/h;->a:Lcom/a/b/a/d/e;

    invoke-virtual {v2}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v2

    iget-object v4, p0, Lcom/a/b/a/d/h;->a:Lcom/a/b/a/d/e;

    invoke-virtual {v4}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v10

    iget-object v4, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    iget v5, p0, Lcom/a/b/a/d/h;->c:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "s_count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v5, v11, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_0
    move v7, v1

    :goto_0
    if-lt v7, v9, :cond_1

    iput v3, p0, Lcom/a/b/a/d/h;->e:I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/a/b/g/e;->f(I)I

    move-result v6

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {v2, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v4}, Lcom/a/b/g/e;->f(I)I

    move-result v5

    invoke-interface {v10, v1}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ad;

    move-object v4, v0

    invoke-interface {v10, v5}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ad;

    move-object v5, v0

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    invoke-virtual {v4}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v2, v3, v11, v12}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "s["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]:\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v3, v12, v11}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    const/4 v11, 0x1

    invoke-interface {v1, v11}, Lcom/a/b/a/e/j;->a(I)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "access_flags: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    invoke-virtual {p0, v6}, Lcom/a/b/a/d/h;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v3, v12, v11}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "name: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v3, 0x2

    const/4 v13, 0x2

    invoke-virtual {v4}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v12, v13, v11}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "descriptor: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v3, 0x4

    const/4 v13, 0x2

    invoke-virtual {v5}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v12, v13, v11}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/a/b/a/d/c;

    iget-object v11, p0, Lcom/a/b/a/d/h;->a:Lcom/a/b/a/d/e;

    add-int/lit8 v3, v3, 0x6

    iget-object v12, p0, Lcom/a/b/a/d/h;->d:Lcom/a/b/a/d/b;

    invoke-direct {v1, v11, v8, v3, v12}, Lcom/a/b/a/d/c;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/d/b;)V

    iget-object v3, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    invoke-virtual {v1, v3}, Lcom/a/b/a/d/c;->a(Lcom/a/b/a/e/j;)V

    invoke-virtual {v1}, Lcom/a/b/a/d/c;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/a/b/a/d/c;->b()Lcom/a/b/a/e/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/e/k;->c_()V

    new-instance v11, Lcom/a/b/e/c/aa;

    invoke-direct {v11, v4, v5}, Lcom/a/b/e/c/aa;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    invoke-virtual {p0, v7, v6, v11, v1}, Lcom/a/b/a/d/h;->a(IILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)Lcom/a/b/a/e/f;

    move-result-object v6

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    const/4 v11, -0x1

    invoke-interface {v1, v11}, Lcom/a/b/a/e/j;->a(I)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "end "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "s["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v3, v12, v11}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    invoke-virtual {v4}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;ILjava/lang/String;Ljava/lang/String;Lcom/a/b/a/e/f;)V
    :try_end_0
    .catch Lcom/a/b/a/e/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lcom/a/b/a/e/i;

    invoke-direct {v2, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "s["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected abstract a(IILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)Lcom/a/b/a/e/f;
.end method

.method protected abstract a(I)Ljava/lang/String;
.end method

.method public final a(Lcom/a/b/a/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/a/d/h;->f:Lcom/a/b/a/e/j;

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()I
.end method

.method public d()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/a/d/h;->e()V

    iget v0, p0, Lcom/a/b/a/d/h;->e:I

    return v0
.end method

.method protected final e()V
    .registers 2

    iget v0, p0, Lcom/a/b/a/d/h;->e:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/a/b/a/d/h;->a()V

    :cond_0
    return-void
.end method

.method protected final f()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/d/h;->a:Lcom/a/b/a/d/e;

    invoke-virtual {v0}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    iget v1, p0, Lcom/a/b/a/d/h;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    return v0
.end method

.method protected final g()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/d/h;->b:Lcom/a/b/e/c/ae;

    return-object v0
.end method
