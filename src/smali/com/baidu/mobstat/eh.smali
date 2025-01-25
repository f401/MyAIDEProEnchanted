.class public Lcom/baidu/mobstat/eh;
.super Lcom/baidu/mobstat/eg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/mobstat/eg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;
    .registers 4

    .line 18
    invoke-super {p0, p1}, Lcom/baidu/mobstat/eg;->a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;

    .line 19
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Lcom/baidu/mobstat/ef;
    .registers 2

    .line 25
    new-instance v0, Lcom/baidu/mobstat/eh;

    invoke-direct {v0}, Lcom/baidu/mobstat/eh;-><init>()V

    return-object v0
.end method
