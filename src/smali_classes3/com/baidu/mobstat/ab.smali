.class public Lcom/baidu/mobstat/ab;
.super Ljava/lang/Object;


# instance fields
.field a:[Lcom/baidu/mobstat/ah;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/mobstat/ah;

    new-instance v1, Lcom/baidu/mobstat/ai;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lcom/baidu/mobstat/ai;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/baidu/mobstat/aj;

    invoke-direct {v1, v3, v4}, Lcom/baidu/mobstat/aj;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/mobstat/aj;

    invoke-direct {v2, v4, v4}, Lcom/baidu/mobstat/aj;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/baidu/mobstat/ai;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v4}, Lcom/baidu/mobstat/ai;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .registers 11

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/mobstat/ag;

    invoke-direct {v2}, Lcom/baidu/mobstat/ag;-><init>()V

    array-length v0, p1

    iget-object v3, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/baidu/mobstat/ag;->a:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ad;->a([BI)[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/ag;->a()[B

    move-result-object v0

    array-length v4, p1

    invoke-static {v3, v0, v4}, Lcom/baidu/mobstat/ad;->a([B[BI)V

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    aget-object v4, v4, v0

    array-length v5, p1

    add-int/lit8 v6, v0, 0x1

    sget v7, Lcom/baidu/mobstat/ag;->a:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v3, v1, v5}, Lcom/baidu/mobstat/ah;->a([BII)Lcom/baidu/mobstat/ac;

    move-result-object v6

    invoke-virtual {v4}, Lcom/baidu/mobstat/ah;->a()I

    move-result v7

    invoke-virtual {v4}, Lcom/baidu/mobstat/ah;->b()I

    move-result v8

    invoke-virtual {v4}, Lcom/baidu/mobstat/ah;->c()I

    move-result v4

    invoke-virtual {v2, v6, v7, v8, v4}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ac;III)V

    invoke-virtual {v2}, Lcom/baidu/mobstat/ag;->a()[B

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/ad;->a([B[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/baidu/mobstat/ag;->a()[B

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/ag;->a:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
