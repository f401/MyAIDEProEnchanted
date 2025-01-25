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
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

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
    .registers 3

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
    .registers 4

    if-eqz p1, :cond_16

    .line 905
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 910
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 911
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_18

    :catch_15
    move-exception p1

    :cond_16
    :goto_16
    const-wide/16 v0, 0x0

    :goto_18
    return-wide v0
.end method

.method public static a()Lcom/baidu/mobstat/cr;
    .registers 1

    .line 41
    sget-object v0, Lcom/baidu/mobstat/cr;->b:Lcom/baidu/mobstat/cr;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;)Lorg/json/JSONArray;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 47
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-wide/from16 v7, p8

    move-object/from16 v16, p14

    move-object/from16 v20, p15

    move/from16 v23, p16

    move-object/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p19

    .line 240
    invoke-static/range {p11 .. p11}, Lcom/baidu/mobstat/de;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v21

    .line 243
    invoke-static/range {p13 .. p13}, Lcom/baidu/mobstat/de;->d(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v22

    .line 245
    invoke-static/range {p10 .. p10}, Lcom/baidu/mobstat/de;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 246
    invoke-static/range {p12 .. p12}, Lcom/baidu/mobstat/de;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 248
    sget-object v9, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v9}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    move-result v17

    .line 254
    const-wide/16 v9, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x0

    invoke-static/range {v0 .. v26}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 261
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 7

    if-eqz p1, :cond_71

    .line 943
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_71

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_71

    .line 947
    :cond_f
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_32

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
    :cond_32
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 954
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_69

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
    :cond_69
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 962
    :cond_6c
    iget-object p1, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_71
    :goto_71
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 284
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_26

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
    :cond_26
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 291
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_5d

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
    :cond_5d
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 301
    :cond_60
    :try_start_60
    const-string p1, "np"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p1

    .line 303
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    :goto_6c
    iget-object p1, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-static {p1, p2}, Lcom/baidu/mobstat/EventAnalysis;->doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 20

    .line 36
    invoke-direct/range {p0 .. p19}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 5

    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    :cond_5
    const/4 v0, 0x0

    .line 971
    :goto_6
    :try_start_6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 972
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_16
    move-exception p1

    :cond_17
    :goto_17
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 6

    .line 809
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    move-object p1, v1

    .line 816
    :goto_9
    const-string v0, "p"

    if-eqz p1, :cond_13

    .line 817
    :try_start_d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v2

    :cond_13
    :goto_13
    if-nez v1, :cond_25

    .line 824
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 825
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p1, :cond_28

    .line 829
    :try_start_1f
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_28

    .line 835
    :catch_23
    move-exception p1

    goto :goto_28

    :cond_25
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_28
    :goto_28
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-ne p1, p2, :cond_3

    goto :goto_15

    .line 1257
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    :goto_15
    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_b7

    if-nez v2, :cond_c

    goto/16 :goto_b7

    .line 1097
    :cond_c
    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1098
    const-string v6, "d"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    const-string v7, "p"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1100
    const-string v9, "path"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1101
    const-string v11, "title"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1102
    const-string v13, "index"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1103
    const-string v15, "n"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    move-object/from16 v16, v3

    const-string v3, "user"

    move-object/from16 v17, v14

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 1105
    move/from16 v18, v14

    const-string v14, "c"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1106
    move-object/from16 v19, v12

    const-string v12, "t"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 1107
    move-object/from16 v20, v10

    const-string v10, "ps"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1112
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1113
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1114
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1115
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1116
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1117
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 1119
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    invoke-direct {v0, v5, v1}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const/4 v1, 0x0

    return v1

    .line 1125
    :cond_84
    const/4 v1, 0x0

    invoke-direct {v0, v8, v4}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8c

    return v1

    .line 1129
    :cond_8c
    move-object/from16 v2, v20

    invoke-direct {v0, v2, v6}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    return v1

    .line 1133
    :cond_95
    move-object/from16 v2, v19

    invoke-direct {v0, v2, v7}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    return v1

    .line 1137
    :cond_9e
    move-object/from16 v2, v17

    invoke-direct {v0, v2, v9}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a7

    return v1

    .line 1141
    :cond_a7
    move-object/from16 v2, v16

    invoke-direct {v0, v2, v11}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    return v1

    :cond_b0
    move/from16 v2, v18

    if-eq v2, v3, :cond_b5

    return v1

    :cond_b5
    const/4 v1, 0x1

    return v1

    .line 0
    :cond_b7
    :goto_b7
    const/4 v1, 0x0

    .line 1141
    return v1
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 8

    if-eqz p2, :cond_68

    if-nez p1, :cond_6

    goto/16 :goto_68

    .line 844
    :cond_6
    const-string v0, "s"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_13

    return-object p1

    .line 849
    :cond_13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 850
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v2, "p"

    const/4 v3, 0x0

    if-nez v1, :cond_3d

    .line 853
    :try_start_21
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 855
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_36

    .line 857
    :try_start_2a
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception p1

    :goto_34
    move-object v3, p2

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    if-eqz v3, :cond_67

    .line 863
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_67

    .line 868
    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_43

    goto :goto_45

    :catch_43
    move-exception p1

    move-object p1, v3

    :goto_45
    if-eqz p1, :cond_4d

    .line 876
    :try_start_47
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_4c

    goto :goto_4e

    .line 895
    :catch_4c
    move-exception p1

    .line 876
    :cond_4d
    move-object p1, v3

    .line 884
    :goto_4e
    :try_start_4e
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 885
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_57} :catch_60

    if-eqz p1, :cond_62

    .line 888
    :try_start_59
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_62

    :catch_5d
    move-exception p1

    move-object v3, v1

    goto :goto_61

    :catch_60
    move-exception p1

    :goto_61
    move-object v1, v3

    :cond_62
    :goto_62
    if-eqz v1, :cond_67

    .line 895
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_67
    :goto_67
    return-object v0

    :cond_68
    :goto_68
    return-object p1
.end method

.method private b(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .registers 9

    if-eqz p1, :cond_4f

    if-nez p2, :cond_5

    goto :goto_4f

    .line 755
    :cond_5
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

    if-nez v0, :cond_1c

    return-void

    .line 763
    :cond_1c
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONArray;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_29

    return-void

    .line 768
    :cond_29
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

    move-result-object p2

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 780
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 7

    if-eqz p1, :cond_71

    .line 1010
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_71

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_71

    .line 1015
    :cond_f
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_32

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
    :cond_32
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1022
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_69

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
    :cond_69
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 1035
    :cond_6c
    iget-object p1, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_71
    :goto_71
    return-void
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    .line 588
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 591
    :try_start_b
    const-string p1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 592
    const-string p1, "sq"

    iget v0, p0, Lcom/baidu/mobstat/cr;->f:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 593
    const-string p1, "ss"

    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 594
    const-string p1, "at"

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string p1, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string p1, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/DataCore;->getHeadSessionPy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string p1, "plt"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getPlatformType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    move-exception p1

    :goto_58
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 9

    if-eqz p1, :cond_46

    if-nez p2, :cond_5

    goto :goto_46

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1059
    :goto_7
    :try_start_7
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 1060
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 1061
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_42

    :cond_1a
    const/4 v3, 0x0

    .line 1066
    :goto_1b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 1067
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 1068
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_35

    .line 1073
    :cond_2e
    invoke-direct {p0, v4, v2}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_39

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_38
    const/4 v4, 0x0

    :goto_39
    if-nez v4, :cond_3f

    .line 1080
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_42

    .line 1082
    :cond_3f
    invoke-direct {p0, v4, v2}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_42} :catch_45

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_45
    move-exception p1

    :cond_46
    :goto_46
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 28

    .line 1154
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1155
    const-string v4, "c"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1156
    const-string v6, "t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1157
    const-string v9, "ps"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1159
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1160
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 1161
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1162
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    cmp-long v0, v7, v13

    if-gtz v0, :cond_33

    move-wide/from16 v16, v7

    goto :goto_35

    :cond_33
    move-wide/from16 v16, v13

    .line 1168
    :goto_35
    move-object/from16 v18, v9

    const-string v9, "|"

    if-gtz v0, :cond_50

    .line 1169
    move-object/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_64

    .line 1171
    :cond_50
    move-object/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_64
    nop

    .line 1175
    const-string v3, "\\|"

    const/4 v11, 0x0

    const-wide/16 v20, 0x0

    if-gtz v0, :cond_d7

    sub-long/2addr v13, v7

    .line 1178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_af

    .line 1181
    array-length v0, v3

    if-eqz v0, :cond_ac

    .line 1182
    array-length v8, v3

    :goto_7c
    if-ge v11, v8, :cond_a9

    aget-object v0, v3, v11

    .line 1183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8d

    .line 1184
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_8d
    :try_start_8d
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_95} :catch_96

    goto :goto_99

    :catch_96
    move-exception v0

    move-wide/from16 v22, v20

    .line 1193
    :goto_99
    move-object/from16 p2, v2

    move-object/from16 v24, v3

    add-long v2, v22, v13

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    goto :goto_7c

    .line 1182
    :cond_a9
    move-object/from16 p2, v2

    goto :goto_c0

    .line 1181
    :cond_ac
    move-object/from16 p2, v2

    goto :goto_b1

    .line 1179
    :cond_af
    move-object/from16 p2, v2

    .line 1198
    :goto_b1
    :try_start_b1
    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b9} :catch_ba

    goto :goto_bb

    .line 1245
    :catch_ba
    move-exception v0

    .line 1203
    :goto_bb
    add-long v13, v13, v20

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1206
    :goto_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_d7
    move-object/from16 p2, v2

    sub-long/2addr v7, v13

    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10d

    .line 1213
    array-length v0, v3

    if-eqz v0, :cond_10d

    .line 1214
    array-length v10, v3

    :goto_e9
    if-ge v11, v10, :cond_11c

    aget-object v0, v3, v11

    .line 1215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_fa

    .line 1216
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_fa
    :try_start_fa
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_102} :catch_103

    goto :goto_106

    :catch_103
    move-exception v0

    move-wide/from16 v13, v20

    .line 1225
    :goto_106
    add-long/2addr v13, v7

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_e9

    .line 1230
    :cond_10d
    :try_start_10d
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_115} :catch_116

    goto :goto_117

    .line 1245
    :catch_116
    move-exception v0

    .line 1235
    :goto_117
    add-long v7, v7, v20

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1238
    :cond_11c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    :goto_132
    add-int/2addr v5, v12

    :try_start_133
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1243
    move-wide/from16 v13, v16

    invoke-virtual {v1, v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1244
    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1245
    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_147} :catch_148

    goto :goto_149

    :catch_148
    move-exception v0

    :goto_149
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 p1, 0x0

    if-eqz p2, :cond_9

    .line 355
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 358
    :goto_a
    iget v0, p0, Lcom/baidu/mobstat/cr;->e:I

    add-int/2addr p2, v0

    const v0, 0x2d000

    if-le p2, v0, :cond_13

    const/4 p1, 0x1

    :cond_13
    return p1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 684
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mobstat/LogSender;->saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 686
    iget-object p1, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cr$a;

    if-eqz p1, :cond_18

    .line 688
    :try_start_c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    iget-object p2, p0, Lcom/baidu/mobstat/cr;->a:Lcom/baidu/mobstat/cr$a;

    invoke-interface {p2, p1}, Lcom/baidu/mobstat/cr$a;->a(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception p1

    :cond_18
    :goto_18
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    .line 920
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3e

    .line 924
    :cond_b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 925
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/ck;

    .line 926
    invoke-virtual {v1}, Lcom/baidu/mobstat/ck;->a()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v3

    sget v4, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v3, v2, v4}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ck;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 933
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_14

    .line 938
    :cond_38
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 939
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 635
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 638
    :try_start_8
    const-string v0, "failed_cnt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_10

    .line 644
    :catch_f
    move-exception v0

    :goto_10
    :try_start_10
    const-string v0, "trace"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception p1

    :goto_17
    return-void
.end method

.method private d()V
    .registers 2

    .line 623
    iget v0, p0, Lcom/baidu/mobstat/cr;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/cr;->f:I

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 4

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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_54

    if-eqz p2, :cond_54

    .line 980
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_54

    .line 984
    :cond_b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 985
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/cl;

    .line 986
    invoke-virtual {v1}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v3

    sget v4, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v3, v2, v4}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-virtual {v1}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v3

    .line 991
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v4, v3, v5}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-virtual {v1}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v4

    .line 995
    invoke-static {v4}, Lcom/baidu/mobstat/de;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    .line 997
    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1000
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_14

    .line 1005
    :cond_4e
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 1006
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    :cond_54
    :goto_54
    return-void
.end method

.method private d(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 788
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_26

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
    :cond_26
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 795
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_5d

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
    :cond_5d
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cr;->d(Landroid/content/Context;)V

    .line 803
    :cond_60
    iget-object p1, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-void
.end method

.method private e()V
    .registers 2

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/cr;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 116
    :cond_3
    const/4 v0, 0x1

    :try_start_4
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

    if-nez v1, :cond_25

    return-void

    .line 126
    :cond_25
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_c6

    if-eqz v1, :cond_30

    return-void

    .line 133
    :cond_30
    :try_start_30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_c6

    goto :goto_3b

    :catch_36
    move-exception v1

    .line 135
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_c6

    const/4 v1, 0x0

    :goto_3b
    if-nez v1, :cond_3e

    return-void

    .line 142
    :cond_3e
    :try_start_3e
    const-string v2, "ev"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 143
    const-string v3, "pr"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 144
    const-string v4, "ti"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 145
    const-string v5, "sv"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v2, :cond_5e

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_77

    :cond_5e
    if-eqz v3, :cond_66

    .line 148
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_77

    :cond_66
    if-eqz v4, :cond_6e

    .line 149
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_77

    :cond_6e
    if-eqz v5, :cond_8b

    .line 150
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_77

    goto :goto_8b

    .line 158
    :cond_77
    const-string v2, "he"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 159
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 162
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 164
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONObject;)V

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 151
    :cond_8b
    :goto_8b
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 152
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    const-string v2, "saveLastCacheToSend content:empty, return"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_9e} :catch_9f
    .catchall {:try_start_3e .. :try_end_9e} :catchall_c6

    :cond_9e
    return-void

    :catch_9f
    move-exception v1

    .line 168
    :try_start_a0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_a3
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_c2

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
    :cond_c2
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_a0 .. :try_end_c5} :catchall_c6

    goto :goto_ca

    :catchall_c6
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    :goto_ca
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Z)V

    .line 184
    iput-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .registers 5

    .line 699
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 702
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 705
    :cond_16
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$4;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .line 1312
    const-string v0, "np"

    iget-object v1, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_78

    .line 1316
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 1321
    :cond_14
    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_21

    .line 1322
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1325
    :cond_21
    iget-object v1, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_78

    .line 1327
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1328
    const-string v3, "t"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/16 v7, 0x5dc

    cmp-long v9, v3, v7

    if-lez v9, :cond_48

    return-void

    .line 1336
    :cond_48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1339
    iget-object p2, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 1340
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p1

    .line 1344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_78
    :goto_78
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 35
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

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

    .line 199
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v17}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 39
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
            "Ljava/util/Map<",
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

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 218
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v14, Lcom/baidu/mobstat/cr$1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object v0, v14

    move-object/from16 v14, p12

    move-object/from16 v20, v15

    move-object/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v1 .. v19}, Lcom/baidu/mobstat/cr$1;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;)V"
        }
    .end annotation

    .line 719
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 723
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 726
    :cond_16
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$5;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$2;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 493
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_b

    if-eqz v0, :cond_8

    .line 494
    const-string p1, ""

    .line 496
    :cond_8
    :try_start_8
    sput-object p1, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    :goto_c
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/cr$3;-><init>(Lcom/baidu/mobstat/cr;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/baidu/mobstat/cr;->f:I

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;)V"
        }
    .end annotation

    .line 734
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 738
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 741
    :cond_16
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cr$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/cr$6;-><init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .registers 7

    if-eqz p2, :cond_6

    .line 396
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/mobstat/cr;->e()V

    goto :goto_9

    .line 398
    :cond_6
    invoke-direct {p0}, Lcom/baidu/mobstat/cr;->d()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_ea

    .line 402
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_ea

    goto :goto_13

    :catch_f
    move-exception v0

    .line 404
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    :goto_13
    iget-object v0, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    .line 409
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    .line 410
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_34

    return-void

    .line 415
    :cond_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_ea

    .line 417
    :try_start_39
    const-string v1, "he"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41
    .catchall {:try_start_39 .. :try_end_40} :catchall_ea

    goto :goto_45

    :catch_41
    move-exception v1

    .line 419
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_ea

    .line 423
    :goto_45
    :try_start_45
    const-string v1, "pr"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_ea

    goto :goto_51

    :catch_4d
    move-exception v1

    .line 425
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_ea

    .line 429
    :goto_51
    :try_start_51
    const-string v1, "ev"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_59
    .catchall {:try_start_51 .. :try_end_58} :catchall_ea

    goto :goto_5d

    :catch_59
    move-exception v1

    .line 431
    :try_start_5a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_ea

    .line 435
    :goto_5d
    :try_start_5d
    const-string v1, "ti"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_64} :catch_65
    .catchall {:try_start_5d .. :try_end_64} :catchall_ea

    goto :goto_69

    :catch_65
    move-exception v1

    .line 437
    :try_start_66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_ea

    .line 441
    :goto_69
    :try_start_69
    const-string v1, "sv"

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_71
    .catchall {:try_start_69 .. :try_end_70} :catchall_ea

    goto :goto_75

    :catch_71
    move-exception v1

    .line 443
    :try_start_72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_ea

    .line 447
    :goto_75
    :try_start_75
    const-string v1, "pd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_85
    .catchall {:try_start_75 .. :try_end_84} :catchall_ea

    goto :goto_89

    :catch_85
    move-exception v1

    .line 449
    :try_start_86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_ea

    .line 453
    :goto_89
    :try_start_89
    const-string v1, "ed"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_98} :catch_99
    .catchall {:try_start_89 .. :try_end_98} :catchall_ea

    goto :goto_9d

    :catch_99
    move-exception v1

    .line 455
    :try_start_9a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_ea

    .line 459
    :goto_9d
    :try_start_9d
    const-string v1, "sd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ac} :catch_ad
    .catchall {:try_start_9d .. :try_end_ac} :catchall_ea

    goto :goto_b1

    :catch_ad
    move-exception v1

    .line 461
    :try_start_ae
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_ea

    .line 465
    :goto_b1
    :try_start_b1
    const-string v1, "pyd"

    sget-object v2, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_ea

    goto :goto_bd

    :catch_b9
    move-exception v1

    .line 467
    :try_start_ba
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    :goto_bd
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 473
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cr;->b(Lorg/json/JSONObject;)V

    .line 475
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_e6

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
    :cond_e6
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_ba .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 486
    :goto_ee
    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;Z)V

    .line 488
    iput-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 6

    .line 540
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b9

    .line 542
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->g:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 543
    const-string v2, "he"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v2, "pr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->h:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 549
    const-string v2, "ev"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->j:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 552
    const-string v2, "ti"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/cr;->k:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 555
    const-string v2, "sv"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v1, "pyd"

    sget-object v2, Lcom/baidu/mobstat/cr;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v1, "pd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v1, "ed"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v1, "sd"

    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cp;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_89} :catch_8a
    .catchall {:try_start_5 .. :try_end_89} :catchall_b9

    goto :goto_8e

    :catch_8a
    move-exception v1

    .line 563
    :try_start_8b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    :goto_8e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x2d000

    if-lt v1, v2, :cond_9d

    return-void

    .line 574
    :cond_9d
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
    :try_end_b8
    .catchall {:try_start_8b .. :try_end_b8} :catchall_b9

    goto :goto_c0

    :catchall_b9
    move-exception p1

    .line 580
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 582
    invoke-static {}, Lcom/baidu/mobstat/StatService;->closeTrace()V

    :goto_c0
    return-void
.end method

.method public c(Landroid/content/Context;Z)V
    .registers 4

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

    if-nez p2, :cond_2f

    .line 526
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Lcom/baidu/mobstat/cp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cp;->b()V

    .line 529
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cr;->c(Landroid/content/Context;)V

    return-void
.end method

.method public c()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/baidu/mobstat/cr;->m:Z

    return v0
.end method
