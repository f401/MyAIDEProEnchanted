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
        "Ljava/util/Comparator<",
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
    .registers 8

    invoke-virtual {p1}, Lcom/baidu/mobstat/am;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/baidu/mobstat/am;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    if-lez v4, :cond_13

    const/4 p1, -0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x1

    :goto_14
    return p1

    :cond_15
    invoke-virtual {p1}, Lcom/baidu/mobstat/am;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/baidu/mobstat/am;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/baidu/mobstat/am;

    check-cast p2, Lcom/baidu/mobstat/am;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/am$1;->a(Lcom/baidu/mobstat/am;Lcom/baidu/mobstat/am;)I

    move-result p1

    return p1
.end method
