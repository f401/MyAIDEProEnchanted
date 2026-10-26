.class Lcom/baidu/mobstat/au;
.super Lcom/baidu/mobstat/aw;


# instance fields
.field protected a:[B

.field private e:[B

.field private f:[B


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/as;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/aw;-><init>(Lcom/baidu/mobstat/as;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    iget v0, p0, Lcom/baidu/mobstat/au;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/au;->e:[B

    iget v0, p0, Lcom/baidu/mobstat/au;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/au;->a:[B

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/mobstat/au;->d:[B

    iget-object v1, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method a(ZLjava/lang/String;[B[B)V
    .locals 2

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    if-ne v0, v1, :cond_0

    iput-object p4, p0, Lcom/baidu/mobstat/au;->d:[B

    invoke-virtual {p0}, Lcom/baidu/mobstat/au;->a()V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->b:Lcom/baidu/mobstat/as;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/as;->a(ZLjava/lang/String;[B)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a([BII[BI)V
    .locals 6

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    add-int v0, p3, p2

    if-ge v2, v0, :cond_1

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/baidu/mobstat/au;->e:[B

    add-int v4, v0, v2

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/baidu/mobstat/au;->a:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/au;->b:Lcom/baidu/mobstat/as;

    iget-object v3, p0, Lcom/baidu/mobstat/au;->e:[B

    invoke-virtual {v0, v3, v1, p4, p5}, Lcom/baidu/mobstat/as;->a([BI[BI)V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    invoke-static {p4, p5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr p5, v2

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/mobstat/au;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:[B

    iget-object v1, p0, Lcom/baidu/mobstat/au;->f:[B

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method b([BII[BI)V
    .locals 7

    const/4 v2, 0x0

    if-ne p1, p4, :cond_0

    if-lt p2, p5, :cond_0

    sub-int v0, p2, p5

    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    move v3, p2

    :goto_1
    add-int v1, p3, p2

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mobstat/au;->b:Lcom/baidu/mobstat/as;

    iget-object v4, p0, Lcom/baidu/mobstat/au;->e:[B

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/baidu/mobstat/as;->b([BI[BI)V

    move v1, v2

    :goto_2
    iget v4, p0, Lcom/baidu/mobstat/au;->c:I

    if-ge v1, v4, :cond_1

    add-int v4, v1, p5

    iget-object v5, p0, Lcom/baidu/mobstat/au;->e:[B

    aget-byte v5, v5, v1

    iget-object v6, p0, Lcom/baidu/mobstat/au;->a:[B

    aget-byte v6, v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v4, p0, Lcom/baidu/mobstat/au;->c:I

    if-nez v0, :cond_2

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget v1, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/baidu/mobstat/au;->c:I

    add-int/2addr p5, v3

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/mobstat/au;->f:[B

    iget-object v1, p0, Lcom/baidu/mobstat/au;->a:[B

    iget v2, p0, Lcom/baidu/mobstat/au;->c:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
