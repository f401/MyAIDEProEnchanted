.class Lcom/termux/yinli_a/n/b;
.super Lcom/termux/yinli_a/n/a;
.source ""


# direct methods
.method public static final a(CCZ)Z
    .locals 2

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method
