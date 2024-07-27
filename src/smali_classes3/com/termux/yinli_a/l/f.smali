.class Lcom/termux/yinli_a/l/f;
.super Lcom/termux/yinli_a/l/e;
.source ""


# direct methods
.method public static a(II)I
    .registers 2

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static a(III)I
    .registers 5

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_1

    move p0, p1

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-le p0, p2, :cond_0

    move p0, p2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is less than minimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(II)I
    .registers 2

    if-le p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static c(II)Lcom/termux/yinli_a/l/c;
    .registers 4

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/termux/yinli_a/l/c;->e:Lcom/termux/yinli_a/l/c$a;

    invoke-virtual {v0}, Lcom/termux/yinli_a/l/c$a;->a()Lcom/termux/yinli_a/l/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/termux/yinli_a/l/c;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    goto :goto_0
.end method
