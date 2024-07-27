.class Lcom/a/b/a/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/d/e;


# instance fields
.field private final a:Lcom/a/b/g/e;

.field private final b:I

.field private final c:Lcom/a/b/e/c/af;


# direct methods
.method public constructor <init>(Lcom/a/b/g/e;IILcom/a/b/e/c/af;Lcom/a/b/a/e/j;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v2

    iput-object v2, p0, Lcom/a/b/a/d/f;->a:Lcom/a/b/g/e;

    iput p3, p0, Lcom/a/b/a/d/f;->b:I

    iput-object p4, p0, Lcom/a/b/a/d/f;->c:Lcom/a/b/e/c/af;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_1

    return-void

    :cond_1
    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    :try_start_0
    invoke-virtual {p4, v0}, Lcom/a/b/e/c/af;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_2

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v2, v3, v4, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bogus class cpi"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/d/c;
    .registers 4

    iget-object v0, p0, Lcom/a/b/a/d/f;->a:Lcom/a/b/g/e;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/d/f;->c:Lcom/a/b/e/c/af;

    invoke-virtual {v1, v0}, Lcom/a/b/e/c/af;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/e;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d_()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/d/f;->b:I

    return v0
.end method
