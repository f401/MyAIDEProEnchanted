.class Lcom/termux/yinli_a/n/o;
.super Lcom/termux/yinli_a/n/n;
.source ""


# direct methods
.method public static final a(Ljava/lang/CharSequence;)I
    .registers 2

    const-string v0, "$this$lastIndex"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final a(Ljava/lang/CharSequence;CIZ)I
    .registers 6

    const-string v0, "$this$indexOf"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    return v0
.end method

.method public static final a(Ljava/lang/CharSequence;[CIZ)I
    .registers 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "$this$indexOfAny"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    array-length v0, p1

    if-ne v0, v2, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/termux/yinli_a/h/a;->a([C)C

    move-result v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2, v3}, Lcom/termux/yinli_a/l/d;->a(II)I

    move-result v0

    invoke-static {p0}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v4

    if-gt v0, v4, :cond_4

    :goto_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    array-length v6, p1

    move v1, v3

    :goto_2
    if-ge v1, v6, :cond_3

    aget-char v7, p1, v1

    invoke-static {v7, v5, p3}, Lcom/termux/yinli_a/n/b;->a(CCZ)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    if-eq v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/CharSequence;[CIZI)Lcom/termux/yinli_a/m/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CIZI)",
            "La/m/a",
            "<",
            "Lcom/termux/yinli_a/l/c;",
            ">;"
        }
    .end annotation

    if-ltz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/termux/yinli_a/n/d;

    new-instance v1, Lcom/termux/yinli_a/n/o$a;

    invoke-direct {v1, p1, p3}, Lcom/termux/yinli_a/n/o$a;-><init>([CZ)V

    invoke-direct {v0, p0, p2, p4, v1}, Lcom/termux/yinli_a/n/d;-><init>(Ljava/lang/CharSequence;IILcom/termux/yinli_a/k/a/b;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit must be non-negative, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;
    .registers 9

    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZI)Lcom/termux/yinli_a/m/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/CharSequence;[CZI)Lcom/termux/yinli_a/m/a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CZI)",
            "La/m/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$splitToSequence"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;

    move-result-object v0

    new-instance v1, Lcom/termux/yinli_a/n/o$b;

    invoke-direct {v1, p0}, Lcom/termux/yinli_a/n/o$b;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/termux/yinli_a/m/b;->a(Lcom/termux/yinli_a/m/a;Lcom/termux/yinli_a/k/a/a;)Lcom/termux/yinli_a/m/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;
    .registers 8

    const/4 v0, 0x0

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CZI)Lcom/termux/yinli_a/m/a;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/CharSequence;Lcom/termux/yinli_a/l/c;)Ljava/lang/String;
    .registers 4

    const-string v0, "$this$substring"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/termux/yinli_a/l/c;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/termux/yinli_a/l/c;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/CharSequence;CIZ)I
    .registers 6

    const-string v0, "$this$lastIndexOf"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lcom/termux/yinli_a/n/o;->b(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .registers 7

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/o;->b(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    return v0
.end method

.method public static final b(Ljava/lang/CharSequence;[CIZ)I
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "$this$lastIndexOfAny"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    array-length v0, p1

    if-ne v0, v2, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/termux/yinli_a/h/a;->a([C)C

    move-result v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/termux/yinli_a/l/d;->b(II)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    array-length v5, p1

    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_4

    aget-char v6, p1, v1

    invoke-static {v6, v4, p3}, Lcom/termux/yinli_a/n/b;->a(CCZ)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_3
.end method
