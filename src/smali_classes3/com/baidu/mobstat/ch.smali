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
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Landroid/os/HandlerThread;

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
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Lcom/baidu/mobstat/ch$a;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/ch$a;-><init>(Lcom/baidu/mobstat/ch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ch;
    .registers 1

    .line 113
    sget-object v0, Lcom/baidu/mobstat/ch;->B:Lcom/baidu/mobstat/ch;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    new-instance v1, Landroid/util/Pair;

    const-string v2, "appKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v1, Landroid/util/Pair;

    const-string v2, "appVersion"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v1, Landroid/util/Pair;

    const-string v2, "appName"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v1, Landroid/util/Pair;

    const-string v2, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sdkVersion"

    invoke-static {}, Lcom/baidu/mobstat/StatService;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v1, Landroid/util/Pair;

    const-string v2, "deviceName"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v1, Landroid/util/Pair;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v1, Landroid/util/Pair;

    const-string v2, "model"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    .line 775
    new-instance v1, Landroid/util/Pair;

    const-string v2, "cuid"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance v1, Landroid/util/Pair;

    const-string v2, "auto"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    new-instance v1, Landroid/util/Pair;

    const-string v2, "token"

    iget-object v3, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 786
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    goto :goto_0

    .line 792
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 799
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wss://mtjsocket.baidu.com/app?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    .line 801
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 895
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 896
    if-nez p1, :cond_0

    .line 908
    :goto_0
    return-object v0

    .line 902
    :cond_0
    :try_start_0
    const-string v1, "type"

    const-string v2, "upload"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 903
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1018
    if-nez p1, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-object v4

    .line 1022
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    :try_start_0
    const-string v0, "meta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1029
    const-string v1, "matchAll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1031
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1032
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move v7, v6

    .line 1033
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v7, v2, :cond_3

    .line 1034
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1036
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1038
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1039
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1033
    :cond_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 1044
    :cond_3
    if-eqz v8, :cond_4

    move v1, v5

    .line 1050
    :goto_2
    if-eqz v1, :cond_5

    .line 1051
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :try_start_1
    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1053
    const-string v0, "data"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_3
    move-object v4, v0

    .line 1059
    goto :goto_0

    .line 1046
    :cond_4
    if-nez v8, :cond_6

    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    .line 1047
    goto :goto_2

    .line 1055
    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v4

    goto :goto_3

    :cond_6
    move v1, v6

    goto :goto_2
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
    .registers 6

    const/4 v2, 0x1

    .line 837
    instance-of v0, p1, Lcom/baidu/mobstat/IIgnoreAutoTrace;

    if-eqz v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    if-eqz p2, :cond_2

    .line 847
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 849
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V

    goto :goto_0
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 4

    .line 812
    if-nez p3, :cond_0

    .line 817
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobstat/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
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

    if-nez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
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
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private b(Z)V
    .registers 4

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    .line 624
    invoke-static {}, Lcom/baidu/mobstat/ci;->b()V

    .line 630
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 633
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 634
    return-void
.end method

.method private c(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 10

    .line 820
    if-nez p3, :cond_0

    .line 826
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ch;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 825
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/dg;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->s()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 10

    .line 981
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 986
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 989
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 991
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 992
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 994
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 995
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 997
    const-string v3, "webLayout"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 998
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1000
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1001
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 994
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 1003
    :cond_1
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1012
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->y:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private d(Landroid/app/Activity;)V
    .registers 7

    const/4 v4, 0x0

    .line 319
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 328
    const-string v1, "Baidu_mtj_push_call"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 329
    const-string v2, "Baidu_mtj_push_msg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-boolean v2, p0, Lcom/baidu/mobstat/ch;->E:Z

    if-eqz v2, :cond_4

    .line 338
    new-instance v2, Lcom/baidu/mobstat/LaunchInfo;

    invoke-direct {v2}, Lcom/baidu/mobstat/LaunchInfo;-><init>()V

    .line 340
    if-eqz v1, :cond_2

    .line 341
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v2, v1, v0}, Lcom/baidu/mobstat/LaunchInfo;->setPushInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_2
    invoke-static {p1}, Lcom/baidu/mobstat/de;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/LaunchInfo;->setRefererPkgName(Ljava/lang/String;)V

    .line 350
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/BDStatCore;->autoTrackLaunchInfo(Landroid/content/Context;Lcom/baidu/mobstat/LaunchInfo;Z)V

    .line 367
    :goto_1
    iput-boolean v4, p0, Lcom/baidu/mobstat/ch;->E:Z

    goto :goto_0

    .line 352
    :cond_4
    new-instance v2, Lcom/baidu/mobstat/LaunchInfo;

    invoke-direct {v2}, Lcom/baidu/mobstat/LaunchInfo;-><init>()V

    .line 354
    if-eqz v1, :cond_5

    .line 355
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v2, v1, v0}, Lcom/baidu/mobstat/LaunchInfo;->setPushInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_5
    invoke-static {p1}, Lcom/baidu/mobstat/de;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 361
    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/LaunchInfo;->setRefererPkgName(Ljava/lang/String;)V

    .line 364
    :cond_6
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v4}, Lcom/baidu/mobstat/BDStatCore;->autoTrackLaunchInfo(Landroid/content/Context;Lcom/baidu/mobstat/LaunchInfo;Z)V

    goto :goto_1
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

    if-eqz v0, :cond_0

    .line 495
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "installConnectionTracker"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 498
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/cf;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->D:Lcom/baidu/mobstat/cf$a;

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/cf;-><init>(Lcom/baidu/mobstat/cf$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    .line 499
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->a(Landroid/app/Activity;)V

    .line 500
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

    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "uninstallConnectionTracker"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0}, Lcom/baidu/mobstat/cf;->b()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cf;

    .line 515
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/baidu/mobstat/ch;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->k()V

    return-void
.end method

.method static synthetic g(Lcom/baidu/mobstat/ch;)Landroid/os/Handler;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .registers 2

    .line 522
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->b()V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->c()V

    goto :goto_0
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

    .line 560
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

    if-eqz v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 573
    :cond_0
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

    if-nez v0, :cond_1

    .line 577
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: network invalid, failed to connect to circle server"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
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

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    :cond_0
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

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    if-eqz v0, :cond_0

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

    .line 615
    :cond_0
    return-void
.end method

.method private l()V
    .registers 5

    const/4 v3, 0x1

    .line 638
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->k:Z

    if-eqz v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 643
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 644
    iput-boolean v3, p0, Lcom/baidu/mobstat/ch;->k:Z

    .line 646
    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method private m()V
    .registers 4

    const/4 v2, 0x1

    .line 658
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->l:Z

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 668
    invoke-static {v0, v1, v2, v2}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 669
    iput-boolean v2, p0, Lcom/baidu/mobstat/ch;->l:Z

    .line 671
    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private n()V
    .registers 5

    const/4 v3, 0x1

    .line 678
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->m:Z

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 688
    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 689
    iput-boolean v3, p0, Lcom/baidu/mobstat/ch;->m:Z

    .line 691
    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
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

    if-eqz v0, :cond_0

    .line 720
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: connect established, no need to duplicate connect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    const-string v0, "url:"

    .line 728
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 736
    :cond_2
    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/ce;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/ch$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/mobstat/ch$b;-><init>(Lcom/baidu/mobstat/ch;Lcom/baidu/mobstat/ch$1;)V

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ce;-><init>(Ljava/net/URI;Lcom/baidu/mobstat/ce$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()Z
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 748
    :goto_0
    return v0

    .line 747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .registers 2

    .line 805
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r()Ljava/lang/String;
    .registers 3

    .line 829
    const/4 v0, 0x0

    .line 830
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 833
    :cond_0
    return-object v0
.end method

.method private s()V
    .registers 5

    .line 867
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->j:Z

    if-nez v0, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/ci;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ci;->a(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 872
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ch;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_3

    .line 874
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSendSnapshot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 879
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ce;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private t()V
    .registers 5

    .line 914
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->m:Z

    if-eqz v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 920
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dl;->p(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ch;->u:J

    .line 923
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/mobstat/ch;->u:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private u()V
    .registers 7

    .line 938
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->l:Z

    if-eqz v0, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->n:Z

    if-nez v0, :cond_2

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
    :cond_2
    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

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
    :cond_3
    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->t:J

    .line 961
    iget-boolean v2, p0, Lcom/baidu/mobstat/ch;->n:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 962
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mobstat/ch;->s:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 965
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private v()V
    .registers 2

    .line 971
    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->o:Z

    if-nez v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->h()V

    .line 976
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->o:Z

    .line 978
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 1063
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ch;->a(ILjava/lang/String;)V

    .line 1064
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    .line 1067
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->G:Ljava/lang/Object;

    monitor-enter v1

    .line 1068
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1069
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :goto_0
    return-void

    .line 1072
    :cond_0
    if-nez p2, :cond_1

    .line 1073
    const-string p2, ""

    .line 1076
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1077
    iget-object v4, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v4

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1082
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->F:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mobstat/cb;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1084
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 311
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .registers 7

    const/4 v3, 0x1

    .line 429
    instance-of v0, p1, Lcom/baidu/mobstat/IIgnoreAutoEvent;

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    if-eqz p2, :cond_1

    .line 434
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->A:Lcom/baidu/mobstat/da;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->z:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/baidu/mobstat/ch;->w:Z

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->A:Lcom/baidu/mobstat/da;

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 6

    .line 472
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/ch;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    .line 479
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->q:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/ch;->c(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    .line 484
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcom/baidu/mobstat/ch;->w:Z

    .line 267
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 9

    .line 270
    const/4 v0, 0x0

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    :try_start_0
    const-string v3, "token"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string v4, "time"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    const-string v4, "mtj"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "mtj"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 287
    const-string v4, "mtj"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/baidu/mobstat/ch;->v:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    iput-object v3, p0, Lcom/baidu/mobstat/ch;->x:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/dl;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 297
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/dl;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 280
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/mobstat/cd;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .registers 4

    const/4 v1, 0x1

    .line 375
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    .line 382
    if-eqz p1, :cond_1

    .line 384
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;->i()V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->c()V

    .line 398
    :cond_2
    iput-object p1, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    .line 400
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->d(Landroid/app/Activity;)V

    .line 407
    :cond_3
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->v()V

    .line 409
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->t()V

    .line 413
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->u()V

    .line 416
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/ch;->b(Landroid/app/Activity;Z)V

    .line 419
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->e(Landroid/app/Activity;)V

    .line 421
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->g()V

    .line 423
    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public c()V
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;)V
    .registers 4

    const/4 v1, 0x0

    .line 445
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->d:Landroid/app/Activity;

    .line 453
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/ch;->b(Landroid/app/Activity;Z)V

    .line 456
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->f()V

    .line 459
    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public d()V
    .registers 2

    .line 857
    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/ce;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ce;->a()V

    .line 860
    :cond_0
    return-void
.end method

.method public e()Lorg/json/JSONArray;
    .registers 7

    const/4 v1, 0x0

    .line 1088
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->G:Ljava/lang/Object;

    monitor-enter v2

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1090
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    monitor-exit v2

    .line 1110
    :goto_0
    return-object v0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ch;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mobstat/cb;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1094
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :goto_1
    if-nez v0, :cond_1

    .line 1104
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1107
    :cond_1
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
    monitor-exit v2

    goto :goto_0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1099
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
