.class public final Lcom/termux/styling/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "str"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_31

    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz v1, :cond_26

    aget-char v1, p0, v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, p0, v3

    :cond_26
    const/4 v1, 0x0

    goto :goto_2e

    :cond_28
    aget-char v1, p0, v3

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
