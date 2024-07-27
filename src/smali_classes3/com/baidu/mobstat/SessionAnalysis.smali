.class public Lcom/baidu/mobstat/SessionAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/SessionAnalysis$Callback;,
        Lcom/baidu/mobstat/SessionAnalysis$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/SessionAnalysis$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/mobstat/SessionAnalysis$a;

.field private d:Lcom/baidu/mobstat/SessionAnalysis$a;

.field private e:Z

.field private f:J

.field private g:Lcom/baidu/mobstat/Session;

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:Lcom/baidu/mobstat/LaunchInfo;

.field private m:Lcom/baidu/mobstat/LaunchInfo;

.field public mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 35
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 37
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 39
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 41
    new-instance v0, Lcom/baidu/mobstat/Session;

    invoke-direct {v0}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    .line 43
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 45
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 47
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/SessionAnalysis$Callback;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 35
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 37
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 39
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 41
    new-instance v0, Lcom/baidu/mobstat/Session;

    invoke-direct {v0}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    .line 43
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 45
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 47
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    .line 57
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 536
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 541
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;JJII)V
    .registers 16

    const/4 v4, 0x0

    .line 375
    sub-long v0, p4, p2

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 377
    :goto_0
    if-nez v0, :cond_1

    .line 399
    :goto_1
    return-void

    :cond_0
    move v0, v4

    .line 375
    goto :goto_0

    .line 382
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 384
    const/4 v0, 0x2

    if-ne v0, p7, :cond_2

    .line 385
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/LaunchInfo;->getLaunchType(Landroid/content/Context;)I

    move-result v6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move v5, v4

    .line 392
    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    .line 397
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p6}, Lcom/baidu/mobstat/Session;->setInvokeType(I)V

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2
.end method

.method private a(Landroid/content/Context;JZZI)V
    .registers 15

    const-wide/16 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->putSession(Lcom/baidu/mobstat/Session;)V

    .line 458
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 460
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/baidu/mobstat/cq;->a(Lorg/json/JSONObject;)V

    .line 464
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    .line 467
    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 468
    :goto_0
    if-eqz v2, :cond_7

    move-wide v4, p2

    .line 474
    :goto_1
    const-string v0, ""

    .line 475
    const-string v1, ""

    .line 477
    if-eqz p6, :cond_9

    .line 478
    if-eqz p5, :cond_8

    .line 479
    iget-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v3, :cond_1

    .line 480
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/LaunchInfo;->getPushContent()Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v1}, Lcom/baidu/mobstat/LaunchInfo;->getRefererPkgName()Ljava/lang/String;

    move-result-object v1

    .line 494
    :cond_1
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 495
    invoke-static {p6, v1, v0}, Lcom/baidu/mobstat/LaunchInfo;->getConvertedJson(ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 499
    :goto_3
    if-eqz v2, :cond_2

    .line 500
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->reset()V

    .line 501
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setStartTime(J)V

    .line 503
    if-eqz v7, :cond_2

    .line 504
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, v7}, Lcom/baidu/mobstat/Session;->setLaunchInfo(Lorg/json/JSONObject;)V

    .line 508
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    move-object v1, p1

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZLorg/json/JSONObject;)V

    .line 510
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    if-eqz v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/DataCore;->getLogData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V

    .line 516
    :cond_3
    if-nez v2, :cond_4

    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    if-eqz v0, :cond_5

    .line 517
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    .line 520
    :cond_5
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->clearLastSessionCache(Landroid/content/Context;)V

    .line 521
    return-void

    .line 467
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 468
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v4

    goto :goto_1

    .line 484
    :cond_8
    iget-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v3, :cond_1

    .line 485
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/LaunchInfo;->getPushContent()Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v1}, Lcom/baidu/mobstat/LaunchInfo;->getRefererPkgName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 491
    :cond_9
    invoke-static {p1}, Lcom/baidu/mobstat/LaunchInfo;->getLauncherHomePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 495
    :cond_a
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V
    .registers 28

    .line 409
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/DataCore;->getPagePy()Ljava/lang/String;

    move-result-object v13

    .line 421
    new-instance v2, Lcom/baidu/mobstat/Session$a;

    sub-long v6, p6, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-wide/from16 v8, p4

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v2 .. v13}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/Session;->addPageView(Lcom/baidu/mobstat/Session$a;)V

    .line 430
    iget-object v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    .line 432
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    .line 434
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/DataCore;->getTempPyd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public autoTrackLaunchInfo(Lcom/baidu/mobstat/LaunchInfo;Z)V
    .registers 3

    .line 141
    if-eqz p2, :cond_0

    .line 142
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    goto :goto_0
.end method

.method public autoTrackSessionEndTime(Landroid/content/Context;J)V
    .registers 6

    .line 158
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackEndTime(J)V

    .line 163
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;J)V
    .registers 6

    .line 149
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    .line 154
    iput-wide p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    goto :goto_0
.end method

.method public clearLastSessionCache(Landroid/content/Context;)V
    .registers 5

    .line 544
    if-nez p1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public doSendLogCheck(Landroid/content/Context;J)V
    .registers 12

    const/4 v4, 0x0

    .line 99
    iget-wide v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 101
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sub-long v0, p2, v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 103
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    .line 105
    :cond_0
    return-void
.end method

.method public doSendNewSessionLog(Landroid/content/Context;)V
    .registers 2

    .line 109
    return-void
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSessionSize()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    return v0
.end method

.method public getSessionStartTime()J
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeOut()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    if-gtz v0, :cond_0

    .line 76
    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 79
    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    return v0
.end method

.method public isSessionStart()Z
    .registers 5

    .line 566
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V
    .registers 28

    .line 232
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 234
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v4

    .line 239
    if-eqz v4, :cond_0

    .line 243
    iget-boolean v5, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v5, :cond_2

    .line 244
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WARNING] \u9057\u6f0fStatService.onPageStart(), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v6, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v8, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const-string v13, ""

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p7

    move/from16 v17, p8

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    .line 253
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_0
.end method

.method public onPageEndAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/baidu/mobstat/ExtraInfo;)V
    .registers 28

    .line 293
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 295
    if-eqz p7, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object/from16 v18, v4

    .line 297
    :goto_0
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v4, :cond_2

    .line 298
    if-nez p7, :cond_0

    .line 299
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WARNING] \u9057\u6f0fStatService.onResume(Activity), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_1
    return-void

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object/from16 v18, v4

    goto :goto_0

    .line 306
    :cond_2
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p2

    move/from16 v15, p7

    move-object/from16 v16, p8

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 309
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 311
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_1
.end method

.method public onPageEndFrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 26

    .line 344
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v4

    .line 349
    if-eqz v4, :cond_0

    .line 353
    iget-boolean v5, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v5, :cond_2

    .line 354
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WARNING] \u9057\u6f0fStatService.onResume(Fragment), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v6, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v8, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    .line 363
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    goto :goto_0
.end method

.method public onPageStart(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 16

    const/4 v9, 0x1

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, p5, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v8

    .line 207
    if-eqz v8, :cond_0

    .line 211
    iget-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v0, :cond_2

    .line 212
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onPageEnd(), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 215
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    if-nez v0, :cond_3

    .line 216
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 218
    iput-boolean v9, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 221
    :cond_3
    iput-boolean v9, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 222
    iput-wide p4, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    goto :goto_0
.end method

.method public onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V
    .registers 15

    const/4 v6, 0x1

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object v8, v0

    .line 271
    :goto_1
    iget-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    .line 272
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onPause(Activity), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    if-nez v0, :cond_2

    .line 276
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 278
    iput-boolean v6, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 281
    :cond_2
    iput-boolean v6, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 282
    iput-object p2, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 283
    iput-wide p3, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object v8, v0

    goto :goto_1
.end method

.method public onPageStartFrag(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 14

    const/4 v6, 0x2

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v8

    .line 327
    iget-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v0, :cond_1

    .line 328
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onPause(Fragment), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 331
    :cond_1
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 334
    iput-object p2, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 335
    iput-wide p3, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    goto :goto_0
.end method

.method public onSessionStart(Landroid/content/Context;JZ)V
    .registers 13

    const/4 v5, 0x1

    .line 167
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    .line 177
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    const/4 v6, 0x0

    .line 185
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/LaunchInfo;->getLaunchType(Landroid/content/Context;)I

    move-result v6

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 189
    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    .line 191
    iput-boolean v5, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setAutoSend(Z)V
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    .line 138
    return-void
.end method

.method public setSessionTimeOut(I)V
    .registers 5

    const/16 v0, 0x258

    .line 61
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 62
    const/16 p1, 0x1e

    .line 63
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 64
    const-string v1, "[WARNING] SessionTimeout should be between 1 and 600. Default value[30] is used"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 72
    return-void

    .line 65
    :cond_1
    if-le p1, v0, :cond_0

    .line 67
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    .line 68
    const-string v2, "[WARNING] SessionTimeout should be between 1 and 600. Default value[600] is used"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    move p1, v0

    goto :goto_0
.end method
