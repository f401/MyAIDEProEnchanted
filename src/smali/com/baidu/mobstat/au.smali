.class Lcom/baidu/mobstat/au;
.super Lcom/baidu/mobstat/aw;


# instance fields
.field protected a:[B

.field private e:[B

.field private f:[B


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/as;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/aw;-><init>(Lcom/baidu/mobstat/as;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/mobstat/au;->f:[B

    iget p1, p0, Lcom/baidu/mobstat/au;->c:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/mobstat/au;->e:[B

    iget p1, p0, Lcom/baidu/mobstat/au;->c:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/mobstat/au;->a:[B

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/au;->d:[B

    iget-object v1, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method a(ZLjava/lang/String;[B[B)V
    .registers 7

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    array-length v0, p4

    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    if-ne v0, v1, :cond_14

    iput-object p4, p0, Lcom/baidu/mobstat/au;->d:[B

    invoke-virtual {p0}, Lcom/baidu/mobstat/au;->a()V

    iget-object p4, p0, Lcom/baidu/mobstat/au;->b:Lcom/baidu/mobstat/as;

    invoke-virtual {p4, p1, p2, p3}, Lcom/baidu/mobstat/as;->a(ZLjava/lang/String;[B)V

    return-void

    :cond_14
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Internal error"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a([BII[BI)V
    .registers 12

    move v0, p2

    :goto_1
    add-int v1, p3, p2

    if-ge v0, v1, :cond_31

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    if-ge v2, v3, :cond_1c

    iget-object v3, p0, Lcom/baidu/mobstat/au;->e:[B

    add-int v4, v2, v0

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/baidu/mobstat/au;->a:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    iget-object v2, p0, Lcom/baidu/mobstat/au;->b:Lcom/baidu/mobstat/as;

    iget-object v3, p0, Lcom/baidu/mobstat/au;->e:[B

    invoke-virtual {v2, v3, v1, p4, p5}, Lcom/baidu/mobstat/as;->a([BI[BI)V

    iget-object v2, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    invoke-static {p4, p5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr p5, v1

    goto :goto_1

    :cond_31
    return-void
.end method

.method b()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    if-nez v0, :cond_a

    iget v0, p0, Lcom/baidu/mobstat/au;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:[B

    iget-object v1, p0, Lcom/baidu/mobstat/au;->f:[B

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method b([BII[BI)V
    .registers 13

    if-ne p1, p4, :cond_11

    if-lt p2, p5, :cond_11

    sub-int v0, p2, p5

    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    if-ge v0, v1, :cond_11

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move v1, p2

    :goto_13
    add-int v2, p3, p2

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Lcom/baidu/mobstat/au;->b:Lcom/baidu/mobstat/as;

    iget-object v3, p0, Lcom/baidu/mobstat/au;->e:[B

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/baidu/mobstat/as;->b([BI[BI)V

    const/4 v2, 0x0

    :goto_20
    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    if-ge v2, v3, :cond_35

    add-int v3, v2, p5

    iget-object v5, p0, Lcom/baidu/mobstat/au;->e:[B

    aget-byte v5, v5, v2

    iget-object v6, p0, Lcom/baidu/mobstat/au;->a:[B

    aget-byte v6, v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_35
    iget-object v2, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    if-nez v0, :cond_3f

    invoke-static {p1, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    :cond_3f
    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_42
    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr p5, v2

    goto :goto_13

    :cond_49
    return-void
.end method

.method c()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    iget-object v1, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
