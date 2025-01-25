.class Lcom/termux/yinli_a/l/f;
.super Lcom/termux/yinli_a/l/e;
.source ""


# direct methods
.method public static a(II)I
    .registers 2

    if-ge p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static a(III)I
    .registers 4

    if-gt p1, p2, :cond_a

    if-ge p0, p1, :cond_6

    move p0, p1

    goto :goto_9

    :cond_6
    if-le p0, p2, :cond_9

    move p0, p2

    :cond_9
    :goto_9
    return p0

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(II)I
    .registers 2

    if-le p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static c(II)Lcom/termux/yinli_a/l/c;
    .registers 3

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_b

    sget-object p0, Lcom/termux/yinli_a/l/c;->e:Lcom/termux/yinli_a/l/c$a;

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/c$a;->a()Lcom/termux/yinli_a/l/c;

    move-result-object p0

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/termux/yinli_a/l/c;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    move-object p0, v0

    :goto_13
    return-object p0
.end method
