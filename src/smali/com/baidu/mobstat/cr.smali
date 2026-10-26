.class public Lcom/baidu/mobstat/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cr$a;
    }
.end annotation


# static fields
.field private static b:Lcom/baidu/mobstat/cr;

.field private static l:Ljava/lang/String;


# instance fields
.field public a:Lcom/baidu/mobstat/cr$a;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private volatile e:I

.field private f:I

.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONArray;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;

.field private k:Lorg/json/JSONArray;

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/baidu/mobstat/cr;

    invoke-direct {v0}, Lcom/baidu/mobstat/cr;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cr;->b:Lcom/baidu/mobstat/cr;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "fullTraceHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->c:Landroid/os/HandlerThread;

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    .line 60
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    .line 64
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->n:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->o:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->p:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/cr;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 905
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 911
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 910
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 911
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/baidu/mobstat/cr;
    .locals 1

    .line 41
    sget-object v0, Lcom/baidu/mobstat/cr;->b:Lcom/baidu/mobstat/cr;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;)Lorg/json/JSONArray;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-static/range {p11 .. p11}, Lcom/baidu/mobstat/de;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    .line 243
    invoke-static/range {p13 .. p13}, Lcom/baidu/mobstat/de;->d(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v25

    .line 245
    invoke-static/range {p10 .. p10}, Lcom/baidu/mobstat/de;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 246
    invoke-static/range {p12 .. p12}, Lcom/baidu/mobstat/de;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 248
    sget-object v2, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v2}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    move-result v20

    .line 254
    const-wide/16 v12, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v19, p14

    move-object/from16 v23, p15

    move/from16 v26, p16

    move-object/from16 v27, p17

    move-object/from16 v28, p18

    move-object/from16 v29, p19

    invoke-static/range {v3 .. v29}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putFeedList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 952
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 954
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 955
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/mobstat/cr;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 959
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 962
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p2, :cond_0

    .line 305
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 289
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/mobstat/cr;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 296
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 301
    :cond_3
    :try_start_0
    const-string v0, "np"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-static {v0, p2}, Lcom/baidu/mobstat/EventAnalysis;->doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p19}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 4294967295
    :cond_1
    const/4 v0, 0x0

    .line 971
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 972
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 809
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 816
    :goto_0
    if-eqz v1, :cond_0

    .line 817
    :try_start_1
    const-string v2, "p"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 824
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 825
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    .line 829
    :try_start_2
    const-string v2, "p"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 835
    :cond_1
    :goto_2
    return-void

    .line 809
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 835
    :cond_2
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 817
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-ne p1, p2, :cond_1

    .line 1257
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 16

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 0
    :cond_0
    const/4 v1, 0x0

    .line 1141
    :goto_0
    return v1

    .line 1097
    :cond_1
    const-string v1, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v2, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    const-string v2, "p"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1100
    const-string v3, "path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    const-string v4, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1102
    const-string v5, "index"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1103
    const-string v6, "n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1104
    const-string v7, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1105
    const-string v8, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1106
    const-string v8, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 1107
    const-string v8, "ps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    const-string v8, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1110
    const-string v9, "d"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    const-string v9, "p"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1112
    const-string v10, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1113
    const-string v11, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1114
    const-string v12, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1115
    const-string v13, "n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1116
    const-string v14, "user"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 1117
    const-string v15, "c"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1118
    const-string v15, "t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 1119
    const-string v15, "ps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1125
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1129
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1133
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1137
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1141
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    if-eq v7, v14, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-object p1

    .line 844
    :cond_1
    const-string v0, "s"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 849
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 850
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 853
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 855
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 857
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "p"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_2

    .line 863
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_3
    move-object p1, v2

    .line 895
    goto :goto_0

    .line 868
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5

    .line 876
    :try_start_3
    const-string v3, "p"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 884
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 885
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_4

    .line 888
    :try_start_5
    const-string v1, "p"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 868
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 895
    :catch_1
    move-exception v0

    :cond_5
    move-object v3, v1

    .line 876
    goto :goto_5

    .line 888
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_6

    .line 857
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    .line 759
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONArray;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 768
    invoke-virtual {p2}, Lcom/baidu/mobstat/cj;->a()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v3

    sget v4, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v3, v2, v4}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-virtual {p2}, Lcom/baidu/mobstat/cj;->b()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v4, v3, v5}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/baidu/mobstat/cj;->a(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 778
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 780
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putFeedListItem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 1020
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1022
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/mobstat/cr;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 1027
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 1035
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .line 588
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 591
    :try_start_0
    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 592
    const-string v0, "sq"

    iget v1, p0, Lcom/baidu/mobstat/cr;->f:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 593
    const-string v0, "ss"

    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 594
    const-string v0, "at"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string v0, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string v0, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/DataCore;->getHeadSessionPy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string v0, "plt"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPlatformType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v3, v2

    .line 1059
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1060
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1061
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1082
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1066
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1067
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1068
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 1073
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-direct {p0, v0, v4}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_4
    if-nez v0, :cond_7

    .line 1080
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1082
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1073
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 1082
    :cond_7
    invoke-direct {p0, v0, v4}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 18

    .line 1154
    const-string v2, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    const-string v3, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1156
    const-string v3, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1157
    const-string v3, "ps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1159
    const-string v3, "d"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    const-string v4, "c"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 1161
    const-string v4, "t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1162
    const-string v4, "ps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    cmp-long v17, v10, v12

    if-gtz v17, :cond_1

    move-wide v8, v10

    .line 1168
    :goto_0
    if-gtz v17, :cond_2

    .line 1169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1175
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    if-gtz v17, :cond_5

    sub-long v10, v12, v10

    .line 1178
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    const-string v4, "\\|"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1181
    array-length v4, v13

    if-eqz v4, :cond_3

    .line 1182
    array-length v0, v13

    move/from16 v16, v0

    move v4, v5

    :goto_2
    move/from16 v0, v16

    if-ge v4, v0, :cond_4

    aget-object v2, v13, v4

    .line 1183
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1184
    const-string v3, "|"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1193
    :goto_3
    add-long/2addr v2, v10

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_1
    move-wide v8, v12

    .line 1162
    goto :goto_0

    .line 1171
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    .line 1189
    :catch_0
    move-exception v2

    const-wide/16 v2, 0x0

    goto :goto_3

    .line 1179
    :cond_3
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v2

    .line 1203
    :goto_4
    add-long/2addr v2, v10

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1206
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1242
    :goto_5
    :try_start_2
    const-string v3, "c"

    add-int v4, v7, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1243
    const-string v3, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1244
    const-string v3, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1245
    const-string v3, "ps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    return-void

    .line 1206
    :cond_5
    sub-long/2addr v10, v12

    .line 1210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    const-string v12, "\\|"

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1213
    array-length v13, v12

    if-eqz v13, :cond_7

    .line 1214
    array-length v13, v12

    :goto_7
    if-ge v4, v13, :cond_8

    aget-object v2, v12, v4

    .line 1215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1216
    const-string v3, "|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_6
    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    .line 1225
    :goto_8
    add-long/2addr v2, v10

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    .line 1221
    :catch_1
    move-exception v2

    const-wide/16 v2, 0x0

    goto :goto_8

    .line 1230
    :cond_7
    :try_start_4
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v2

    .line 1235
    :goto_9
    add-long/2addr v2, v10

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1238
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1245
    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v4

    goto :goto_9

    :catch_4
    move-exception v4

    goto/16 :goto_4
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 358
    :goto_0
    iget v2, p0, Lcom/baidu/mobstat/cr;->e:I

    add-int/2addr v0, v2

    const v2, 0x2d000

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 355
    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 684
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mobstat/LogSender;->saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 686
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cr$a;

    if-eqz v0, :cond_0

    .line 688
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cr$a;

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/cr$a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 920
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 925
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ck;

    .line 926
    invoke-virtual {v0}, Lcom/baidu/mobstat/ck;->a()Ljava/lang/String;

    move-result-object v3

    .line 927
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v4, v3, v5}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 930
    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/ck;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 933
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 938
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 939
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p2, :cond_0

    .line 644
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 638
    :try_start_0
    const-string v1, "failed_cnt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    :goto_1
    :try_start_1
    const-string v1, "trace"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .line 623
    iget v0, p0, Lcom/baidu/mobstat/cr;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/cr;->f:I

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 615
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Z)V

    .line 619
    invoke-direct {p0}, Lcom/baidu/mobstat/cr;->d()V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 980
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 985
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cl;

    .line 986
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v4, v3, v5}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v5

    sget v6, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v5, v4, v6}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 994
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v5

    .line 995
    invoke-static {v5}, Lcom/baidu/mobstat/de;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    .line 997
    invoke-virtual {v0, v3, v4, v5}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1000
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1005
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 1006
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p2, :cond_0

    .line 803
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putPage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 793
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/mobstat/cr;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 800
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/cr;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    .line 117
    invoke-direct {p0}, Lcom/baidu/mobstat/cr;->e()V

    .line 120
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/baidu/mobstat/Config;->STAT_FULL_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_1
    if-eqz v0, :cond_0

    .line 142
    :try_start_2
    const-string v2, "ev"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 143
    const-string v3, "pr"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 144
    const-string v4, "ti"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 145
    const-string v5, "sv"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_2
    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    if-eqz v4, :cond_4

    .line 149
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    if-eqz v5, :cond_5

    .line 150
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 151
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    const-string v2, "saveLastCacheToSend content:empty, return"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 171
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveLastCacheToSend content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 176
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :goto_3
    invoke-virtual {p0, p1, v6}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Z)V

    .line 184
    iput-boolean v6, p0, Lcom/baidu/mobstat/cr;->m:Z

    goto/16 :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 158
    :cond_7
    :try_start_5
    const-string v2, "he"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 159
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONObject;)V

    .line 166
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .locals 2

    .line 699
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$4;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/16 v1, 0x400

    .line 1312
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1322
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1327
    const-string v1, "np"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v6, 0x5dc

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    .line 1336
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "np"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1339
    iget-object v1, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 1340
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 199
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-virtual/range {v0 .. v17}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/cr$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    invoke-direct/range {v3 .. v21}, Lcom/baidu/mobstat/cr$1;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;)V"
        }
    .end annotation

    .line 719
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$5;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$2;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 493
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string p1, ""

    .line 496
    :cond_0
    :try_start_1
    sput-object p1, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/cr$3;-><init>(Lcom/baidu/mobstat/cr;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/baidu/mobstat/cr;->f:I

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 533
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;)V"
        }
    .end annotation

    .line 734
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$6;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 396
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/mobstat/cr;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    .line 409
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    .line 410
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 488
    :goto_2
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mobstat/cr;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 486
    :goto_3
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Z)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    goto :goto_2

    .line 402
    :catch_0
    move-exception v0

    .line 404
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 415
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    :try_start_4
    const-string v0, "he"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    :goto_4
    :try_start_5
    const-string v0, "pr"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 429
    :goto_5
    :try_start_6
    const-string v0, "ev"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 435
    :goto_6
    :try_start_7
    const-string v0, "ti"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 441
    :goto_7
    :try_start_8
    const-string v0, "sv"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 447
    :goto_8
    :try_start_9
    const-string v0, "pd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 453
    :goto_9
    :try_start_a
    const-string v0, "ed"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 459
    :goto_a
    :try_start_b
    const-string v0, "sd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 465
    :goto_b
    :try_start_c
    const-string v0, "pyd"

    sget-object v2, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 471
    :goto_c
    :try_start_d
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 473
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONObject;)V

    .line 475
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCurrentCacheToSend content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 480
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 417
    :catch_1
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 423
    :catch_2
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 429
    :catch_3
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 435
    :catch_4
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 441
    :catch_5
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 447
    :catch_6
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 453
    :catch_7
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 459
    :catch_8
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 465
    :catch_9
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_c
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .line 540
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 543
    const-string v2, "he"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v2, "pr"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 549
    const-string v2, "ev"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 552
    const-string v2, "ti"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 555
    const-string v2, "sv"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v0, "pyd"

    sget-object v2, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v0, "pd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v0, "ed"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v0, "sd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x2d000

    if-lt v1, v2, :cond_0

    .line 582
    :goto_1
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 582
    invoke-static {}, Lcom/baidu/mobstat/StatService;->closeTrace()V

    goto :goto_1

    .line 574
    :cond_0
    :try_start_3
    iput v1, p0, Lcom/baidu/mobstat/cr;->e:I

    .line 576
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mobstat/Config;->STAT_FULL_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public c(Landroid/content/Context;Z)V
    .locals 1

    .line 507
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    .line 508
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;)V

    .line 520
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    .line 521
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    .line 522
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    .line 523
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    if-nez p2, :cond_0

    .line 526
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cp;->b()V

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    return v0
.end method
