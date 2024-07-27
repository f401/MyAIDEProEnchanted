.class final Lcom/baidu/mobstat/am$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/mobstat/am;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/am;Lcom/baidu/mobstat/am;)I
    .registers 9

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/baidu/mobstat/am;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/baidu/mobstat/am;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mobstat/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/mobstat/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/baidu/mobstat/am;

    check-cast p2, Lcom/baidu/mobstat/am;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/am$1;->a(Lcom/baidu/mobstat/am;Lcom/baidu/mobstat/am;)I

    move-result v0

    return v0
.end method
