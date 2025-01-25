.class Lcom/baidu/mobstat/co$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->d(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/mobstat/ck;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;)V
    .registers 2

    .line 1027
    iput-object p1, p0, Lcom/baidu/mobstat/co$4;->a:Lcom/baidu/mobstat/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ck;Lcom/baidu/mobstat/ck;)I
    .registers 6

    .line 1031
    invoke-virtual {p1}, Lcom/baidu/mobstat/ck;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/baidu/mobstat/ck;->b()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    if-gez v2, :cond_15

    const/4 p1, -0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1027
    check-cast p1, Lcom/baidu/mobstat/ck;

    check-cast p2, Lcom/baidu/mobstat/ck;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/co$4;->a(Lcom/baidu/mobstat/ck;Lcom/baidu/mobstat/ck;)I

    move-result p1

    return p1
.end method
