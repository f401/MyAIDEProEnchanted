.class public final Lcom/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .registers 3

    shr-int/lit8 v1, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    shr-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/a/a/a/a;I)V
    .registers 4

    ushr-int/lit8 v0, p1, 0x7

    :goto_0
    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcom/a/a/a/a;->a(I)V

    return-void

    :cond_0
    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/a/a/a/a;->a(I)V

    ushr-int/lit8 v1, v0, 0x7

    move p1, v0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/a/a/a/a;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    shr-int/lit8 v5, p1, 0x7

    move v3, v4

    :goto_1
    if-nez v3, :cond_1

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-ne v5, v0, :cond_2

    and-int/lit8 v2, v5, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    const/16 v2, 0x80

    :goto_3
    and-int/lit8 v6, p1, 0x7f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/a/a/a/a;->a(I)V

    shr-int/lit8 v2, v5, 0x7

    move p1, v5

    move v5, v2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method
