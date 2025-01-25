.class public Lcom/baidu/mobstat/DataCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/json/JSONObject;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/baidu/mobstat/DataCore;


# instance fields
.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;

.field private f:Lorg/json/JSONArray;

.field private g:Z

.field private volatile h:I

.field private i:Lcom/baidu/mobstat/StatService$WearListener;

.field private j:Lorg/json/JSONObject;

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/baidu/mobstat/DataCore;

    invoke-direct {v0}, Lcom/baidu/mobstat/DataCore;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->c:Lcom/baidu/mobstat/DataCore;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->g:Z

    .line 67
    iput v0, p0, Lcom/baidu/mobstat/DataCore;->h:I

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/DataCore;->k:Ljava/lang/Object;

    .line 75
    iput-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->l:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)I
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 636
    :cond_4
    const-wide/16 v1, 0x0

    :try_start_6
    const-string v3, "he"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 637
    const-string v4, "sq"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 638
    const-string v6, "ss"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_22

    cmp-long v3, v6, v1

    if-lez v3, :cond_23

    cmp-long v3, v4, v1

    if-nez v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    .line 652
    :catch_22
    move-exception v3

    .line 638
    :cond_23
    const/4 v3, 0x0

    .line 647
    :goto_24
    :try_start_24
    const-string v4, "pr"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 648
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_58

    .line 649
    :goto_32
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_58

    .line 650
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 651
    const-string v5, "c"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 652
    const-string v7, "e"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4a} :catch_57

    cmp-long v4, v7, v1

    if-eqz v4, :cond_54

    cmp-long v4, v5, v1

    if-nez v4, :cond_54

    add-int/lit8 v3, v3, 0x1

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :catch_57
    move-exception p1

    :cond_58
    return v3
.end method

.method private a(Landroid/content/Context;JJ)Lorg/json/JSONArray;
    .registers 10

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/by;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 782
    :try_start_13
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 784
    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_32

    .line 785
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_31

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    .line 824
    :catch_31
    move-exception p1

    .line 795
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "day"

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 797
    :try_start_44
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_4d

    cmp-long v3, v1, p2

    if-nez v3, :cond_36

    goto :goto_61

    :catch_4d
    move-exception v1

    goto :goto_36

    .line 809
    :cond_4f
    :try_start_4f
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 810
    invoke-virtual {p1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 811
    const-string p2, "count"

    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 812
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_60

    goto :goto_61

    :catch_60
    move-exception p1

    .line 818
    :goto_61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_6e

    .line 821
    add-int/lit8 p2, p1, -0x5

    invoke-interface {v0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 824
    :cond_6e
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v0

    .line 1231
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 1232
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    .line 1234
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1235
    :try_start_e
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 1236
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_28

    .line 1238
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter v0

    .line 1239
    :try_start_19
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    .line 1240
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 1242
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void

    :catchall_25
    move-exception p1

    .line 1240
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1

    :catchall_28
    move-exception p1

    .line 1236
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    .line 1232
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 8

    .line 1180
    iget-object p4, p0, Lcom/baidu/mobstat/DataCore;->i:Lcom/baidu/mobstat/StatService$WearListener;

    if-eqz p4, :cond_20

    invoke-interface {p4, p2}, Lcom/baidu/mobstat/StatService$WearListener;->onSendLogData(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 1181
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Log has been passed to app level, log: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void

    .line 1185
    :cond_20
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, v0}, Lcom/baidu/mobstat/LogSender;->saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1186
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_43

    .line 1191
    invoke-static {p1}, Lcom/baidu/mobstat/cq;->a(Landroid/content/Context;)V

    goto :goto_5b

    .line 1193
    :cond_43
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cr;->b()I

    move-result p2

    if-nez p2, :cond_58

    .line 1194
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cr;->c()Z

    move-result p2

    if-eqz p2, :cond_58

    const/4 v0, 0x1

    .line 1193
    :cond_58
    invoke-static {p1, v0}, Lcom/baidu/mobstat/cq;->a(Landroid/content/Context;Z)V

    :goto_5b
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;JI)V
    .registers 19

    .line 670
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-wide/from16 v1, p3

    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_21

    if-eqz p5, :cond_21

    .line 674
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;J)V

    move-wide v3, v1

    .line 677
    :cond_21
    const-string v0, "first"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_57

    .line 683
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v10, v1, v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_45

    cmp-long v3, v10, v5

    if-gtz v3, :cond_45

    const-wide/16 v10, -0x1

    goto :goto_48

    :cond_45
    if-nez v0, :cond_48

    move-wide v10, v5

    .line 695
    :cond_48
    :goto_48
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;J)V

    .line 696
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1, v10, v11}, Lcom/baidu/mobstat/by;->c(Landroid/content/Context;J)V

    goto :goto_63

    .line 698
    :cond_57
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->d(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 702
    :goto_63
    const-string v0, "session_last_interval"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v10, ":"

    if-nez v3, :cond_93

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 709
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 710
    array-length v3, v0

    const/4 v11, 0x2

    if-ne v3, v11, :cond_93

    .line 711
    aget-object v3, v0, v4

    .line 712
    const/4 v11, 0x1

    aget-object v0, v0, v11

    goto :goto_96

    .line 716
    :cond_93
    const-string v3, ""

    move-object v0, v3

    .line 717
    :goto_96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a6

    .line 719
    :try_start_9c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a4} :catch_a5

    goto :goto_a6

    :catch_a5
    move-exception v0

    .line 727
    :cond_a6
    :goto_a6
    invoke-static/range {p3 .. p4}, Lcom/baidu/mobstat/dt;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    goto :goto_ba

    :cond_b7
    move/from16 v0, p5

    goto :goto_bc

    :cond_ba
    :goto_ba
    add-int v0, p5, v4

    :goto_bc
    if-eqz p5, :cond_d7

    .line 733
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, p1, v10}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    :cond_d7
    const-string v2, "session_today_cnt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 742
    :try_start_e6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ee} :catch_f0

    int-to-long v10, v0

    goto :goto_f2

    :catch_f0
    move-exception v0

    :cond_f1
    move-wide v10, v5

    .line 748
    :goto_f2
    const-string v12, "recent"

    cmp-long v0, v10, v5

    if-eqz v0, :cond_11d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    if-eqz p5, :cond_11d

    int-to-long v5, v4

    .line 751
    move-object v1, p0

    move-object v2, p1

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;JJ)Lorg/json/JSONArray;

    move-result-object v0

    .line 752
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 754
    invoke-direct {p0, p2, v12, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13d

    .line 756
    :cond_11d
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_132

    .line 761
    :try_start_12b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_130} :catch_131

    goto :goto_133

    .line 771
    :catch_131
    move-exception v0

    .line 761
    :cond_132
    const/4 v1, 0x0

    :goto_133
    if-nez v1, :cond_13a

    .line 767
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 771
    :cond_13a
    invoke-direct {p0, p2, v12, v1}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_13d
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 10

    .line 609
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;)I

    move-result v5

    .line 613
    const-wide/16 v0, 0x0

    :try_start_6
    const-string v2, "he"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 615
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_17

    :catch_15
    move-exception p2

    :cond_16
    move-wide v2, v0

    :goto_17
    cmp-long p2, v2, v0

    if-nez p2, :cond_21

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v3, v0

    goto :goto_22

    .line 615
    :cond_21
    move-wide v3, v2

    .line 625
    :goto_22
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;JI)V

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 572
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 574
    :try_start_8
    const-string v1, "app_session"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 605
    :catch_e
    move-exception p3

    .line 581
    :goto_f
    :try_start_f
    const-string p3, "failed_cnt"

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_17

    .line 605
    :catch_16
    move-exception p3

    .line 588
    :goto_17
    :try_start_17
    const-string p3, "circle"

    invoke-static {}, Lcom/baidu/mobstat/bz;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    .line 605
    :catch_21
    move-exception p3

    .line 595
    :goto_22
    :try_start_22
    const-string p3, "trace"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_2b

    .line 605
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_2c

    :catch_2b
    move-exception p1

    :goto_2c
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 832
    :cond_3
    const-string v0, "visit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 834
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_15

    .line 842
    :catch_14
    move-exception v1

    .line 841
    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 842
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p1

    :goto_20
    return-void
.end method

.method private a(Z)V
    .registers 2

    .line 315
    iput-boolean p1, p0, Lcom/baidu/mobstat/DataCore;->g:Z

    return-void
.end method

.method private a()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->g:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    .line 223
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getSessionSize()I

    move-result v0

    .line 225
    add-int/2addr p1, v0

    iget v0, p0, Lcom/baidu/mobstat/DataCore;->h:I

    add-int/2addr p1, v0

    const v0, 0x2d000

    if-le p1, v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p2, :cond_19

    .line 1017
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_19

    :cond_9
    if-eqz p3, :cond_19

    .line 1021
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_12

    goto :goto_19

    .line 1026
    :cond_12
    :try_start_12
    const-string p1, "launch"

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-exception p1

    :cond_19
    :goto_19
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public static instance()Lcom/baidu/mobstat/DataCore;
    .registers 1

    .line 53
    sget-object v0, Lcom/baidu/mobstat/DataCore;->c:Lcom/baidu/mobstat/DataCore;

    return-object v0
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .registers 4

    .line 1201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    .line 1204
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v1, "dd"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1206
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1210
    :cond_19
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v0

    .line 1211
    :try_start_1c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 1213
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2b

    .line 1215
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    .line 1226
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;)V

    return-void

    :catchall_2b
    move-exception p1

    .line 1213
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public clearProperty(Ljava/lang/String;)V
    .registers 4

    .line 1386
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_12

    .line 1387
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v0, "uidPy"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 1388
    :cond_12
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1389
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v0, "userPy"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 1390
    :cond_22
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1391
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v0, "sessionPy"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v0, "sessionJson"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 1393
    :cond_39
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1394
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v0, "eventPy"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 1395
    :cond_49
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 1396
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v0, "pagePy"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    :goto_58
    return-void
.end method

.method public constructLogWithEmptyBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 501
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 503
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 504
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v2

    .line 505
    iget-object v3, v2, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 506
    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_21

    .line 508
    :cond_1e
    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 511
    :goto_21
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 516
    :try_start_2a
    const-string v4, "t"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 517
    const-string v4, "ss"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    const-string v2, "wl2"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v2, "sq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    const-string v2, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v2, "k"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string p2, "he"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_56} :catch_6c

    .line 533
    :try_start_56
    const-string p2, "pr"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string p2, "ev"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string p2, "ex"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_65} :catch_6a

    .line 550
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_6a
    move-exception p1

    goto :goto_6d

    :catch_6c
    move-exception p1

    :goto_6d
    const/4 p1, 0x0

    return-object p1
.end method

.method public flush(Landroid/content/Context;)V
    .registers 6

    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_52

    .line 264
    :try_start_8
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v3, "pr"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_4f

    .line 268
    :try_start_19
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_52

    .line 269
    :try_start_1c
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v3, "ev"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_4c

    .line 273
    :try_start_2d
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_52

    .line 274
    :try_start_30
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v3, "he"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_49

    .line 278
    :try_start_41
    const-string v1, "pyd"

    sget-object v2, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_52

    goto :goto_53

    :catchall_49
    move-exception v2

    .line 276
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_52

    :catchall_4c
    move-exception v2

    .line 271
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v2
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_52

    :catchall_4f
    move-exception v2

    .line 266
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception v1

    .line 284
    :goto_53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-direct {p0}, Lcom/baidu/mobstat/DataCore;->a()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 287
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string v0, "[WARNING] stat cache exceed 184320 Bytes, ignored"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_67
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x2d000

    if-lt v1, v2, :cond_76

    .line 296
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    return-void

    .line 300
    :cond_76
    iput v1, p0, Lcom/baidu/mobstat/DataCore;->h:I

    .line 304
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mobstat/Config;->STAT_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter v0

    .line 309
    :try_start_94
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    sget-object v3, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v3, v1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_a1

    throw p1
.end method

.method public getCacheFileSzie()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/baidu/mobstat/DataCore;->h:I

    return v0
.end method

.method public getEventPy()Ljava/lang/String;
    .registers 4

    .line 1454
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "eventPy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1456
    const-string v0, ""

    .line 1458
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/mobstat/DataCore;->getSessionPy()Ljava/lang/String;

    move-result-object v1

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadSessionPy()Ljava/lang/String;
    .registers 3

    .line 1418
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "sessionJson"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, ""

    :cond_12
    return-object v0
.end method

.method public getLogData()Lorg/json/JSONObject;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPagePy()Ljava/lang/String;
    .registers 4

    .line 1444
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "pagePy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1446
    const-string v0, ""

    .line 1448
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/mobstat/DataCore;->getSessionPy()Ljava/lang/String;

    move-result-object v1

    .line 1449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPy()Ljava/lang/String;
    .registers 6

    .line 1424
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "sessionPy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1425
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v2, "userPy"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1426
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v3, "uidPy"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_27

    move-object v0, v4

    .line 1431
    :cond_27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object v1, v4

    .line 1434
    :cond_2e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    move-object v2, v4

    .line 1437
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPyd()Ljava/lang/String;
    .registers 2

    .line 1414
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 95
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadStatData(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadLastSession(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    return-void
.end method

.method public installHeader(Landroid/content/Context;)V
    .registers 5

    .line 250
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 252
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public loadLastSession(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 331
    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    return-void

    .line 337
    :cond_1f
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return-void

    .line 342
    :cond_2a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 343
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method public loadProperty(Landroid/content/Context;)V
    .registers 9

    .line 123
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "1"

    if-nez v1, :cond_4f

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    if-eqz v5, :cond_1e

    .line 134
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1e

    .line 135
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_1e

    :catch_41
    move-exception v0

    .line 143
    :cond_42
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 144
    invoke-static {v1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_4f
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 155
    const-string v3, "uid_"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public loadStatData(Landroid/content/Context;)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 406
    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/baidu/mobstat/Config;->STAT_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    return-void

    .line 415
    :cond_1f
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-void

    .line 422
    :cond_2a
    :try_start_2a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_32

    :catch_30
    move-exception v0

    const/4 v1, 0x0

    :goto_32
    if-nez v1, :cond_35

    return-void

    .line 430
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 435
    const-wide/32 v4, 0x240c8400

    const/4 v0, 0x0

    :try_start_3d
    const-string v6, "pr"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_64

    const/4 v7, 0x0

    .line 437
    :goto_46
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_64

    .line 438
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 441
    const-string v9, "s"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v9, v2, v9

    cmp-long v11, v9, v4

    if-lez v11, :cond_5d

    goto :goto_60

    .line 445
    :cond_5d
    invoke-virtual {p0, v8}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_60} :catch_63

    :goto_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 494
    :catch_63
    move-exception v6

    .line 456
    :cond_64
    :try_start_64
    const-string v6, "ev"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 458
    :goto_6c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_8a

    .line 459
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 461
    const-string v8, "t"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v2, v8

    cmp-long v10, v8, v4

    if-lez v10, :cond_83

    goto :goto_86

    .line 465
    :cond_83
    invoke-virtual {p0, p1, v7}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_86} :catch_89

    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 494
    :catch_89
    move-exception p1

    .line 476
    :cond_8a
    :try_start_8a
    const-string p1, "he"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 478
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_95} :catch_9c

    .line 479
    :try_start_95
    sput-object p1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 480
    monitor-exit v0

    goto :goto_9d

    :catchall_99
    move-exception p1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_99

    :try_start_9b
    throw p1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9c} :catch_9c

    .line 494
    :catch_9c
    move-exception p1

    .line 490
    :cond_9d
    :goto_9d
    :try_start_9d
    const-string p1, "pyd"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_ae

    if-eqz v0, :cond_ab

    .line 492
    const-string p1, ""

    .line 494
    :cond_ab
    :try_start_ab
    sput-object p1, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ad} :catch_ae

    goto :goto_af

    :catch_ae
    move-exception p1

    :goto_af
    return-void
.end method

.method public loadWifiData(Landroid/content/Context;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 367
    :cond_3
    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 371
    :cond_c
    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :try_start_12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_33

    .line 377
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    add-int/lit8 v3, v0, -0xa

    :goto_26
    if-ge v3, v0, :cond_32

    .line 379
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 377
    :cond_32
    move-object v1, v2

    .line 385
    :cond_33
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/ds;->m(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 387
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 390
    :cond_41
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter p1
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_44} :catch_4b

    .line 391
    :try_start_44
    iput-object v1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    .line 392
    monitor-exit p1

    goto :goto_4c

    :catchall_48
    move-exception v0

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v0
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p1

    :goto_4c
    return-void
.end method

.method public putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 236
    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 237
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string p2, "[WARNING] data to put exceed limit, ignored"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    return-void

    .line 241
    :cond_17
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter p1

    .line 242
    :try_start_1a
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-static {v0, p2}, Lcom/baidu/mobstat/EventAnalysis;->doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 243
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p2
.end method

.method public putSession(Lcom/baidu/mobstat/Session;)V
    .registers 2

    .line 170
    invoke-virtual {p1}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V

    return-void
.end method

.method public putSession(Ljava/lang/String;)V
    .registers 3

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_20

    .line 202
    :cond_16
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p1

    :cond_20
    :goto_20
    return-void
.end method

.method public putSession(Lorg/json/JSONObject;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 181
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 182
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string v0, "[WARNING] data to put exceed limit, ignored"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_17
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v0

    .line 187
    :try_start_1a
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_29

    .line 189
    :try_start_20
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_29

    goto :goto_27

    .line 193
    :catch_26
    move-exception p1

    :goto_27
    :try_start_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1466
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_31

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 1470
    :cond_9
    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1471
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1475
    :cond_13
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 1476
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1479
    :cond_24
    const-string p2, "null"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_31

    if-eqz p2, :cond_35

    return-object v1

    :catch_31
    move-exception p2

    .line 1485
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    return-object p1
.end method

.method public saveLogData(Landroid/content/Context;ZZJZ)V
    .registers 15

    .line 887
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZLorg/json/JSONObject;)V

    return-void
.end method

.method public saveLogData(Landroid/content/Context;ZZJZLorg/json/JSONObject;)V
    .registers 16

    .line 898
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 901
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 902
    :try_start_d
    iget-object v2, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 903
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_20

    .line 905
    :cond_1b
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 907
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_33

    .line 909
    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 910
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    .line 911
    const-string p2, "[WARNING] 无法找到有效APP Key, 请参考文档配置"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    :catchall_33
    move-exception p1

    .line 907
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1

    .line 916
    :cond_36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 917
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 918
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_13a

    .line 922
    :try_start_42
    sget-object v4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v5, "at"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 923
    sget-object v5, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v6, "uid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 924
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 925
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/mobstat/CooperService;->getLastUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 926
    sget-object v4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v6, "uid_change"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7f

    .line 928
    :cond_76
    sget-object v4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v6, "uid_change"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    :goto_7f
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Lcom/baidu/mobstat/CooperService;->setLastUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 934
    :cond_86
    sget-object v4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v5, "t"

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 935
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v3, "sq"

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 936
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v3, "ss"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 938
    iget-object p4, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter p4
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_a0} :catch_137
    .catchall {:try_start_42 .. :try_end_a0} :catchall_13a

    .line 939
    :try_start_a0
    sget-object p5, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v2, "wl2"

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    invoke-virtual {p5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    monitor-exit p4
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_134

    .line 943
    :try_start_aa
    sget-object p4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string p5, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 946
    sget-object p4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p4, p7}, Lcom/baidu/mobstat/DataCore;->b(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 948
    const-string p4, "he"

    sget-object p5, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c5} :catch_137
    .catchall {:try_start_aa .. :try_end_c5} :catchall_13a

    .line 953
    :try_start_c5
    iget-object p4, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter p4
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_13a

    .line 955
    :try_start_c8
    const-string p5, "pr"

    iget-object p7, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, p5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cf
    .catch Lorg/json/JSONException; {:try_start_c8 .. :try_end_cf} :catch_12e
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_12c

    .line 960
    :try_start_cf
    iget-object p5, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter p5
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_12c

    .line 962
    :try_start_d2
    const-string p7, "ev"

    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, p7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_d9} :catch_125
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_123

    .line 968
    :try_start_d9
    new-instance p7, Lorg/json/JSONArray;

    invoke-direct {p7}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "ex"

    invoke-virtual {v0, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_e3} :catch_11e
    .catchall {:try_start_d9 .. :try_end_e3} :catchall_123

    .line 974
    :try_start_e3
    const-string p7, "pyd"

    sget-object v2, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    invoke-virtual {v0, p7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_ea} :catch_119
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_123

    .line 979
    :try_start_ea
    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 982
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->b(Lorg/json/JSONObject;)V

    .line 984
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 986
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 989
    invoke-direct {p0, p1, p3, p2, p6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 991
    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->j:Lorg/json/JSONObject;

    .line 993
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->clearCache(Landroid/content/Context;)V

    .line 996
    iget-boolean p2, p0, Lcom/baidu/mobstat/DataCore;->l:Z

    if-nez p2, :cond_115

    .line 997
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/baidu/mobstat/DataCore;->l:Z

    .line 999
    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/DataCore;->updatePyd(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->loadProperty(Landroid/content/Context;)V

    .line 1003
    invoke-virtual {p0}, Lcom/baidu/mobstat/DataCore;->getTempPyd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->updatePyd(Ljava/lang/String;)V

    .line 1006
    :cond_115
    monitor-exit p5
    :try_end_116
    .catchall {:try_start_ea .. :try_end_116} :catchall_123

    .line 1007
    :try_start_116
    monitor-exit p4
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_12c

    .line 1008
    :try_start_117
    monitor-exit v1
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_13a

    return-void

    .line 976
    :catch_119
    move-exception p1

    :try_start_11a
    monitor-exit p5
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_123

    :try_start_11b
    monitor-exit p4
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_12c

    :try_start_11c
    monitor-exit v1
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_13a

    return-void

    .line 970
    :catch_11e
    move-exception p1

    :try_start_11f
    monitor-exit p5
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_123

    :try_start_120
    monitor-exit p4
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_12c

    :try_start_121
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_13a

    return-void

    :catchall_123
    move-exception p1

    goto :goto_12a

    .line 964
    :catch_125
    move-exception p1

    :try_start_126
    monitor-exit p5
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_123

    :try_start_127
    monitor-exit p4
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_12c

    :try_start_128
    monitor-exit v1
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_13a

    return-void

    .line 1006
    :goto_12a
    :try_start_12a
    monitor-exit p5
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_123

    :try_start_12b
    throw p1

    :catchall_12c
    move-exception p1

    goto :goto_132

    .line 957
    :catch_12e
    move-exception p1

    monitor-exit p4
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_12c

    :try_start_130
    monitor-exit v1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_13a

    return-void

    .line 1007
    :goto_132
    :try_start_132
    monitor-exit p4
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_12c

    :try_start_133
    throw p1
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_13a

    :catchall_134
    move-exception p1

    .line 940
    :try_start_135
    monitor-exit p4
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    :try_start_136
    throw p1
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_137} :catch_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_13a

    .line 950
    :catch_137
    move-exception p1

    :try_start_138
    monitor-exit v1

    return-void

    :catchall_13a
    move-exception p1

    .line 1008
    monitor-exit v1
    :try_end_13c
    .catchall {:try_start_138 .. :try_end_13c} :catchall_13a

    throw p1
.end method

.method public saveLogDataAndSendForRaven(Landroid/content/Context;)V
    .registers 3

    .line 850
    iget-object p1, p0, Lcom/baidu/mobstat/DataCore;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 852
    :try_start_3
    monitor-exit p1

    return-void

    :catchall_5
    move-exception v0

    .line 861
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public sendDataForDueros(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1260
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "s"

    const-string v5, "v"

    const-string v6, "k"

    :try_start_c
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_273

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_273

    :cond_1a
    if-nez p2, :cond_20

    .line 1264
    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/DataCore;->clearProperty(Ljava/lang/String;)V

    return-void

    .line 1268
    :cond_20
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v7, 0x64

    if-gt v0, v7, :cond_273

    iget-object v0, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_32

    goto/16 :goto_273

    .line 1272
    :cond_32
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1273
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1274
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1275
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1276
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1278
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 1279
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1281
    :goto_58
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5c} :catch_272

    const-string v15, "4"

    const-string v7, "3"

    move-object/from16 v16, v13

    const-string v13, "1"

    move-object/from16 v17, v11

    const-string v11, "0"

    move-object/from16 p2, v15

    const-string v15, "2"

    if-eqz v0, :cond_1c5

    .line 1282
    :try_start_6e
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v14

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/String;

    .line 1284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v7

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 1285
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1aa

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move-object/from16 v25, v6

    move-object v15, v12

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    goto/16 :goto_1b1

    .line 1289
    :cond_9c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v20, v12

    const/16 v12, 0x100

    if-gt v0, v12, :cond_197

    .line 1290
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v12, :cond_b6

    move-object/from16 v25, v6

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    move-object/from16 v15, v20

    goto/16 :goto_19f

    .line 1297
    :cond_b6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1298
    invoke-virtual {v0, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1306
    iget-object v12, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-lez v12, :cond_11c

    const/4 v12, 0x0

    .line 1307
    :goto_d1
    move-object/from16 v23, v10

    iget-object v10, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_117

    .line 1308
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v24, v15

    iget-object v15, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1310
    move-object/from16 v25, v6

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1311
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1312
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10e

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    move/from16 v22, v12

    const/4 v6, 0x0

    goto :goto_123

    :cond_10e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v23

    move-object/from16 v15, v24

    move-object/from16 v6, v25

    goto :goto_d1

    :cond_117
    move-object/from16 v25, v6

    move-object/from16 v24, v15

    goto :goto_122

    .line 1306
    :cond_11c
    move-object/from16 v25, v6

    move-object/from16 v23, v10

    move-object/from16 v24, v15

    .line 1312
    :goto_122
    const/4 v6, 0x1

    .line 1321
    :goto_123
    iget-object v10, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_129} :catch_272

    const/16 v12, 0x64

    if-le v10, v12, :cond_12e

    return-void

    :cond_12e
    if-eqz v6, :cond_160

    .line 1327
    :try_start_130
    iget-object v6, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    iget-object v6, v1, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13f} :catch_15c

    add-int/lit8 v6, v6, -0x1

    .line 1329
    :try_start_141
    iget-object v10, v1, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_157} :catch_158

    goto :goto_162

    .line 1375
    :catch_158
    move-exception v0

    move/from16 v22, v6

    goto :goto_15d

    :catch_15c
    move-exception v0

    :goto_15d
    move/from16 v6, v22

    goto :goto_162

    .line 1321
    :cond_160
    move/from16 v6, v22

    .line 1336
    :goto_162
    :try_start_162
    invoke-virtual {v1, v3, v8, v11, v6}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1337
    invoke-virtual {v1, v3, v9, v13, v6}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1338
    move-object/from16 v10, v23

    move-object/from16 v12, v24

    invoke-virtual {v1, v3, v10, v12, v6}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1339
    move-object/from16 v11, v18

    move-object/from16 v15, v20

    invoke-virtual {v1, v3, v15, v11, v6}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1340
    move-object/from16 v13, p2

    move-object/from16 v11, v17

    invoke-virtual {v1, v3, v11, v13, v6}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1342
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 1344
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1345
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1346
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1347
    move-object/from16 v6, v16

    invoke-virtual {v6, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1bb

    :cond_194
    move-object/from16 v6, v16

    goto :goto_1bb

    .line 1289
    :cond_197
    move-object/from16 v25, v6

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    move-object/from16 v15, v20

    .line 1347
    :goto_19f
    nop

    .line 1292
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v7, "[WARNING] setProperty failed,key or value can not over 256 bytes !"

    invoke-virtual {v0, v7}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_1bb

    .line 1285
    :cond_1aa
    move-object/from16 v25, v6

    move-object v15, v12

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    .line 1292
    :goto_1b1
    nop

    .line 1286
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v7, "[WARNING] setProperty failed,key or value can not null !"

    invoke-virtual {v0, v7}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    :goto_1bb
    move-object v13, v6

    move-object v12, v15

    move-object/from16 v14, v19

    move-object/from16 v6, v25

    const/16 v7, 0x64

    goto/16 :goto_58

    .line 1352
    :cond_1c5
    move-object/from16 v4, p2

    move-object v5, v7

    move-object/from16 v6, v16

    move-object/from16 v2, v17

    move-object/from16 v26, v15

    move-object v15, v12

    move-object/from16 v12, v26

    iget-object v0, v1, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ef

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1ef

    .line 1355
    iget-object v2, v1, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "uidPy"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_259

    .line 1356
    :cond_1ef
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_207

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_207

    .line 1357
    iget-object v2, v1, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "userPy"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_259

    .line 1358
    :cond_207
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_22a

    .line 1359
    iget-object v2, v1, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "sessionPy"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    iget-object v2, v1, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "sessionJson"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_259

    .line 1361
    :cond_22a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_242

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_242

    .line 1362
    iget-object v2, v1, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "eventPy"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_259

    .line 1363
    :cond_242
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_259

    .line 1364
    iget-object v4, v1, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v5, "pagePy"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    :cond_259
    :goto_259
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 1370
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/CooperService;->setHeaderPy(Ljava/lang/String;)V

    .line 1373
    :cond_26a
    iget-boolean v2, v1, Lcom/baidu/mobstat/DataCore;->l:Z

    if-eqz v2, :cond_273

    .line 1375
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->updatePyd(Ljava/lang/String;)V
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_271} :catch_272

    goto :goto_273

    :catch_272
    move-exception v0

    :cond_273
    :goto_273
    return-void
.end method

.method public updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5

    if-gez p4, :cond_3

    return-void

    .line 1405
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1407
    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    :cond_14
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_17
    return-void
.end method

.method public updatePyd(Ljava/lang/String;)V
    .registers 3

    .line 108
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_12

    if-eqz v0, :cond_8

    .line 109
    const-string p1, ""

    .line 111
    :cond_8
    :try_start_8
    sput-object p1, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception p1

    :goto_13
    return-void
.end method
