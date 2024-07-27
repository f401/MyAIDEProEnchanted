.class public abstract Lcom/baidu/mobstat/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ed;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ea;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Lcom/baidu/mobstat/ea;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/baidu/mobstat/el;

    const-string v1, "socket not bound"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V
    .registers 3

    .line 51
    return-void
.end method

.method public a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/eu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public b(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V
    .registers 5

    .line 61
    new-instance v0, Lcom/baidu/mobstat/et;

    invoke-direct {v0, p2}, Lcom/baidu/mobstat/et;-><init>(Lcom/baidu/mobstat/es;)V

    .line 62
    sget-object v1, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/et;->a(Lcom/baidu/mobstat/es$a;)V

    .line 63
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/ea;->a(Lcom/baidu/mobstat/es;)V

    .line 64
    return-void
.end method

.method public c(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V
    .registers 3

    .line 73
    return-void
.end method
