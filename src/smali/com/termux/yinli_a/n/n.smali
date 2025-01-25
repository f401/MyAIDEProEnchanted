.class Lcom/termux/yinli_a/n/n;
.super Lcom/termux/yinli_a/n/m;
.source ""


# direct methods
.method public static final a(Ljava/lang/String;CCZ)Ljava/lang/String;
    .registers 20

    const-string v0, "$this$replace"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_13

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin…replace(oldChar, newChar)"

    invoke-static {v0, v1}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_34

    :cond_13
    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    aput-char p1, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Lcom/termux/yinli_a/m/a;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Lcom/termux/yinli_a/m/b;->a(Lcom/termux/yinli_a/m/a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/termux/yinli_a/k/a/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/termux/yinli_a/n/n;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .registers 12

    const-string v0, "$this$regionMatches"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_11

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    goto :goto_1b

    :cond_11
    move-object v0, p0

    move v1, p5

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    :goto_1b
    return p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    const-string v0, "$this$endsWith"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_27

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/termux/yinli_a/n/n;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    :goto_27
    return p0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/termux/yinli_a/n/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
