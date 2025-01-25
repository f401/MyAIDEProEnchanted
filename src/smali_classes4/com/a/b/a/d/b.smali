.class public Lcom/a/b/a/d/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 14

    const/4 v1, 0x4

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "cf == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-ltz p2, :cond_f

    if-lt p2, v1, :cond_17

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    const/4 v8, 0x0

    :try_start_18
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v1

    invoke-virtual {v2, p3}, Lcom/a/b/g/e;->f(I)I

    move-result v3

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {v2, v4}, Lcom/a/b/g/e;->c(I)I

    move-result v6

    invoke-interface {v1, v3}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ad;

    move-object v8, v0

    if-eqz p4, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v8}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, p3, v3, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "length: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p3, 0x2

    const/4 v4, 0x4

    invoke-static {v6}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v3, v4, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_64
    invoke-virtual {v8}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/a/b/a/d/b;->a(Lcom/a/b/a/d/e;ILjava/lang/String;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    :try_end_71
    .catch Lcom/a/b/a/e/i; {:try_start_18 .. :try_end_71} :catch_73

    move-result-object v1

    return-object v1

    :catch_73
    move-exception v1

    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "...while parsing "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "attribute at offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v2

    :cond_af
    const-string v1, ""

    goto :goto_95
.end method

.method protected a(Lcom/a/b/a/d/e;ILjava/lang/String;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 13

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v2

    new-instance v0, Lcom/a/b/a/a/z;

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v5

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/a/z;-><init>(Ljava/lang/String;Lcom/a/b/g/e;IILcom/a/b/e/c/b;)V

    if-eqz p6, :cond_17

    const-string v1, "attribute data"

    invoke-interface {p6, v2, p4, p5, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_17
    return-object v0
.end method
