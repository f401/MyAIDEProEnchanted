.class final Lcom/baidu/mobstat/ai;
.super Lcom/baidu/mobstat/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ai$a;
    }
.end annotation


# instance fields
.field private f:Lcom/baidu/mobstat/ai$a;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Lcom/baidu/mobstat/ah;-><init>()V

    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lcom/baidu/mobstat/ai;->a:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/mobstat/ai;->b:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/baidu/mobstat/ai;->c:I

    iput p1, p0, Lcom/baidu/mobstat/ai;->d:I

    iput p2, p0, Lcom/baidu/mobstat/ai;->e:I

    new-instance v0, Lcom/baidu/mobstat/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ai$a;-><init>(Lcom/baidu/mobstat/ai$1;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    return-void
.end method


# virtual methods
.method public a([BII)Lcom/baidu/mobstat/ac;
    .registers 8

    const-wide v0, 0xffffffffL

    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    invoke-static {v2}, Lcom/baidu/mobstat/ai$a;->a(Lcom/baidu/mobstat/ai$a;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    invoke-static {v3, v2, p1, p2, p3}, Lcom/baidu/mobstat/ai$a;->a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;[BII)V

    iget-object v3, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    invoke-static {v3, v2}, Lcom/baidu/mobstat/ai$a;->a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    invoke-static {v2}, Lcom/baidu/mobstat/ac;->a([J)Lcom/baidu/mobstat/ac;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
