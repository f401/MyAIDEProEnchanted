.class Lcom/baidu/mobstat/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ce$a;,
        Lcom/baidu/mobstat/ce$b;,
        Lcom/baidu/mobstat/ce$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/nio/ByteBuffer;


# instance fields
.field private a:Lcom/baidu/mobstat/ce$a;

.field private b:Lcom/baidu/mobstat/ce$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ce;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/baidu/mobstat/ce$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ce$c;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/baidu/mobstat/ce;->a:Lcom/baidu/mobstat/ce$a;

    .line 60
    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/baidu/mobstat/ce;->c()Ljava/net/Socket;

    move-result-object v0

    .line 65
    :cond_0
    new-instance v1, Lcom/baidu/mobstat/ce$b;

    const/16 v2, 0x1388

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/baidu/mobstat/ce$b;-><init>(Lcom/baidu/mobstat/ce;Ljava/net/URI;ILjava/net/Socket;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    .line 66
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->c()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/baidu/mobstat/ce$c;

    invoke-direct {v1, p0, v0}, Lcom/baidu/mobstat/ce$c;-><init>(Lcom/baidu/mobstat/ce;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->a:Lcom/baidu/mobstat/ce$a;

    return-object v0
.end method

.method private c()Ljava/net/Socket;
    .registers 6

    const/4 v0, 0x0

    .line 35
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 36
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 37
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    if-nez v1, :cond_0

    .line 53
    :goto_1
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 39
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 49
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->d()V

    .line 86
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ce$b;->a([B)V

    .line 94
    :cond_0
    return-void
.end method

.method public b()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
