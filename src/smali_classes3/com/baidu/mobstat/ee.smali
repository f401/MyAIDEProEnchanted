.class public abstract Lcom/baidu/mobstat/ee;
.super Lcom/baidu/mobstat/eb;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ea;
.implements Ljava/lang/Runnable;


# static fields
.field static final c:Z


# instance fields
.field private a:Lcom/baidu/mobstat/ec;

.field protected b:Ljava/net/URI;

.field private d:Ljava/net/Socket;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/net/Proxy;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/baidu/mobstat/ef;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/CountDownLatch;

.field private l:Ljava/util/concurrent/CountDownLatch;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/baidu/mobstat/ee;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/baidu/mobstat/ee;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/baidu/mobstat/ef;Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/baidu/mobstat/ef;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/baidu/mobstat/eb;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    .line 39
    iput-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    .line 41
    iput-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    .line 47
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->g:Ljava/net/Proxy;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->k:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->l:Ljava/util/concurrent/CountDownLatch;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/ee;->m:I

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    .line 99
    iput-object p2, p0, Lcom/baidu/mobstat/ee;->i:Lcom/baidu/mobstat/ef;

    .line 100
    iput-object p3, p0, Lcom/baidu/mobstat/ee;->j:Ljava/util/Map;

    .line 101
    iput p4, p0, Lcom/baidu/mobstat/ee;->m:I

    .line 102
    new-instance v0, Lcom/baidu/mobstat/ec;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/ec;-><init>(Lcom/baidu/mobstat/ed;Lcom/baidu/mobstat/ef;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ee;)Lcom/baidu/mobstat/ec;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/ee;)Ljava/io/OutputStream;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method private h()I
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 230
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/16 v0, 0x1bb

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    const/16 v0, 0x50

    goto :goto_0

    .line 237
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private i()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    const-string v0, "/"

    .line 251
    :cond_1
    if-eqz v1, :cond_2

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/baidu/mobstat/ee;->h()I

    move-result v1

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Lcom/baidu/mobstat/ex;

    invoke-direct {v2}, Lcom/baidu/mobstat/ex;-><init>()V

    .line 257
    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;)V

    .line 258
    const-string v0, "Host"

    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->j:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ev;)V

    .line 265
    return-void
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    .line 349
    return-void
.end method

.method public abstract a(ILjava/lang/String;Z)V
.end method

.method public a(Lcom/baidu/mobstat/ea;ILjava/lang/String;)V
    .registers 4

    .line 334
    invoke-virtual {p0, p2, p3}, Lcom/baidu/mobstat/ee;->a(ILjava/lang/String;)V

    .line 335
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/ea;ILjava/lang/String;Z)V
    .registers 6

    .line 306
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 309
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/mobstat/ee;->a(ILjava/lang/String;Z)V

    .line 315
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 316
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 317
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {p0, p0, v0}, Lcom/baidu/mobstat/ee;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V
    .registers 3

    .line 289
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/ee;->b(Lcom/baidu/mobstat/es;)V

    .line 290
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/ez;)V
    .registers 4

    .line 297
    check-cast p2, Lcom/baidu/mobstat/fb;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/ee;->a(Lcom/baidu/mobstat/fb;)V

    .line 298
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 299
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V
    .registers 3

    .line 324
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/ee;->a(Ljava/lang/Exception;)V

    .line 325
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/ea;Ljava/lang/String;)V
    .registers 3

    .line 279
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/ee;->a(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public final a(Lcom/baidu/mobstat/ea;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 284
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/ee;->a(Ljava/nio/ByteBuffer;)V

    .line 285
    return-void
.end method

.method public a(Lcom/baidu/mobstat/es;)V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/es;)V

    .line 487
    return-void
.end method

.method public abstract a(Lcom/baidu/mobstat/fb;)V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/net/Socket;)V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iput-object p1, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    .line 427
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 388
    return-void
.end method

.method public a([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ec;->a([B)V

    .line 187
    return-void
.end method

.method public b()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    .line 137
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    return-void
.end method

.method public b(ILjava/lang/String;Z)V
    .registers 4

    .line 358
    return-void
.end method

.method public final b(Lcom/baidu/mobstat/ea;)V
    .registers 2

    .line 330
    return-void
.end method

.method public b(Lcom/baidu/mobstat/ea;ILjava/lang/String;Z)V
    .registers 5

    .line 339
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/mobstat/ee;->b(ILjava/lang/String;Z)V

    .line 340
    return-void
.end method

.method public b(Lcom/baidu/mobstat/es;)V
    .registers 2

    .line 390
    return-void
.end method

.method public c(Lcom/baidu/mobstat/ea;)Ljava/net/InetSocketAddress;
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 372
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/baidu/mobstat/ee;->b()V

    .line 147
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 148
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ec;->a(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public e()Z
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->d()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 6

    const/4 v4, -0x1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/baidu/mobstat/ee;->g:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/baidu/mobstat/ee;->b:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/mobstat/ee;->h()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/baidu/mobstat/ee;->m:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->e:Ljava/io/InputStream;

    .line 199
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->f:Ljava/io/OutputStream;

    .line 201
    invoke-direct {p0}, Lcom/baidu/mobstat/ee;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mobstat/ee$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/mobstat/ee$a;-><init>(Lcom/baidu/mobstat/ee;Lcom/baidu/mobstat/ee$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    .line 209
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    sget v0, Lcom/baidu/mobstat/ec;->b:I

    new-array v0, v0, [B

    .line 215
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/ee;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/baidu/mobstat/ee;->f()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/baidu/mobstat/ee;->e:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 216
    iget-object v2, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/ec;->a(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->b()V

    .line 226
    :goto_1
    sget-boolean v0, Lcom/baidu/mobstat/ee;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/mobstat/ee;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 204
    iget-object v1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;)V

    .line 227
    :cond_3
    return-void

    .line 218
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ec;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 221
    :catch_2
    move-exception v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ee;->a(Ljava/lang/Exception;)V

    .line 224
    iget-object v1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;)V

    goto :goto_1
.end method
