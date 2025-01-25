.class public Lcom/baidu/mobstat/ab;
.super Ljava/lang/Object;


# instance fields
.field a:[Lcom/baidu/mobstat/ah;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/mobstat/ah;

    new-instance v1, Lcom/baidu/mobstat/ai;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/baidu/mobstat/ai;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/baidu/mobstat/aj;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/baidu/mobstat/aj;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/baidu/mobstat/aj;

    invoke-direct {v1, v2, v2}, Lcom/baidu/mobstat/aj;-><init>(II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/baidu/mobstat/ai;

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lcom/baidu/mobstat/ai;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .registers 11

    new-instance v0, Lcom/baidu/mobstat/ag;

    invoke-direct {v0}, Lcom/baidu/mobstat/ag;-><init>()V

    array-length v1, p1

    iget-object v2, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/baidu/mobstat/ag;->a:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ad;->a([BI)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/mobstat/ag;->a()[B

    move-result-object v2

    array-length v3, p1

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/ad;->a([B[BI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    iget-object v4, p0, Lcom/baidu/mobstat/ab;->a:[Lcom/baidu/mobstat/ah;

    array-length v5, v4

    if-ge v3, v5, :cond_48

    aget-object v4, v4, v3

    array-length v5, p1

    add-int/lit8 v3, v3, 0x1

    sget v6, Lcom/baidu/mobstat/ag;->a:I

    mul-int v6, v6, v3

    add-int/2addr v5, v6

    invoke-virtual {v4, v1, v2, v5}, Lcom/baidu/mobstat/ah;->a([BII)Lcom/baidu/mobstat/ac;

    move-result-object v6

    invoke-virtual {v4}, Lcom/baidu/mobstat/ah;->a()I

    move-result v7

    invoke-virtual {v4}, Lcom/baidu/mobstat/ah;->b()I

    move-result v8

    invoke-virtual {v4}, Lcom/baidu/mobstat/ah;->c()I

    move-result v4

    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ac;III)V

    invoke-virtual {v0}, Lcom/baidu/mobstat/ag;->a()[B

    move-result-object v4

    invoke-static {v1, v4, v5}, Lcom/baidu/mobstat/ad;->a([B[BI)V

    goto :goto_1e

    :cond_48
    invoke-virtual {v0}, Lcom/baidu/mobstat/ag;->a()[B

    move-result-object p1

    sget v0, Lcom/baidu/mobstat/ag;->a:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method
