.class public Lcom/baidu/mobstat/LogSender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/LogSender$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/mobstat/LogSender;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:Lcom/baidu/mobstat/SendStrategyEnum;

.field private f:Ljava/util/Timer;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/baidu/mobstat/LogSender;

    invoke-direct {v0}, Lcom/baidu/mobstat/LogSender;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/LogSender;->a:Lcom/baidu/mobstat/LogSender;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    .line 52
    iput v0, p0, Lcom/baidu/mobstat/LogSender;->c:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/LogSender;->d:I

    .line 55
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/baidu/mobstat/LogSender;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 215
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_3d

    .line 220
    :cond_15
    new-instance v1, Lcom/baidu/mobstat/LogSender$3;

    invoke-direct {v1, p0, p2}, Lcom/baidu/mobstat/LogSender$3;-><init>(Lcom/baidu/mobstat/LogSender;Ljava/lang/String;)V

    .line 232
    :try_start_1a
    invoke-virtual {p1, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_21

    :catch_1f
    move-exception p1

    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_3d

    .line 236
    array-length p2, p1

    if-nez p2, :cond_27

    goto :goto_3d

    .line 242
    :cond_27
    :try_start_27
    new-instance p2, Lcom/baidu/mobstat/LogSender$4;

    invoke-direct {p2, p0}, Lcom/baidu/mobstat/LogSender$4;-><init>(Lcom/baidu/mobstat/LogSender;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_30

    goto :goto_31

    .line 253
    :catch_30
    move-exception p2

    .line 252
    :goto_31
    array-length p2, p1

    const/4 v1, 0x0

    :goto_33
    if-ge v1, p2, :cond_3d

    aget-object v2, p1, v1

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 353
    iget-boolean v0, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 357
    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/LogSender$5;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/LogSender$5;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 12

    .line 176
    invoke-direct {p0, p1, p4}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    .line 180
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_e
    if-ltz v0, :cond_3e

    .line 183
    :try_start_10
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 184
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_2c
    .catchall {:try_start_10 .. :try_end_1e} :catchall_23

    int-to-long v5, v5

    add-long/2addr v1, v5

    if-eqz v4, :cond_36

    .line 191
    goto :goto_30

    :catchall_23
    move-exception p1

    if-eqz v4, :cond_2b

    :try_start_26
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2b

    .line 205
    :catch_2a
    move-exception p2

    .line 195
    :cond_2b
    :goto_2b
    throw p1

    :catch_2c
    move-exception v5

    if-eqz v4, :cond_36

    .line 191
    nop

    :goto_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    move-exception v4

    :goto_35
    move-object v4, v3

    :cond_36
    cmp-long v5, v1, p2

    if-lez v5, :cond_3b

    goto :goto_3e

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_3e
    :goto_3e
    const/4 p2, 0x0

    :goto_3f
    if-gt p2, v0, :cond_4d

    .line 205
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    :cond_4d
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    if-nez p3, :cond_17

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start send log \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 506
    :cond_17
    iget-boolean v0, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 507
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    .line 508
    const-string p2, "[WARNING] wifi not available, log will be cached, next time will try to resend"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return v1

    .line 512
    :cond_2c
    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    if-eqz p3, :cond_32

    .line 514
    const-string v0, "https://hmma.baidu.com/auto.gif"

    .line 522
    :cond_32
    :try_start_32
    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    const/4 v1, 0x1

    goto :goto_3f

    :catch_37
    move-exception p1

    .line 527
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/Throwable;)V

    :goto_3f
    if-nez p3, :cond_55

    if-eqz v1, :cond_46

    .line 532
    const-string p1, "success"

    goto :goto_48

    :cond_46
    const-string p1, "failed"

    .line 533
    :goto_48
    const-string p2, "Send log "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    :cond_55
    return v1
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 438
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_26

    .line 441
    :cond_23
    invoke-static {p1, v0, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 449
    const-string v0, "failed_cnt"

    .line 451
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_a

    :catch_8
    move-exception p2

    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_d

    return-void

    .line 463
    :cond_d
    :try_start_d
    const-string p2, "trace"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 464
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 465
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_21

    .line 470
    :catch_20
    move-exception p2

    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/LogSender;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/baidu/mobstat/LogSender;->c:I

    return p0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 543
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 545
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/baidu/mobstat/LogSender;)Landroid/os/Handler;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const-string v0, "from"

    invoke-static {p1, p2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 558
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 559
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 560
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 561
    const-string p2, "Content-Type"

    const-string v1, "gzip"

    invoke-virtual {p1, p2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_18
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    const-string v1, "he"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 567
    const-string v1, "mtj_appkey"

    const-string v2, "k"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "mtj_appversion"

    const-string v2, "n"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v1, "mtj_os"

    const-string v2, "o"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v1, "mtj_pn"

    const-string v2, "pn"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v1, "mtj_tg"

    const-string v2, "tg"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v1, "mtj_ii"

    const-string v2, "ii"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p2

    .line 575
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 579
    :goto_71
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 582
    :try_start_74
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 583
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 584
    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 586
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    .line 590
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 592
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    :goto_a3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 594
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 597
    :cond_ad
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    .line 598
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_c3

    if-nez p2, :cond_c3

    .line 602
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_bf
    .catchall {:try_start_74 .. :try_end_bf} :catchall_e6

    .line 604
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    .line 599
    :cond_c3
    :try_start_c3
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; contentResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_e6
    .catchall {:try_start_c3 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception p2

    .line 604
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ec

    :goto_eb
    throw p2

    :goto_ec
    goto :goto_eb
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    invoke-static {p1, p2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 617
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 618
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 619
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 620
    const-string p2, "Content-Type"

    const-string v0, "gzip"

    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/baidu/mobstat/dh$a;->a()[B

    move-result-object p2

    .line 623
    invoke-static {}, Lcom/baidu/mobstat/dh$a;->b()[B

    move-result-object v0

    .line 625
    const-string v1, "key"

    invoke-static {p2}, Lcom/baidu/mobstat/dr;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v1, "iv"

    invoke-static {v0}, Lcom/baidu/mobstat/dr;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v1, "utf-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/baidu/mobstat/dh$a;->a([B[B[B)[B

    move-result-object p2

    .line 630
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 633
    :try_start_3d
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 634
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 635
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 636
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 639
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 641
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    :goto_62
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 643
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 646
    :cond_6c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    .line 647
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_82

    if-nez p2, :cond_82

    .line 651
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_7e
    .catchall {:try_start_3d .. :try_end_7e} :catchall_a5

    .line 653
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    .line 648
    :cond_82
    :try_start_82
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; contentResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a5
    .catchall {:try_start_82 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p2

    .line 653
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ab

    :goto_aa
    throw p2

    :goto_ab
    goto :goto_aa
.end method

.method public static instance()Lcom/baidu/mobstat/LogSender;
    .registers 1

    .line 48
    sget-object v0, Lcom/baidu/mobstat/LogSender;->a:Lcom/baidu/mobstat/LogSender;

    return-object v0
.end method


# virtual methods
.method public onSend(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_6
    if-nez p1, :cond_9

    return-void

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/LogSender$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/LogSender$1;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    if-eqz p3, :cond_5

    .line 162
    sget-object v0, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    .line 163
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p3, :cond_28

    .line 167
    const-wide/32 p2, 0xa00000

    sget-object v0, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;JLjava/lang/String;)V

    :cond_28
    return-void
.end method

.method public sendEmptyLogData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 475
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/LogSender$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/LogSender$7;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendLogData(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p1, :cond_1d

    .line 415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 419
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p3, :cond_13

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 423
    :cond_13
    iget-object p3, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/LogSender$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/mobstat/LogSender$6;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public sendLogDataWithSyn(Landroid/content/Context;)V
    .registers 14

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    const/16 v2, 0x14

    if-le v1, v2, :cond_1b

    const/16 v1, 0x14

    .line 314
    :cond_1b
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v1, :cond_56

    .line 321
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 324
    sget-object v6, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 328
    new-instance v5, Lcom/baidu/mobstat/LogSender$a;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    move-object v6, v5

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/baidu/mobstat/LogSender$a;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 331
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 334
    :cond_56
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 337
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 340
    :try_start_69
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_6c} :catch_72
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_5d

    :catch_6d
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_5d

    :catch_72
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5d

    :cond_77
    return-void
.end method

.method public setLogSenderDelayed(I)V
    .registers 3

    if-ltz p1, :cond_8

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_8

    .line 72
    iput p1, p0, Lcom/baidu/mobstat/LogSender;->c:I

    :cond_8
    return-void
.end method

.method public setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .registers 7

    .line 77
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x18

    if-eqz v0, :cond_2b

    if-lez p3, :cond_49

    if-gt p3, v1, :cond_49

    .line 79
    iput p3, p0, Lcom/baidu/mobstat/LogSender;->d:I

    .line 80
    sget-object p2, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 81
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V

    .line 82
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    iget p3, p0, Lcom/baidu/mobstat/LogSender;->d:I

    invoke-virtual {p2, p1, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;I)V

    goto :goto_49

    .line 85
    :cond_2b
    iput-object p2, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 86
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p3

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V

    .line 87
    sget-object p3, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, p3}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 88
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;I)V

    .line 91
    :cond_49
    :goto_49
    iput-boolean p4, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    .line 92
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    iget-boolean p3, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    invoke-virtual {p2, p1, p3}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public setSendingLogTimer(Landroid/content/Context;)V
    .registers 9

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 138
    iget v0, p0, Lcom/baidu/mobstat/LogSender;->d:I

    const v1, 0x36ee80

    mul-int v0, v0, v1

    int-to-long v5, v0

    .line 142
    :try_start_c
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    .line 143
    new-instance v2, Lcom/baidu/mobstat/LogSender$2;

    invoke-direct {v2, p0, p1}, Lcom/baidu/mobstat/LogSender$2;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    move-wide v3, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    move-exception p1

    :goto_1e
    return-void
.end method
