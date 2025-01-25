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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ce$c;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/baidu/mobstat/ce;->a:Lcom/baidu/mobstat/ce$a;

    .line 61
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "wss://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 62
    invoke-direct {p0}, Lcom/baidu/mobstat/ce;->c()Ljava/net/Socket;

    move-result-object p2

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    .line 65
    :goto_17
    new-instance v0, Lcom/baidu/mobstat/ce$b;

    const/16 v1, 0x1388

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/baidu/mobstat/ce$b;-><init>(Lcom/baidu/mobstat/ce;Ljava/net/URI;ILjava/net/Socket;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    .line 66
    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->c()Z
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    .line 68
    new-instance p2, Lcom/baidu/mobstat/ce$c;

    invoke-direct {p2, p0, p1}, Lcom/baidu/mobstat/ce$c;-><init>(Lcom/baidu/mobstat/ce;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/baidu/mobstat/ce;->a:Lcom/baidu/mobstat/ce$a;

    return-object p0
.end method

.method private c()Ljava/net/Socket;
    .registers 3

    .line 35
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 37
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_11

    :catch_f
    move-exception v1

    move-object v1, v0

    :goto_11
    if-nez v1, :cond_14

    return-object v0

    .line 48
    :cond_14
    :try_start_14
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->d()V

    :cond_7
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    if-eqz v0, :cond_11

    .line 91
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ce$b;->a([B)V

    :cond_11
    return-void
.end method

.method public b()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->f()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->g()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/mobstat/ce;->b:Lcom/baidu/mobstat/ce$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce$b;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
