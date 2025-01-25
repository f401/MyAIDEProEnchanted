.class Lcom/termux/yinli_a/n/o;
.super Lcom/termux/yinli_a/n/n;
.source ""


# direct methods
.method public static final a(Ljava/lang/CharSequence;)I
    .registers 2

    const-string v0, "$this$lastIndex"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;CIZ)I
    .registers 6

    const-string v0, "$this$indexOf"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_13

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_1d

    :cond_13
    :goto_13
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1d
    return p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;[CIZ)I
    .registers 10

    const-string v0, "$this$indexOfAny"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1f

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/termux/yinli_a/h/a;->a([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_45

    :cond_1f
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/termux/yinli_a/l/d;->a(II)I

    move-result p2

    invoke-static {p0}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v1

    if-gt p2, v1, :cond_44

    :goto_2a
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    array-length v3, p1

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_3f

    aget-char v5, p1, v4

    invoke-static {v5, v2, p3}, Lcom/termux/yinli_a/n/b;->a(CCZ)Z

    move-result v5

    if-eqz v5, :cond_3c

    move p0, p2

    goto :goto_45

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3f
    if-eq p2, v1, :cond_44

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_44
    const/4 p0, -0x1

    :goto_45
    return p0
.end method

.method private static final a(Ljava/lang/CharSequence;[CIZI)Lcom/termux/yinli_a/m/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CIZI)",
            "La/m/a<",
            "Lcom/termux/yinli_a/l/c;",
            ">;"
        }
    .end annotation

    if-ltz p4, :cond_d

    new-instance v0, Lcom/termux/yinli_a/n/d;

    new-instance v1, Lcom/termux/yinli_a/n/o$a;

    invoke-direct {v1, p1, p3}, Lcom/termux/yinli_a/n/o$a;-><init>([CZ)V

    invoke-direct {v0, p0, p2, p4, v1}, Lcom/termux/yinli_a/n/d;-><init>(Ljava/lang/CharSequence;IILcom/termux/yinli_a/k/a/b;)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Limit must be non-negative, but was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/4 p3, 0x0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZI)Lcom/termux/yinli_a/m/a;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/CharSequence;[CZI)Lcom/termux/yinli_a/m/a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CZI)",
            "La/m/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$splitToSequence"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;

    move-result-object p1

    new-instance p2, Lcom/termux/yinli_a/n/o$b;

    invoke-direct {p2, p0}, Lcom/termux/yinli_a/n/o$b;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2}, Lcom/termux/yinli_a/m/b;->a(Lcom/termux/yinli_a/m/a;Lcom/termux/yinli_a/k/a/a;)Lcom/termux/yinli_a/m/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CZI)Lcom/termux/yinli_a/m/a;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/CharSequence;Lcom/termux/yinli_a/l/c;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this$substring"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/termux/yinli_a/l/c;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/termux/yinli_a/l/c;->c()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/CharSequence;CIZ)I
    .registers 6

    const-string v0, "$this$lastIndexOf"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_13

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_1d

    :cond_13
    :goto_13
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lcom/termux/yinli_a/n/o;->b(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1d
    return p0
.end method

.method public static synthetic b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_8

    invoke-static {p0}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    const/4 p3, 0x0

    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/o;->b(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/CharSequence;[CIZ)I
    .registers 8

    const-string v0, "$this$lastIndexOfAny"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1f

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/termux/yinli_a/h/a;->a([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_42

    :cond_1f
    invoke-static {p0}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/termux/yinli_a/l/d;->b(II)I

    move-result p2

    :goto_27
    if-ltz p2, :cond_41

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_3e

    aget-char v3, p1, v2

    invoke-static {v3, v0, p3}, Lcom/termux/yinli_a/n/b;->a(CCZ)Z

    move-result v3

    if-eqz v3, :cond_3b

    move p0, p2

    goto :goto_42

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3e
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    :cond_41
    const/4 p0, -0x1

    :goto_42
    return p0
.end method
