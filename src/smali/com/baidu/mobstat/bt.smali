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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/mobstat/bt;->a:J

    return-void
.end method


# virtual methods
.method public a(JJ)Z
    .registers 9

    iget-wide v0, p0, Lcom/baidu/mobstat/bt;->a:J

    and-long/2addr p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr p3, v2

    and-long/2addr p3, v0

    or-long/2addr p1, p3

    iput-wide p1, p0, Lcom/baidu/mobstat/bt;->a:J

    xor-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method
