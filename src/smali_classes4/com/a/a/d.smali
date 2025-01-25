.class public final Lcom/a/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/a/a/a/a;IJ)V
    .registers 6

    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, p1

    invoke-interface {p0, v1}, Lcom/a/a/a/a;->a(I)V

    :goto_17
    if-gtz v0, :cond_1a

    return-void

    :cond_1a
    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/a/a/a/a;->a(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_17
.end method

.method public static b(Lcom/a/a/a/a;IJ)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, p1

    invoke-interface {p0, v1}, Lcom/a/a/a/a;->a(I)V

    :goto_15
    if-gtz v0, :cond_18

    return-void

    :cond_18
    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/a/a/a/a;->a(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_15
.end method

.method public static c(Lcom/a/a/a/a;IJ)V
    .registers 8

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v0, 0x3

    mul-int/lit8 v0, v2, 0x8

    rsub-int/lit8 v0, v0, 0x40

    shr-long v0, p2, v0

    add-int/lit8 v3, v2, -0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v3, p1

    invoke-interface {p0, v3}, Lcom/a/a/a/a;->a(I)V

    :goto_1b
    if-gtz v2, :cond_1e

    return-void

    :cond_1e
    long-to-int v3, v0

    int-to-byte v3, v3

    invoke-interface {p0, v3}, Lcom/a/a/a/a;->a(I)V

    const/16 v3, 0x8

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b
.end method
