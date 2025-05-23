.class public Lcom/baidu/mobstat/BDStatCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVOKE_ACT:I = 0x1

.field public static final INVOKE_API:I = 0x0

.field public static final INVOKE_CUSTOME:I = 0x3

.field public static final INVOKE_FRAG:I = 0x2

.field private static a:Lcom/baidu/mobstat/BDStatCore;


# instance fields
.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private d:Lcom/baidu/mobstat/SessionAnalysis;

.field private e:Lcom/baidu/mobstat/EventAnalysis;

.field private f:Ljava/lang/Runnable;

.field private g:J

.field private volatile h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    .line 963
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/mobstat/BDStatCore;->g:J

    .line 998
    iput-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BDStatCore"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    .line 73
    new-instance v0, Lcom/baidu/mobstat/EventAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/EventAnalysis;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->e:Lcom/baidu/mobstat/EventAnalysis;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dataAnalyzeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->i:Landroid/os/Handler;

    return-void
.end method

.method private a()I
    .registers 9

    .line 615
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.Fragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_a

    :catch_8
    move-exception v1

    move-object v1, v0

    .line 622
    :goto_a
    :try_start_a
    const-string v2, "android.support.v4.app.Fragment"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    move-exception v2

    move-object v2, v0

    .line 627
    :goto_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1c
    if-eqz v3, :cond_67

    .line 628
    array-length v5, v3

    if-ge v4, v5, :cond_67

    .line 629
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_64

    .line 634
    :cond_2e
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    .line 635
    const-string v7, "onResume"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_64

    .line 641
    :cond_3d
    :try_start_3d
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_42

    goto :goto_44

    :catchall_42
    move-exception v5

    move-object v5, v0

    :goto_44
    if-nez v5, :cond_47

    goto :goto_64

    .line 650
    :cond_47
    const-class v6, Landroid/app/Activity;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_51

    const/4 v0, 0x1

    return v0

    :cond_51
    const/4 v6, 0x2

    if-eqz v1, :cond_5b

    .line 652
    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5b

    return v6

    :cond_5b
    if-eqz v2, :cond_64

    .line 654
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_64

    return v6

    :cond_64
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_67
    const/4 v0, 0x3

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;J)J
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/baidu/mobstat/BDStatCore;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;
    .registers 8

    .line 29
    invoke-direct/range {p0 .. p7}, Lcom/baidu/mobstat/BDStatCore;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p6, :cond_19

    .line 916
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_19

    .line 918
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {v2, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_1a

    :catch_18
    move-exception p6

    :cond_19
    move-object v2, v1

    :goto_1a
    if-eqz p7, :cond_20

    .line 926
    invoke-virtual {p7}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 929
    :cond_20
    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, " eventId "

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", with eventLabel "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", with acc "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-lez p3, :cond_58

    .line 932
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ", with duration "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    if-eqz v2, :cond_71

    .line 935
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-eqz p1, :cond_71

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ", with attributes "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    if-eqz v1, :cond_8a

    .line 939
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-eqz p1, :cond_8a

    .line 940
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ", with extraInfo "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    :cond_8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    .line 84
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 86
    invoke-static {p1}, Lcom/baidu/mobstat/cq;->a(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 5

    .line 663
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 664
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_33

    .line 665
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_30

    .line 672
    :cond_19
    :try_start_19
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception v2

    const/4 v2, 0x0

    :goto_20
    if-nez v2, :cond_23

    goto :goto_30

    .line 681
    :cond_23
    const-class v3, Landroid/app/Activity;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 682
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 686
    :cond_33
    const-string v0, ""

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .line 1006
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->isEnableBplus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1010
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 1014
    :cond_16
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    if-nez p1, :cond_1e

    return-void

    .line 1035
    :cond_1e
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->i:Landroid/os/Handler;

    if-nez v0, :cond_23

    return-void

    .line 1040
    :cond_23
    new-instance v1, Lcom/baidu/mobstat/BDStatCore$17;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/BDStatCore$17;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1056
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/BDStatCore;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/baidu/mobstat/BDStatCore;->e:Lcom/baidu/mobstat/EventAnalysis;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/mobstat/BDStatCore;)J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/baidu/mobstat/BDStatCore;->g:J

    return-wide v0
.end method

.method public static instance()Lcom/baidu/mobstat/BDStatCore;
    .registers 2

    .line 46
    sget-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    if-nez v0, :cond_1b

    .line 47
    const-class v0, Lcom/baidu/mobstat/BDStatCore;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    if-nez v0, :cond_12

    .line 49
    new-instance v0, Lcom/baidu/mobstat/BDStatCore;

    invoke-direct {v0}, Lcom/baidu/mobstat/BDStatCore;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    .line 51
    :cond_12
    const-class v0, Lcom/baidu/mobstat/BDStatCore;

    monitor-exit v0

    goto :goto_1b

    :catchall_16
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/BDStatCore;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_16

    throw v0

    .line 54
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    return-object v0
.end method


# virtual methods
.method public autoTrackLaunchInfo(Landroid/content/Context;Lcom/baidu/mobstat/LaunchInfo;Z)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_b

    .line 174
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mobstat/SessionAnalysis;->autoTrackLaunchInfo(Lcom/baidu/mobstat/LaunchInfo;Z)V

    return-void

    .line 178
    :cond_b
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 181
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/BDStatCore$18;

    invoke-direct {v0, p0, p2, p3}, Lcom/baidu/mobstat/BDStatCore$18;-><init>(Lcom/baidu/mobstat/BDStatCore;Lcom/baidu/mobstat/LaunchInfo;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public autoTrackSessionEndTime(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 214
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/BDStatCore$20;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/baidu/mobstat/BDStatCore$20;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 196
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/BDStatCore$19;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/baidu/mobstat/BDStatCore$19;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelSendLogCheck()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 272
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public doSendLogCheck(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v0

    .line 232
    new-instance v1, Lcom/baidu/mobstat/BDStatCore$21;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/BDStatCore$21;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    .line 251
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doSendNewSessionLog(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSessionSize()I
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionSize()I

    move-result v0

    return v0
.end method

.method public getSessionStartTime()J
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 95
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->a(Landroid/content/Context;)V

    .line 97
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    if-eqz v0, :cond_8

    return-void

    .line 101
    :cond_8
    invoke-static {p1}, Lcom/baidu/mobstat/ActivityLifeTask;->registerActivityLifeCallback(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/BDStatCore$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/BDStatCore$1;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 966
    iget-object p2, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {p2}, Lcom/baidu/mobstat/SessionAnalysis;->isSessionStart()Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 970
    :cond_9
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 974
    iget-object p2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/mobstat/BDStatCore$16;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/BDStatCore$16;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 765
    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 777
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 779
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 781
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v13, Lcom/baidu/mobstat/BDStatCore$10;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-wide/from16 v4, p5

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p12

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object v15, v13

    move-object/from16 v13, p11

    move-object/from16 v16, v14

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/baidu/mobstat/BDStatCore$10;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 693
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 702
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 706
    move-object v12, p0

    iget-object v13, v12, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v14, Lcom/baidu/mobstat/BDStatCore$8;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move/from16 v6, p7

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/baidu/mobstat/BDStatCore$8;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;ILjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 24

    if-nez p1, :cond_3

    return-void

    .line 732
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 734
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 738
    move-object v12, p0

    iget-object v13, v12, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v14, Lcom/baidu/mobstat/BDStatCore$9;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/baidu/mobstat/BDStatCore$9;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 870
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    return-void
.end method

.method public onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 881
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 885
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 887
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 891
    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v15, Lcom/baidu/mobstat/BDStatCore$14;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move/from16 v6, p8

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mobstat/BDStatCore$14;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;JLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 835
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method

.method public onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 844
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 848
    move-object v10, p0

    iget-object v11, v10, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v12, Lcom/baidu/mobstat/BDStatCore$13;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object v6, p1

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/BDStatCore$13;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Landroid/content/Context;JZ)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    .line 808
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 810
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 814
    iget-object v8, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v9, Lcom/baidu/mobstat/BDStatCore$11;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/BDStatCore$11;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 5

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V

    return-void
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V
    .registers 16

    if-nez p1, :cond_3

    return-void

    .line 316
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 320
    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 322
    invoke-direct {p0}, Lcom/baidu/mobstat/BDStatCore;->b()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 325
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v10, Lcom/baidu/mobstat/BDStatCore$23;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mobstat/BDStatCore$23;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 286
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 290
    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 294
    invoke-direct {p0}, Lcom/baidu/mobstat/BDStatCore;->a()I

    move-result v5

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 297
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v8, Lcom/baidu/mobstat/BDStatCore$22;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/BDStatCore$22;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 476
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_a

    return-void

    .line 481
    :cond_a
    invoke-virtual {p0, v4}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 483
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 485
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v6, Lcom/baidu/mobstat/BDStatCore$5;

    move-object v0, v6

    move-object v1, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/BDStatCore$5;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause(Landroid/app/Fragment;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 569
    :cond_3
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_a

    return-void

    .line 574
    :cond_a
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_11

    return-void

    .line 579
    :cond_11
    invoke-virtual {p0, v5}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 581
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 583
    iget-object v6, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/mobstat/BDStatCore$7;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/BDStatCore$7;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/app/Fragment;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause(Landroid/support/v4/app/Fragment;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 521
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_a

    return-void

    .line 526
    :cond_a
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_11

    return-void

    .line 531
    :cond_11
    invoke-virtual {p0, v5}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 533
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 536
    iget-object v6, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/mobstat/BDStatCore$6;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/BDStatCore$6;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/support/v4/app/Fragment;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume(Landroid/app/Activity;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 340
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 345
    :cond_a
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 347
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 349
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/BDStatCore$2;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/baidu/mobstat/BDStatCore$2;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume(Landroid/app/Fragment;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 432
    :cond_3
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 437
    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 442
    :cond_11
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 444
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 446
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 448
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/BDStatCore$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/baidu/mobstat/BDStatCore$4;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume(Landroid/support/v4/app/Fragment;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 386
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 391
    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 396
    :cond_11
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 398
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 400
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 403
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/BDStatCore$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/baidu/mobstat/BDStatCore$3;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionStart(Landroid/content/Context;Z)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 152
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 158
    iget-object v6, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/mobstat/BDStatCore$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/BDStatCore$12;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JZ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStat(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 949
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->isSessionStart()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 953
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/BDStatCore$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/BDStatCore$15;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAutoSendLog(Landroid/content/Context;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 123
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 127
    iget-object p1, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/SessionAnalysis;->setAutoSend(Z)V

    return-void
.end method

.method public setSessionTimeOut(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->setSessionTimeOut(I)V

    return-void
.end method
