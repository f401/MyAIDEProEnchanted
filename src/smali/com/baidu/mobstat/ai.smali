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

    new-instance p1, Lcom/baidu/mobstat/ai$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/baidu/mobstat/ai$a;-><init>(Lcom/baidu/mobstat/ai$1;)V

    iput-object p1, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    return-void
.end method


# virtual methods
.method public a([BII)Lcom/baidu/mobstat/ac;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    invoke-static {v0}, Lcom/baidu/mobstat/ai$a;->a(Lcom/baidu/mobstat/ai$a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/baidu/mobstat/ai$a;->a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;[BII)V

    iget-object p1, p0, Lcom/baidu/mobstat/ai;->f:Lcom/baidu/mobstat/ai$a;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ai$a;->a(Lcom/baidu/mobstat/ai$a;Ljava/lang/Object;)J

    move-result-wide p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p1

    const-wide p1, 0xffffffffL

    :goto_18
    const/4 p3, 0x1

    new-array p3, p3, [J

    const/4 v0, 0x0

    aput-wide p1, p3, v0

    invoke-static {p3}, Lcom/baidu/mobstat/ac;->a([J)Lcom/baidu/mobstat/ac;

    move-result-object p1

    return-object p1
.end method
