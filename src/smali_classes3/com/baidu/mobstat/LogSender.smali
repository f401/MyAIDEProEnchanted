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

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
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

    .line 68
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    if-nez p1, :cond_1

    .line 256
    :cond_0
    return-object v2

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Lcom/baidu/mobstat/LogSender$3;

    invoke-direct {v1, p0, p2}, Lcom/baidu/mobstat/LogSender$3;-><init>(Lcom/baidu/mobstat/LogSender;Ljava/lang/String;)V

    .line 230
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 236
    :goto_0
    if-eqz v1, :cond_0

    array-length v0, v1

    if-eqz v0, :cond_0

    .line 242
    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/LogSender$4;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/LogSender$4;-><init>(Lcom/baidu/mobstat/LogSender;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :goto_1
    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 253
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    return-object v0
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

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/LogSender$5;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/LogSender$5;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 15

    const/4 v5, 0x0

    .line 176
    invoke-direct {p0, p1, p4}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 179
    const-wide/16 v2, 0x0

    .line 180
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move-object v4, v5

    .line 181
    :goto_0
    if-ltz v1, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 184
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    int-to-long v8, v4

    .line 185
    add-long/2addr v2, v8

    .line 189
    if-eqz v0, :cond_3

    .line 191
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v4, v5

    .line 199
    :goto_2
    cmp-long v0, v2, p2

    if-lez v0, :cond_2

    .line 204
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-gt v2, v1, :cond_4

    .line 205
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 204
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 186
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 189
    :goto_4
    if-eqz v0, :cond_3

    .line 191
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    move-object v4, v5

    .line 195
    goto :goto_2

    .line 189
    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_6
    if-eqz v4, :cond_1

    .line 191
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 195
    :cond_1
    :goto_7
    throw v1

    .line 181
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 189
    :catchall_1
    move-exception v1

    move-object v4, v0

    goto :goto_6

    :cond_3
    move-object v4, v0

    .line 186
    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_4

    .line 192
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_7

    .line 207
    :cond_4
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
    .registers 8

    const/4 v0, 0x0

    .line 500
    if-nez p3, :cond_0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start send log \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    .line 508
    const-string v2, "[WARNING] wifi not available, log will be cached, next time will try to resend"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 538
    :cond_1
    :goto_0
    return v0

    .line 512
    :cond_2
    sget-object v1, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    .line 513
    if-eqz p3, :cond_3

    .line 514
    const-string v1, "https://hmma.baidu.com/auto.gif"

    .line 522
    :cond_3
    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/4 v0, 0x1

    .line 531
    :goto_1
    if-nez p3, :cond_1

    .line 532
    if-eqz v0, :cond_4

    const-string v1, "success"

    .line 533
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send log "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 532
    :cond_4
    const-string v1, "failed"

    goto :goto_2
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 437
    if-eqz v1, :cond_0

    .line 438
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 449
    const/4 v1, 0x0

    .line 451
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 456
    :goto_0
    if-nez v1, :cond_0

    .line 471
    :goto_1
    return-void

    .line 463
    :cond_0
    :try_start_1
    const-string v0, "trace"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 464
    const-string v2, "failed_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 465
    const-string v4, "failed_cnt"

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0

    .line 466
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/LogSender;)I
    .registers 2

    .line 43
    iget v0, p0, Lcom/baidu/mobstat/LogSender;->c:I

    return v0
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

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/LogSender;)Landroid/os/Handler;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 555
    invoke-static {p1, p2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 558
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 559
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 560
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 561
    const-string v0, "Content-Type"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    const-string v2, "he"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 567
    const-string v2, "mtj_appkey"

    const-string v3, "k"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "mtj_appversion"

    const-string v3, "n"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v2, "mtj_os"

    const-string v3, "o"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v2, "mtj_pn"

    const-string v3, "pn"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v2, "mtj_tg"

    const-string v3, "tg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v2, "mtj_ii"

    const-string v3, "ii"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v2, "from"

    const-string v3, "from"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 582
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 583
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 584
    invoke-virtual {v0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 586
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 590
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 597
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 598
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_2

    .line 599
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; contentResponse = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 602
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 604
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 602
    return-object v0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    .line 614
    invoke-static {p1, p2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 617
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 618
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 619
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 620
    const-string v0, "Content-Type"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/baidu/mobstat/dh$a;->a()[B

    move-result-object v0

    .line 623
    invoke-static {}, Lcom/baidu/mobstat/dh$a;->b()[B

    move-result-object v2

    .line 625
    const-string v3, "key"

    invoke-static {v0}, Lcom/baidu/mobstat/dr;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v3, "iv"

    invoke-static {v2}, Lcom/baidu/mobstat/dr;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v3, "utf-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/mobstat/dh$a;->a([B[B[B)[B

    move-result-object v0

    .line 630
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 633
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 634
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 635
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 636
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 639
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 647
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_2

    .line 648
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; contentResponse = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 651
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 653
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 651
    return-object v0
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

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 130
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/LogSender$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/LogSender$1;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    .line 162
    if-eqz p3, :cond_1

    sget-object v0, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    if-eqz p3, :cond_0

    .line 167
    const-wide/32 v0, 0xa00000

    sget-object v2, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 173
    :cond_0
    return-void

    .line 162
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    goto :goto_0
.end method

.method public sendEmptyLogData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/LogSender$7;

    invoke-direct {v2, p0, v0, p2}, Lcom/baidu/mobstat/LogSender$7;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public sendLogData(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .line 415
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 420
    if-eqz p3, :cond_2

    .line 421
    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/LogSender$6;

    invoke-direct {v2, p0, v0, p2}, Lcom/baidu/mobstat/LogSender$6;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendLogDataWithSyn(Landroid/content/Context;)V
    .registers 14

    const/16 v0, 0x14

    const/4 v7, 0x0

    .line 295
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 298
    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 299
    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 304
    if-nez v1, :cond_1

    .line 350
    :cond_0
    return-void

    .line 309
    :cond_1
    if-le v1, v0, :cond_4

    move v6, v0

    .line 314
    :goto_0
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 317
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v8, v7

    .line 319
    :goto_1
    if-ge v8, v6, :cond_2

    .line 321
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA_FULL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    const/4 v5, 0x1

    .line 328
    :goto_2
    new-instance v0, Lcom/baidu/mobstat/LogSender$a;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/LogSender$a;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 331
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 334
    :cond_2
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 337
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 340
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 343
    :catch_1
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_3

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v6, v1

    goto :goto_0
.end method

.method public setLogSenderDelayed(I)V
    .registers 3

    .line 71
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 72
    iput p1, p0, Lcom/baidu/mobstat/LogSender;->c:I

    .line 74
    :cond_0
    return-void
.end method

.method public setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .registers 8

    const/16 v2, 0x18

    .line 77
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    if-lez p3, :cond_0

    if-gt p3, v2, :cond_0

    .line 79
    iput p3, p0, Lcom/baidu/mobstat/LogSender;->d:I

    .line 80
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 81
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V

    .line 82
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/LogSender;->d:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;I)V

    .line 91
    :cond_0
    :goto_0
    iput-boolean p4, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    .line 92
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Z)V

    .line 93
    return-void

    .line 85
    :cond_1
    iput-object p2, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 86
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V

    .line 87
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setSendingLogTimer(Landroid/content/Context;)V
    .registers 8

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 138
    iget v0, p0, Lcom/baidu/mobstat/LogSender;->d:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 142
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mobstat/LogSender$2;

    invoke-direct {v1, p0, v4}, Lcom/baidu/mobstat/LogSender$2;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method
