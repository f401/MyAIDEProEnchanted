.class final Lcom/baidu/mobstat/aj;
.super Lcom/baidu/mobstat/ah;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Lcom/baidu/mobstat/ah;-><init>()V

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/baidu/mobstat/aj;->a:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/mobstat/aj;->b:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/baidu/mobstat/aj;->c:I

    iput p1, p0, Lcom/baidu/mobstat/aj;->d:I

    iput p2, p0, Lcom/baidu/mobstat/aj;->e:I

    return-void
.end method


# virtual methods
.method public a([BII)Lcom/baidu/mobstat/ac;
    .registers 10

    new-instance v0, Lcom/baidu/mobstat/ak;

    invoke-direct {v0}, Lcom/baidu/mobstat/ak;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/ak;->a([BII)V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ak;->a()J

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/ac;->a([J)Lcom/baidu/mobstat/ac;

    move-result-object v0

    return-object v0
.end method
