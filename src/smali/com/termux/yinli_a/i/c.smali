.class public final Lcom/termux/yinli_a/i/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final a(II)I
    .registers 2

    rem-int/2addr p0, p1

    if-ltz p0, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method

.method private static final a(III)I
    .registers 3

    invoke-static {p0, p2}, Lcom/termux/yinli_a/i/c;->a(II)I

    move-result p0

    invoke-static {p1, p2}, Lcom/termux/yinli_a/i/c;->a(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0, p2}, Lcom/termux/yinli_a/i/c;->a(II)I

    move-result p0

    return p0
.end method

.method public static final b(III)I
    .registers 3

    if-lez p2, :cond_b

    if-lt p0, p1, :cond_5

    goto :goto_15

    :cond_5
    invoke-static {p1, p0, p2}, Lcom/termux/yinli_a/i/c;->a(III)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_15

    :cond_b
    if-gez p2, :cond_16

    if-le p0, p1, :cond_15

    neg-int p2, p2

    invoke-static {p0, p1, p2}, Lcom/termux/yinli_a/i/c;->a(III)I

    move-result p0

    add-int/2addr p1, p0

    :cond_15
    :goto_15
    return p1

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
