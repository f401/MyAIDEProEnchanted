.class public Lcom/baidu/mobstat/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ch$a;,
        Lcom/baidu/mobstat/ch$b;,
        Lcom/baidu/mobstat/ch$c;
    }
.end annotation


# static fields
.field private static final B:Lcom/baidu/mobstat/ch;


# instance fields
.field private A:Lcom/baidu/mobstat/da;

.field private C:Landroid/os/Handler;

.field private D:Lcom/baidu/mobstat/cf$a;

.field private E:Z

.field private F:Lorg/json/JSONArray;

.field private G:Ljava/lang/Object;

.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/mobstat/cf;

.field private c:Lcom/baidu/mobstat/ce;

.field private d:Landroid/app/Activity;

.field private e:Lcom/baidu/mobstat/ci;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Ljava/lang/String;

.field private volatile q:Ljava/lang/String;

.field private volatile r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Lorg/json/JSONObject;

.field private z:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ch;->B:Lcom/baidu/mobstat/ch;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    .line 108
    invoke-static {}, Lcom/baidu/mobstat/da;->a()Lcom/baidu/mobstat/da;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->A:Lcom/baidu/mobstat/da;

    .line 129
    new-instance v0, Lcom/baidu/mobstat/ch$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/ch$1;-><init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/baidu/mobstat/ch$2;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/ch$2;-><init>(Lcom/baidu/mobstat/ch;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->D:Lcom/baidu/mobstat/cf$a;

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->E:Z

    .line 1114
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    .line 1115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->G:Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/baidu/mobstat/ci;

    invoke-direct {v0}, Lcom/baidu/mobstat/ci;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/ci;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "crawlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->i:Landroid/os/HandlerThread;

    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v0, Lcom/baidu/mobstat/ch$c;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/ch$c;-><init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "downloadThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->g:Landroid/os/HandlerThread;

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Lcom/baidu/mobstat/ch$a;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/ch$a;-><init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ch;
    .registers 1

    .line 113
    sget-object v0, Lcom/baidu/mobstat/ch;->B:Lcom/baidu/mobstat/ch;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 756
    const-string v0, "UTF-8"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "appKey"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v2, Landroid/util/Pair;

    const-string v4, "appVersion"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v2, Landroid/util/Pair;

    const-string v4, "appName"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v2, Landroid/util/Pair;

    const-string v4, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v2, Landroid/util/Pair;

    const-string v4, "sdkVersion"

    invoke-static {}, Lcom/baidu/mobstat/StatService;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v2, Landroid/util/Pair;

    const-string v4, "deviceName"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v2, Landroid/util/Pair;

    const-string v4, "platform"

    const-string v5, "Android"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "model"

    invoke-direct {v2, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    .line 775
    new-instance p1, Landroid/util/Pair;

    const-string v2, "cuid"

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance p1, Landroid/util/Pair;

    const-string v2, "auto"

    const-string v3, "1"

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object p1, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b7

    .line 780
    new-instance p1, Landroid/util/Pair;

    const-string v2, "token"

    iget-object v3, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_b7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 786
    :try_start_cc
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ec} :catch_121

    const-string v5, "="

    if-eqz v4, :cond_106

    .line 790
    :try_start_f0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 792
    :cond_106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_120} :catch_121

    goto :goto_c0

    :catch_121
    move-exception v2

    goto :goto_c0

    .line 799
    :cond_123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wss://mtjsocket.baidu.com/app?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 895
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 902
    :cond_8
    :try_start_8
    const-string v1, "type"

    const-string v2, "upload"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 903
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception p1

    :goto_16
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 12

    .line 1018
    const-string v0, "data"

    const-string v1, "meta"

    const/4 v2, 0x0

    if-nez p1, :cond_8

    return-object v2

    .line 1022
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-object v2

    .line 1028
    :cond_f
    :try_start_f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1029
    const-string v4, "matchAll"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1031
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    .line 1032
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    .line 1033
    :goto_27
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_47

    .line 1034
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 1036
    const-string v8, "page"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1038
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1039
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_47
    if-eqz v4, :cond_4a

    goto :goto_52

    :cond_4a
    if-nez v4, :cond_62

    .line 1046
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_62

    .line 1051
    :goto_52
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_57} :catch_61

    .line 1052
    :try_start_57
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1053
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception p2

    :goto_5f
    move-object v2, p1

    goto :goto_62

    :catch_61
    move-exception p1

    :cond_62
    :goto_62
    return-object v2
.end method

.method static synthetic a(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->h()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ch;Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ch;Z)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->b(Z)V

    return-void
.end method

.method private b(Landroid/app/Activity;Z)V
    .registers 5

    .line 837
    instance-of v0, p1, Lcom/baidu/mobstat/IIgnoreAutoTrace;

    if-eqz v0, :cond_5

    return-void

    .line 841
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    .line 847
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V

    goto :goto_23

    .line 849
    :cond_1b
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V

    :goto_23
    return-void
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    .line 816
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobstat/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->o()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    .line 698
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 702
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 706
    :cond_c
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;J)V

    .line 707
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 709
    iget-object p1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 710
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b(Z)V
    .registers 3

    .line 623
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/mobstat/ch;->j:Z

    .line 624
    invoke-static {}, Lcom/baidu/mobstat/ci;->b()V

    .line 630
    iget-object p1, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object p1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 633
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private c(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 12

    if-nez p3, :cond_3

    return-void

    .line 824
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ch;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 825
    iget-object v3, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    const/4 v7, 0x1

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/mobstat/dg;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->s()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 11

    .line 981
    const-string v0, "data"

    const-string v1, "meta"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 986
    :cond_b
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 989
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 991
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 992
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 994
    :goto_27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_59

    .line 995
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 997
    const-string v7, "webLayout"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 998
    const-string v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1000
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1001
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_56

    .line 1003
    :cond_53
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 1007
    :cond_59
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    iget-object p1, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6d} :catch_6e

    goto :goto_6f

    :catch_6e
    move-exception p1

    :goto_6f
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 323
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 328
    :cond_a
    const-string v1, "Baidu_mtj_push_call"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 329
    const-string v3, "Baidu_mtj_push_msg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-boolean v3, p0, Lcom/baidu/mobstat/ch;->E:Z

    if-eqz v3, :cond_41

    .line 338
    new-instance v3, Lcom/baidu/mobstat/LaunchInfo;

    invoke-direct {v3}, Lcom/baidu/mobstat/LaunchInfo;-><init>()V

    if-eqz v1, :cond_29

    .line 341
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v3, v1, v0}, Lcom/baidu/mobstat/LaunchInfo;->setPushInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_29
    invoke-static {p1}, Lcom/baidu/mobstat/de;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 347
    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/LaunchInfo;->setRefererPkgName(Ljava/lang/String;)V

    .line 350
    :cond_36
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v3, v1}, Lcom/baidu/mobstat/BDStatCore;->autoTrackLaunchInfo(Landroid/content/Context;Lcom/baidu/mobstat/LaunchInfo;Z)V

    goto :goto_65

    .line 352
    :cond_41
    new-instance v3, Lcom/baidu/mobstat/LaunchInfo;

    invoke-direct {v3}, Lcom/baidu/mobstat/LaunchInfo;-><init>()V

    if-eqz v1, :cond_4f

    .line 355
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v3, v1, v0}, Lcom/baidu/mobstat/LaunchInfo;->setPushInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_4f
    invoke-static {p1}, Lcom/baidu/mobstat/de;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 361
    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/LaunchInfo;->setRefererPkgName(Ljava/lang/String;)V

    .line 364
    :cond_5c
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v2}, Lcom/baidu/mobstat/BDStatCore;->autoTrackLaunchInfo(Landroid/content/Context;Lcom/baidu/mobstat/LaunchInfo;Z)V

    .line 367
    :goto_65
    iput-boolean v2, p0, Lcom/baidu/mobstat/ch;->E:Z

    return-void
.end method

.method static synthetic d(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->i()V

    return-void
.end method

.method private e(Landroid/app/Activity;)V
    .registers 4

    .line 494
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 495
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "installConnectionTracker"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 498
    :cond_13
    new-instance v0, Lcom/baidu/mobstat/cf;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->D:Lcom/baidu/mobstat/cf$a;

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/cf;-><init>(Lcom/baidu/mobstat/cf$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    .line 499
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->j()V

    return-void
.end method

.method private f()V
    .registers 3

    .line 507
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 508
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "uninstallConnectionTracker"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 511
    :cond_13
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    if-eqz v0, :cond_1d

    .line 512
    invoke-virtual {v0}, Lcom/baidu/mobstat/cf;->b()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    :cond_1d
    return-void
.end method

.method static synthetic f(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->k()V

    return-void
.end method

.method static synthetic g(Lcom/baidu/mobstat/ch;)Landroid/os/Handler;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .registers 2

    .line 522
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    if-eqz v0, :cond_e

    .line 523
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->b()V

    goto :goto_11

    .line 525
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->c()V

    :goto_11
    return-void
.end method

.method private h()V
    .registers 3

    .line 554
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->r:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ch;->c(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/cq;->b(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/cm;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->l()V

    return-void
.end method

.method private i()V
    .registers 3

    .line 568
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 573
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: gesture success"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ch;->a(I)V

    .line 576
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 577
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: network invalid, failed to connect to circle server"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_26
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic i(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->m()V

    return-void
.end method

.method private j()V
    .registers 3

    .line 592
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->k:Z

    if-nez v0, :cond_11

    .line 593
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method

.method static synthetic j(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->n()V

    return-void
.end method

.method private k()V
    .registers 3

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    .line 607
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    if-eqz v0, :cond_26

    .line 608
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return-void
.end method

.method private l()V
    .registers 5

    .line 638
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->k:Z

    if-eqz v0, :cond_5

    return-void

    .line 642
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 643
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 644
    iput-boolean v3, p0, Lcom/baidu/mobstat/ch;->k:Z

    if-eqz v0, :cond_1d

    .line 647
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    :cond_1d
    return-void
.end method

.method private m()V
    .registers 4

    .line 658
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->l:Z

    if-eqz v0, :cond_5

    return-void

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 667
    :cond_e
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 668
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 669
    iput-boolean v2, p0, Lcom/baidu/mobstat/ch;->l:Z

    if-eqz v0, :cond_25

    .line 672
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    :cond_25
    return-void
.end method

.method private n()V
    .registers 5

    .line 678
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->m:Z

    if-eqz v0, :cond_5

    return-void

    .line 683
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 687
    :cond_e
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 688
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 689
    iput-boolean v3, p0, Lcom/baidu/mobstat/ch;->m:Z

    if-eqz v0, :cond_29

    .line 692
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_29
    return-void
.end method

.method private o()V
    .registers 5

    .line 715
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: start to connect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ch;->a(I)V

    .line 719
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 720
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: connect established, no need to duplicate connect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void

    .line 724
    :cond_1d
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 728
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "url:"

    if-nez v1, :cond_41

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    :cond_41
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 736
    :cond_48
    :try_start_48
    new-instance v1, Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v2, Lcom/baidu/mobstat/ch$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/mobstat/ch$b;-><init>(Lcom/baidu/mobstat/ch;Lcom/baidu/mobstat/ch$1;)V

    invoke-direct {v1, v0, v2}, Lcom/baidu/mobstat/ce;-><init>(Ljava/net/URI;Lcom/baidu/mobstat/ce$a;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v0

    :goto_5b
    return-void
.end method

.method private p()Z
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private q()Z
    .registers 2

    .line 805
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private r()Ljava/lang/String;
    .registers 2

    .line 830
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 831
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method private s()V
    .registers 5

    .line 867
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    if-nez v0, :cond_b

    goto :goto_51

    .line 871
    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/ci;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ci;->a(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 872
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ch;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 874
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 875
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doSendSnapshot:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 879
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ce;->a(Lorg/json/JSONObject;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_43

    .line 887
    :catch_42
    move-exception v0

    .line 886
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_51
    :goto_51
    return-void
.end method

.method private t()V
    .registers 6

    .line 914
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->m:Z

    if-eqz v0, :cond_5

    return-void

    .line 919
    :cond_5
    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 920
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dl;->p(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ch;->u:J

    .line 923
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/mobstat/ch;->u:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    .line 925
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_34
    return-void
.end method

.method private u()V
    .registers 7

    .line 938
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->l:Z

    if-eqz v0, :cond_5

    return-void

    .line 943
    :cond_5
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->n:Z

    if-nez v0, :cond_16

    .line 944
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->n:Z

    .line 949
    :cond_16
    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_36

    .line 950
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dl;->n(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ch;->s:J

    .line 951
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dl;->o(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ch;->t:J

    .line 958
    :cond_36
    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->t:J

    .line 961
    iget-boolean v2, p0, Lcom/baidu/mobstat/ch;->n:Z

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 962
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mobstat/ch;->s:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_5c

    .line 964
    :cond_4f
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 965
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5c
    return-void
.end method

.method private v()V
    .registers 2

    .line 971
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->o:Z

    if-nez v0, :cond_12

    .line 972
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 973
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->h()V

    .line 976
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->o:Z

    :cond_12
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 1063
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ch;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 8

    .line 1067
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->G:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_3
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 1069
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_5c

    return-void

    :cond_9
    if-nez p2, :cond_d

    .line 1073
    const-string p2, ""

    .line 1076
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1077
    iget-object v3, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v3

    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1080
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1082
    iget-object p1, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1083
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, v1, p1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1084
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .registers 6

    .line 429
    instance-of v0, p1, Lcom/baidu/mobstat/IIgnoreAutoEvent;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eqz p2, :cond_12

    .line 434
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->A:Lcom/baidu/mobstat/da;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/baidu/mobstat/ch;->w:Z

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V

    goto :goto_17

    .line 436
    :cond_12
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->A:Lcom/baidu/mobstat/da;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Z)V

    :goto_17
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 5

    .line 472
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 473
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    .line 476
    :cond_12
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/ch;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    .line 479
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 480
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    .line 483
    :cond_29
    iget-object p2, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/ch;->c(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcom/baidu/mobstat/ch;->w:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 7

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_68

    .line 273
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 278
    :try_start_10
    const-string v1, "token"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v2, "time"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_67

    .line 285
    nop

    .line 286
    const-string v2, "mtj"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_68

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 292
    iput-object v1, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 297
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->k(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_69

    :catch_67
    move-exception p1

    :cond_68
    const/4 p1, 0x0

    :goto_69
    return p1
.end method

.method public b()V
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 538
    :cond_5
    invoke-static {v0}, Lcom/baidu/mobstat/cd;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    .line 375
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->q()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 379
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    if-eqz p1, :cond_22

    .line 384
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 388
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;->i()V

    .line 394
    :cond_22
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-eqz v0, :cond_29

    .line 395
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->c()V

    .line 398
    :cond_29
    iput-object p1, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    .line 400
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 402
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->d(Landroid/app/Activity;)V

    .line 407
    :cond_38
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->v()V

    .line 409
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->t()V

    .line 413
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->u()V

    .line 416
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/ch;->b(Landroid/app/Activity;Z)V

    .line 419
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->e(Landroid/app/Activity;)V

    .line 421
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->g()V

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 550
    :cond_5
    invoke-static {v0}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .registers 3

    .line 445
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->q()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 450
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    .line 453
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/ch;->b(Landroid/app/Activity;Z)V

    .line 456
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->f()V

    .line 459
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 857
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 858
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce;->a()V

    :cond_b
    return-void
.end method

.method public e()Lorg/json/JSONArray;
    .registers 7

    .line 1088
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->G:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    if-nez v1, :cond_e

    .line 1090
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1093
    :cond_e
    sget-object v2, Lcom/baidu/mobstat/cb;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_40

    .line 1096
    :try_start_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1097
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20
    .catchall {:try_start_14 .. :try_end_1f} :catchall_40

    goto :goto_22

    :catch_20
    move-exception v1

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-nez v2, :cond_29

    .line 1104
    :try_start_24
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1107
    :cond_29
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    .line 1108
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mobstat/cb;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1110
    monitor-exit v0

    return-object v2

    :catchall_40
    move-exception v1

    .line 1111
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_40

    throw v1
.end method
