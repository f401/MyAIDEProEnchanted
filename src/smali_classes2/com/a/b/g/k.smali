.class public final Lcom/a/b/g/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x8

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    rsub-int/lit8 v2, v0, 0x7

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 8

    const/16 v4, 0x10

    new-array v1, v4, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    rsub-int/lit8 v2, v0, 0xf

    long-to-int v3, p0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    const/4 v2, 0x4

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([BIIIII)Ljava/lang/String;
    .registers 11

    const/16 v4, 0xa

    const/4 v1, 0x0

    add-int v0, p1, p2

    or-int v2, p1, p2

    or-int/2addr v2, v0

    if-ltz v2, :cond_0

    array-length v2, p0

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "arr.length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    :goto_1
    if-gtz p2, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_8

    packed-switch p5, :pswitch_data_0

    :pswitch_0
    invoke-static {p3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v2, 0x1

    if-ne v0, p4, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    invoke-static {p3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    invoke-static {p3}, Lcom/a/b/g/k;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_6

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x6

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    rsub-int/lit8 v2, v0, 0x5

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .registers 8

    const/16 v4, 0x10

    const/4 v0, 0x0

    const/16 v1, 0x11

    new-array v1, v1, [C

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-long p0, p0

    :goto_0
    if-lt v0, v4, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v2, v0, 0x10

    long-to-int v3, p0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    const/4 v2, 0x4

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x4

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    rsub-int/lit8 v2, v0, 0x3

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static d(I)Ljava/lang/String;
    .registers 2

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(I)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x2

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    rsub-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static f(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static g(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x9

    new-array v1, v1, [C

    if-gez p0, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-int p0, p0

    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v2, v0, 0x8

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static h(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [C

    if-gez p0, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-int p0, p0

    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v2, v0, 0x4

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static i(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [C

    if-gez p0, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-int p0, p0

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v2, v0, 0x2

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
