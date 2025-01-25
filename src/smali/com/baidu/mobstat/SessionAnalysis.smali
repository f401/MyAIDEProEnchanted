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
            "Ljava/util/Map<",
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    .line 33
    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 35
    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 37
    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 41
    new-instance v3, Lcom/baidu/mobstat/Session;

    invoke-direct {v3}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    .line 43
    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 45
    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 47
    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/SessionAnalysis$Callback;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    .line 33
    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 35
    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 37
    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 41
    new-instance v3, Lcom/baidu/mobstat/Session;

    invoke-direct {v3}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    .line 43
    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 45
    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 47
    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    .line 57
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 442
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_12
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/SessionAnalysis$a;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_32

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

    sget-object v1, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_32
    return-void
.end method

.method private a(Landroid/content/Context;JJII)V
    .registers 15

    .line 375
    sub-long v0, p4, p2

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_39

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2d

    const/4 v0, 0x2

    if-ne v0, p7, :cond_19

    .line 385
    iget-object p7, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p7, p2, p3}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    .line 389
    :cond_19
    iget-object p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz p2, :cond_23

    .line 390
    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/LaunchInfo;->getLaunchType(Landroid/content/Context;)I

    move-result p2

    move v6, p2

    goto :goto_25

    :cond_23
    const/4 p2, 0x0

    const/4 v6, 0x0

    .line 392
    :goto_25
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    .line 396
    :cond_2d
    iget-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    iget-wide p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    .line 397
    iget-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p1, p6}, Lcom/baidu/mobstat/Session;->setInvokeType(I)V

    :cond_39
    return-void
.end method

.method private a(Landroid/content/Context;JZZI)V
    .registers 19

    .line 456
    move-object v0, p0

    move-object v9, p1

    move-wide v1, p2

    move/from16 v3, p6

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4}, Lcom/baidu/mobstat/Session;->hasEnd()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2d

    .line 457
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v4

    iget-object v7, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4, v7}, Lcom/baidu/mobstat/DataCore;->putSession(Lcom/baidu/mobstat/Session;)V

    .line 458
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 460
    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v4

    .line 461
    invoke-static {v4}, Lcom/baidu/mobstat/cq;->a(Lorg/json/JSONObject;)V

    .line 464
    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    :cond_2d
    cmp-long v4, v1, v5

    if-lez v4, :cond_34

    const/4 v4, 0x1

    const/4 v10, 0x1

    goto :goto_36

    :cond_34
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_36
    if-eqz v10, :cond_3a

    move-wide v5, v1

    goto :goto_41

    .line 468
    :cond_3a
    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v4

    move-wide v5, v4

    .line 477
    :goto_41
    const-string v4, ""

    if-eqz v3, :cond_6d

    if-eqz p5, :cond_59

    .line 479
    iget-object v7, v0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v7, :cond_6b

    .line 480
    invoke-virtual {v7}, Lcom/baidu/mobstat/LaunchInfo;->getPushContent()Ljava/lang/String;

    move-result-object v4

    .line 481
    iget-object v7, v0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v7}, Lcom/baidu/mobstat/LaunchInfo;->getRefererPkgName()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    goto :goto_74

    .line 484
    :cond_59
    iget-object v7, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v7, :cond_6b

    .line 485
    invoke-virtual {v7}, Lcom/baidu/mobstat/LaunchInfo;->getPushContent()Ljava/lang/String;

    move-result-object v4

    .line 486
    iget-object v7, v0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    invoke-virtual {v7}, Lcom/baidu/mobstat/LaunchInfo;->getRefererPkgName()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    goto :goto_74

    :cond_6b
    move-object v7, v4

    goto :goto_74

    .line 491
    :cond_6d
    invoke-static {p1}, Lcom/baidu/mobstat/LaunchInfo;->getLauncherHomePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    .line 494
    :goto_74
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v8

    if-eqz v8, :cond_83

    .line 495
    invoke-static {v3, v4, v7}, Lcom/baidu/mobstat/LaunchInfo;->getConvertedJson(ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_84

    :cond_83
    const/4 v3, 0x0

    :goto_84
    move-object v8, v3

    if-eqz v10, :cond_98

    .line 500
    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v3}, Lcom/baidu/mobstat/Session;->reset()V

    .line 501
    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v3, p2, p3}, Lcom/baidu/mobstat/Session;->setStartTime(J)V

    if-eqz v8, :cond_98

    .line 504
    iget-object v1, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v1, v8}, Lcom/baidu/mobstat/Session;->setLaunchInfo(Lorg/json/JSONObject;)V

    .line 508
    :cond_98
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    move-object v2, p1

    move v3, v10

    move/from16 v4, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZLorg/json/JSONObject;)V

    .line 510
    iget-object v1, v0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    if-eqz v1, :cond_b4

    .line 511
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/DataCore;->getLogData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mobstat/SessionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V

    :cond_b4
    if-nez v10, :cond_ba

    .line 516
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    if-eqz v1, :cond_c1

    .line 517
    :cond_ba
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    .line 520
    :cond_c1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->clearLastSessionCache(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V
    .registers 30

    .line 409
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_5a

    .line 413
    :cond_11
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return-void

    .line 419
    :cond_18
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/DataCore;->getPagePy()Ljava/lang/String;

    move-result-object v15

    .line 421
    new-instance v3, Lcom/baidu/mobstat/Session$a;

    sub-long v8, v1, p4

    move-object v4, v3

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-wide/from16 v10, p4

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v4 .. v15}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V

    .line 429
    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/Session;->addPageView(Lcom/baidu/mobstat/Session$a;)V

    .line 430
    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v3, v1, v2}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    .line 432
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    .line 434
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/DataCore;->getTempPyd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 435
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 560
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 561
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method


# virtual methods
.method public autoTrackLaunchInfo(Lcom/baidu/mobstat/LaunchInfo;Z)V
    .registers 3

    if-eqz p2, :cond_5

    .line 142
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    goto :goto_7

    .line 144
    :cond_5
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->m:Lcom/baidu/mobstat/LaunchInfo;

    :goto_7
    return-void
.end method

.method public autoTrackSessionEndTime(Landroid/content/Context;J)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackEndTime(J)V

    .line 163
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    return-void
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;J)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    .line 154
    iput-wide p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    return-void
.end method

.method public clearLastSessionCache(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 548
    :cond_3
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

    sget-object v1, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public doSendLogCheck(Landroid/content/Context;J)V
    .registers 14

    .line 99
    iget-wide v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 101
    sub-long/2addr p2, v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1c

    .line 103
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    :cond_1c
    return-void
.end method

.method public doSendNewSessionLog(Landroid/content/Context;)V
    .registers 2

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

    if-gtz v0, :cond_8

    .line 76
    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 79
    :cond_8
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    return v0
.end method

.method public isSessionStart()Z
    .registers 6

    .line 566
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V
    .registers 25

    .line 232
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 234
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 238
    :cond_e
    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 243
    :cond_15
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v1, :cond_2f

    .line 244
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] 遗漏StatService.onPageStart(), 请检查邻近页面埋点: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_2f
    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const-string v9, ""

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 251
    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    .line 253
    move-wide/from16 v0, p5

    iput-wide v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-void
.end method

.method public onPageEndAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/baidu/mobstat/ExtraInfo;)V
    .registers 26

    .line 293
    move-object/from16 v14, p0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    if-eqz p7, :cond_a

    .line 295
    iget-object v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    goto :goto_c

    :cond_a
    iget-object v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    :goto_c
    move-object v13, v0

    .line 297
    iget-boolean v0, v13, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v0, :cond_2b

    if-nez p7, :cond_2a

    .line 299
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] 遗漏StatService.onResume(Activity), 请检查邻近页面埋点: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    :cond_2a
    return-void

    .line 306
    :cond_2b
    move-object/from16 v10, p2

    iget-object v2, v13, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v4, v13, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object v14, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 309
    iput-boolean v15, v14, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 311
    move-wide/from16 v1, p5

    iput-wide v1, v0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-void
.end method

.method public onPageEndFrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 23

    .line 344
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 348
    :cond_b
    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 353
    :cond_12
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v1, :cond_2c

    .line 354
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] 遗漏StatService.onResume(Fragment), 请检查邻近页面埋点: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_2c
    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 361
    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    .line 363
    move-wide/from16 v0, p5

    iput-wide v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-void
.end method

.method public onPageStart(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 16

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, p5, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 206
    :cond_b
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 211
    :cond_12
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v1, :cond_2b

    .line 212
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WARNING] 遗漏StatService.onPageEnd(), 请检查邻近页面埋点: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 215
    :cond_2b
    iget-boolean p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    const/4 v1, 0x1

    if-nez p2, :cond_3c

    .line 216
    iget-wide v4, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v9, 0x3

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p4

    move v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 218
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 221
    :cond_3c
    iput-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 222
    iput-wide p4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    return-void
.end method

.method public onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V
    .registers 16

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz p5, :cond_10

    .line 269
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 271
    :goto_12
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v1, :cond_2d

    if-nez p5, :cond_2d

    .line 272
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] 遗漏StatService.onPause(Activity), 请检查邻近页面埋点: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 275
    :cond_2d
    iget-boolean p5, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    const/4 v1, 0x1

    if-nez p5, :cond_3e

    .line 276
    iget-wide v4, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 278
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 281
    :cond_3e
    iput-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 282
    iput-object p2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 283
    iput-wide p3, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    return-void
.end method

.method public onPageStartFrag(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 16

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 325
    :cond_b
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    .line 327
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v1, :cond_28

    .line 328
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WARNING] 遗漏StatService.onPause(Fragment), 请检查邻近页面埋点: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 331
    :cond_28
    iget-wide v5, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v9, 0x2

    const/4 v10, 0x2

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 333
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 334
    iput-object p2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 335
    iput-wide p3, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    return-void
.end method

.method public onSessionStart(Landroid/content/Context;JZ)V
    .registers 13

    .line 167
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    if-eqz v0, :cond_5

    return-void

    .line 171
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    .line 177
    const-wide/16 v0, 0xbb8

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    .line 185
    :goto_13
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v0, :cond_1d

    .line 186
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/LaunchInfo;->getLaunchType(Landroid/content/Context;)I

    move-result v0

    move v7, v0

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 189
    :goto_1f
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    .line 191
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    return-void
.end method

.method public setAutoSend(Z)V
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Z

    return-void
.end method

.method public setSessionTimeOut(I)V
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 63
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    .line 64
    const-string v0, "[WARNING] SessionTimeout should be between 1 and 600. Default value[30] is used"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    const/16 p1, 0x1e

    goto :goto_1e

    :cond_f
    const/16 v0, 0x258

    if-le p1, v0, :cond_1e

    .line 67
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    .line 68
    const-string v1, "[WARNING] SessionTimeout should be between 1 and 600. Default value[600] is used"

    invoke-virtual {p1, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    const/16 p1, 0x258

    .line 71
    :cond_1e
    :goto_1e
    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    return-void
.end method
