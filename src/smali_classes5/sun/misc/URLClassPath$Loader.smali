.class Lsun/misc/URLClassPath$Loader;
.super Ljava/lang/Object;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final base:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    .line 455
    return-void
.end method

.method static synthetic access$200(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;
    .registers 2

    .line 447
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 7

    const/4 v1, 0x0

    .line 467
    :try_start_1
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_d} :catch_37

    .line 470
    if-eqz p2, :cond_12

    .line 474
    :try_start_f
    invoke-static {v2}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 481
    :cond_12
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 482
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_2b

    .line 483
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 484
    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0x190

    if-lt v0, v3, :cond_32

    move-object v0, v1

    .line 495
    :goto_2a
    return-object v0

    .line 490
    :cond_2b
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_32} :catch_34

    :cond_32
    move-object v0, v2

    .line 493
    goto :goto_2a

    .line 494
    :catch_34
    move-exception v0

    move-object v0, v1

    .line 495
    goto :goto_2a

    .line 468
    :catch_37
    move-exception v0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBaseURL()Ljava/net/URL;
    .registers 2

    .line 461
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method

.method getClassPath()[Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .registers 3

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 6

    .line 502
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_c} :catch_21

    .line 505
    if-eqz p2, :cond_11

    .line 509
    :try_start_e
    invoke-static {v1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 511
    :cond_11
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1e

    .line 515
    new-instance v0, Lsun/misc/URLClassPath$Loader$1;

    invoke-direct {v0, p0, p1, v1, v2}, Lsun/misc/URLClassPath$Loader$1;-><init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V

    :goto_1d
    return-object v0

    .line 513
    :catch_1e
    move-exception v0

    .line 514
    const/4 v0, 0x0

    goto :goto_1d

    .line 503
    :catch_21
    move-exception v0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
