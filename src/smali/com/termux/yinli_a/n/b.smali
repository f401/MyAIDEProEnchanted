.class Lcom/termux/yinli_a/n/b;
.super Lcom/termux/yinli_a/n/a;
.source ""


# direct methods
.method public static final a(CCZ)Z
    .registers 4

    if-ne p0, p1, :cond_3

    goto :goto_1c

    :cond_3
    if-nez p2, :cond_6

    goto :goto_1a

    :cond_6
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-eq p2, v0, :cond_1c

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-eq p0, p1, :cond_1c

    :goto_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method
