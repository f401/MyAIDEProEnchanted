.class public Lcom/baidu/mobstat/bt;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/bt;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/mobstat/bt;->a:J

    return-void
.end method


# virtual methods
.method public a(JJ)Z
    .registers 12

    iget-wide v0, p0, Lcom/baidu/mobstat/bt;->a:J

    iget-wide v2, p0, Lcom/baidu/mobstat/bt;->a:J

    const-wide/16 v4, -0x1

    xor-long/2addr v4, p3

    and-long/2addr v2, v4

    and-long v4, p1, p3

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/mobstat/bt;->a:J

    iget-wide v2, p0, Lcom/baidu/mobstat/bt;->a:J

    xor-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
