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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    .locals 2

    const/4 v1, 0x0

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
    iput-boolean v1, p0, Lcom/baidu/mobstat/DataCore;->g:Z

    .line 67
    iput v1, p0, Lcom/baidu/mobstat/DataCore;->h:I

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->k:Ljava/lang/Object;

    .line 75
    iput-boolean v1, p0, Lcom/baidu/mobstat/DataCore;->l:Z

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
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    if-nez p1, :cond_0

    .line 652
    :goto_0
    return v1

    .line 636
    :cond_0
    :try_start_0
    const-string v0, "he"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 637
    const-string v2, "sq"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 638
    const-string v4, "ss"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 647
    :goto_1
    :try_start_1
    const-string v2, "pr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 648
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 649
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 650
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 651
    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 652
    const-string v6, "e"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 638
    goto :goto_1

    .line 652
    :catch_1
    move-exception v1

    :cond_2
    :goto_4
    move v1, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_4

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4
.end method

.method private a(Landroid/content/Context;JJ)Lorg/json/JSONArray;
    .locals 6

    .line 778
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 782
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    .line 784
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 785
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 795
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 797
    :try_start_1
    const-string v3, "day"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v4

    cmp-long v0, v4, p2

    if-nez v0, :cond_1

    .line 818
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_3

    .line 821
    add-int/lit8 v2, v0, -0x5

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 824
    :goto_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 809
    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 810
    const-string v2, "day"

    invoke-virtual {v0, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 811
    const-string v2, "count"

    invoke-virtual {v0, v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 812
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 797
    :catch_2
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 1230
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1231
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 1232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1234
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1235
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 1236
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1238
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter v1

    .line 1239
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    .line 1240
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1242
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1240
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1236
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 1232
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 1180
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->i:Lcom/baidu/mobstat/StatService$WearListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/baidu/mobstat/StatService$WearListener;->onSendLogData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log has been passed to app level, log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 1193
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/baidu/mobstat/LogSender;->saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1186
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1191
    invoke-static {p1}, Lcom/baidu/mobstat/cq;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1193
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cr;->b()I

    move-result v1

    if-nez v1, :cond_2

    .line 1194
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cr;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1193
    :cond_2
    invoke-static {p1, v0}, Lcom/baidu/mobstat/cq;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;JI)V
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 670
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    if-eqz p5, :cond_0

    .line 674
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;J)V

    move-wide v0, p3

    .line 677
    :cond_0
    const-string v3, "first"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_5

    .line 683
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, p3, v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_4

    cmp-long v6, v0, v4

    if-gtz v6, :cond_4

    const-wide/16 v0, -0x1

    .line 695
    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p4}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;J)V

    .line 696
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/baidu/mobstat/by;->c(Landroid/content/Context;J)V

    .line 702
    :goto_1
    const-string v3, "session_last_interval"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 709
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 710
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 711
    aget-object v1, v0, v2

    .line 712
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 717
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 719
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 727
    :goto_3
    invoke-static {p3, p4}, Lcom/baidu/mobstat/dt;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 728
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    add-int v2, p5, v0

    :goto_4
    if-eqz p5, :cond_3

    .line 733
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    :cond_3
    const-string v3, "session_today_cnt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p2, v3, v2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 742
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    int-to-long v2, v2

    .line 748
    :goto_5
    cmp-long v4, v2, v4

    if-eqz v4, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p5, :cond_9

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    .line 751
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;JJ)Lorg/json/JSONArray;

    move-result-object v0

    .line 752
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 754
    const-string v1, "recent"

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    :goto_6
    return-void

    .line 683
    :cond_4
    if-nez v3, :cond_1

    move-wide v0, v4

    goto/16 :goto_0

    .line 698
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->d(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_1

    .line 716
    :cond_6
    const-string v1, ""

    const-string v0, ""

    goto/16 :goto_2

    .line 719
    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v2, p5

    .line 728
    goto :goto_4

    .line 742
    :catch_1
    move-exception v2

    :cond_8
    move-wide v2, v4

    goto :goto_5

    .line 756
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/by;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 761
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    if-nez v0, :cond_a

    .line 767
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 771
    :cond_a
    const-string v1, "recent"

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 761
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    move v0, v2

    goto/16 :goto_3
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7

    const-wide/16 v0, 0x0

    .line 609
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;)I

    move-result v6

    .line 613
    :try_start_0
    const-string v2, "he"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 615
    const-string v3, "ss"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 615
    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;JI)V

    return-void

    :catch_0
    move-exception v2

    :cond_1
    move-wide v4, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 605
    :goto_0
    return-void

    .line 572
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 574
    :try_start_0
    const-string v1, "app_session"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 581
    :goto_1
    :try_start_1
    const-string v1, "failed_cnt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 588
    :goto_2
    :try_start_2
    const-string v1, "circle"

    invoke-static {}, Lcom/baidu/mobstat/bz;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 595
    :goto_3
    :try_start_3
    const-string v1, "trace"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 605
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 842
    :goto_0
    return-void

    .line 832
    :cond_0
    const-string v0, "visit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "visit"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 841
    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "visit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 842
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/baidu/mobstat/DataCore;->g:Z

    return-void
.end method

.method private a()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->g:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 223
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getSessionSize()I

    move-result v1

    .line 225
    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/DataCore;->h:I

    add-int/2addr v0, v1

    const v1, 0x2d000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1017
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    if-eqz p3, :cond_0

    .line 1021
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    :try_start_0
    const-string v0, "launch"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public static instance()Lcom/baidu/mobstat/DataCore;
    .locals 1

    .line 53
    sget-object v0, Lcom/baidu/mobstat/DataCore;->c:Lcom/baidu/mobstat/DataCore;

    return-object v0
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .locals 2

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

    if-nez v1, :cond_0

    .line 1206
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 1210
    :cond_0
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 1211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 1213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    .line 1226
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1213
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearProperty(Ljava/lang/String;)V
    .locals 3

    .line 1386
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "uidPy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1389
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "userPy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1390
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "sessionPy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "sessionJson"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1393
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1394
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "eventPy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1395
    :cond_4
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "pagePy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructLogWithEmptyBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

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

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 511
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 516
    :try_start_0
    const-string v3, "t"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 517
    const-string v3, "ss"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    const-string v3, "wl2"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v3, "sq"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    const-string v3, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v3, "k"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v3, "he"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :try_start_1
    const-string v1, "pr"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v1, "ev"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v1, "ex"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 508
    :cond_0
    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public flush(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    .line 261
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v3, "pr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 268
    :try_start_2
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v3, "ev"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    :try_start_4
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 274
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v3, "he"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    :try_start_6
    const-string v0, "pyd"

    sget-object v2, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 284
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-direct {p0}, Lcom/baidu/mobstat/DataCore;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] stat cache exceed 184320 Bytes, ignored"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 311
    :goto_1
    return-void

    .line 278
    :catchall_0
    move-exception v0

    .line 276
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0

    .line 276
    :catchall_1
    move-exception v0

    .line 271
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v0

    .line 266
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x2d000

    if-lt v1, v2, :cond_1

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    goto :goto_1

    .line 300
    :cond_1
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
    invoke-static {p1, v1, v0, v4}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter v1

    .line 309
    :try_start_d
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-object v2, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    monitor-exit v1

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0
.end method

.method public getCacheFileSzie()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/baidu/mobstat/DataCore;->h:I

    return v0
.end method

.method public getEventPy()Ljava/lang/String;
    .locals 3

    .line 1454
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "eventPy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    const-string v0, ""

    .line 1458
    :cond_0
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

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadSessionPy()Ljava/lang/String;
    .locals 2

    .line 1418
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "sessionJson"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLogData()Lorg/json/JSONObject;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPagePy()Ljava/lang/String;
    .locals 3

    .line 1444
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v1, "pagePy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1446
    const-string v0, ""

    .line 1448
    :cond_0
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

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPy()Ljava/lang/String;
    .locals 4

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

    if-eqz v3, :cond_0

    const-string v0, ""

    .line 1431
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, ""

    .line 1434
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, ""

    .line 1437
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/DataCore;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPyd()Ljava/lang/String;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

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
    .locals 3

    .line 250
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 252
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadLastSession(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
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

    if-eqz v1, :cond_0

    .line 337
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
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

    goto :goto_0
.end method

.method public loadProperty(Landroid/content/Context;)V
    .locals 6

    .line 123
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 131
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 135
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 144
    invoke-static {v2}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "1"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 155
    const-string v2, "uid_"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "0"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public loadStatData(Landroid/content/Context;)V
    .locals 12

    const-wide/32 v10, 0x240c8400

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mobstat/Config;->STAT_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {p1, v1}, Lcom/baidu/mobstat/dj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {p1, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 435
    :try_start_1
    const-string v1, "pr"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    move v1, v0

    .line 437
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 438
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 441
    const-string v7, "s"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 445
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_1

    .line 445
    :cond_2
    invoke-virtual {p0, v6}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 494
    :catch_1
    move-exception v1

    .line 456
    :cond_3
    :try_start_2
    const-string v1, "ev"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 458
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 459
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 461
    const-string v6, "t"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_4

    .line 465
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 494
    :catch_2
    move-exception v0

    .line 476
    :cond_5
    :try_start_3
    const-string v0, "he"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 478
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 479
    :try_start_4
    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 480
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    :cond_6
    :goto_6
    :try_start_5
    const-string v0, "pyd"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    if-eqz v1, :cond_7

    .line 492
    const-string v0, ""

    .line 494
    :cond_7
    :try_start_6
    sput-object v0, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 480
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 494
    :catch_4
    move-exception v0

    goto :goto_6
.end method

.method public loadWifiData(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v0, 0xa

    if-lt v3, v0, :cond_2

    .line 377
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    add-int/lit8 v2, v3, -0xa

    :goto_1
    if-ge v2, v3, :cond_3

    .line 379
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 377
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->m(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 387
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 390
    :cond_4
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :try_start_1
    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    .line 392
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 243
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] data to put exceed limit, ignored"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-static {v0, p2}, Lcom/baidu/mobstat/EventAnalysis;->doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 243
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putSession(Lcom/baidu/mobstat/Session;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V

    return-void
.end method

.method public putSession(Ljava/lang/String;)V
    .locals 1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSession(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] data to put exceed limit, ignored"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1466
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 1485
    :cond_0
    :goto_0
    return-object v0

    .line 1470
    :cond_1
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1471
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1475
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1476
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1479
    :cond_3
    const-string v0, "null"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1481
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, p1

    .line 1485
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1481
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public saveLogData(Landroid/content/Context;ZZJZ)V
    .locals 8

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
    .locals 8

    .line 898
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 902
    :try_start_0
    iget-object v2, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 907
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 911
    const-string v1, "[WARNING] \u65e0\u6cd5\u627e\u5230\u6709\u6548APP Key, \u8bf7\u53c2\u8003\u6587\u6863\u914d\u7f6e"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 1008
    :goto_1
    return-void

    .line 905
    :cond_0
    :try_start_1
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 911
    :catchall_0
    move-exception v0

    .line 907
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 916
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 917
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 918
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 922
    :try_start_3
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

    if-nez v6, :cond_2

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 925
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/mobstat/CooperService;->getLastUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 926
    sget-object v4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v6, "uid_change"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Lcom/baidu/mobstat/CooperService;->setLastUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 934
    :cond_2
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
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 939
    :try_start_4
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v4, "wl2"

    iget-object v5, p0, Lcom/baidu/mobstat/DataCore;->f:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 943
    :try_start_5
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v3, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 946
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v2, p7}, Lcom/baidu/mobstat/DataCore;->b(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 948
    const-string v2, "he"

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 953
    :try_start_6
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 955
    :try_start_7
    const-string v3, "pr"

    iget-object v4, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 960
    :try_start_8
    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 962
    :try_start_9
    const-string v4, "ev"

    iget-object v5, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 968
    :try_start_a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "ex"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 974
    :try_start_b
    const-string v4, "pyd"

    sget-object v5, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 979
    :try_start_c
    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 982
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->b(Lorg/json/JSONObject;)V

    .line 984
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 986
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 989
    invoke-direct {p0, p1, v4, p2, p6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 991
    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->j:Lorg/json/JSONObject;

    .line 993
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->clearCache(Landroid/content/Context;)V

    .line 996
    iget-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->l:Z

    if-nez v0, :cond_3

    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->l:Z

    .line 999
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->updatePyd(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->loadProperty(Landroid/content/Context;)V

    .line 1003
    invoke-virtual {p0}, Lcom/baidu/mobstat/DataCore;->getTempPyd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->updatePyd(Ljava/lang/String;)V

    .line 1006
    :cond_3
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1007
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1008
    :try_start_e
    monitor-exit v1

    goto/16 :goto_1

    .line 950
    :catchall_1
    move-exception v0

    .line 1008
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 928
    :cond_4
    :try_start_f
    sget-object v4, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string v6, "uid_change"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 950
    :catch_0
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    .line 976
    :catch_1
    move-exception v0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1

    .line 970
    :catch_2
    move-exception v0

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_1

    .line 964
    :catch_3
    move-exception v0

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_1

    .line 970
    :catchall_2
    move-exception v0

    .line 1006
    :try_start_1a
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    throw v0

    :catchall_3
    move-exception v0

    .line 1007
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 957
    :catch_4
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto/16 :goto_1

    .line 1007
    :catchall_4
    move-exception v0

    .line 940
    :try_start_1f
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
.end method

.method public saveLogDataAndSendForRaven(Landroid/content/Context;)V
    .locals 2

    .line 850
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 861
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDataForDueros(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1260
    const-string v8, "k"

    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    if-nez p2, :cond_2

    .line 1264
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->clearProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1268
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    .line 1272
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1273
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1274
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1275
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1276
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1278
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 1279
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1281
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const-string v7, "2"

    if-eqz v2, :cond_c

    .line 1282
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1284
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1285
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v3, "[WARNING] setProperty failed,key or value can not null !"

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 1289
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_5

    .line 1290
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_6

    .line 1289
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v3, "[WARNING] setProperty failed,key or value can not over 256 bytes !"

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 1297
    :cond_6
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 1298
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v5, "v"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    const-string v5, "s"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x0

    if-lez v5, :cond_a

    const/4 v6, 0x0

    move-object v5, v4

    .line 1307
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_9

    .line 1308
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1310
    const-string v18, "v"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1311
    const-string v19, "s"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1312
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v9, 0x0

    move v4, v6

    .line 1321
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    const/16 v10, 0x64

    if-gt v6, v10, :cond_0

    if-eqz v9, :cond_7

    .line 1327
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/DataCore;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1329
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1321
    :cond_7
    :goto_4
    :try_start_4
    const-string v6, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11, v6, v4}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1337
    const-string v6, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v12, v6, v4}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1338
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5, v7, v4}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1339
    const-string v6, "3"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14, v6, v4}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1340
    const-string v6, "4"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13, v6, v4}, Lcom/baidu/mobstat/DataCore;->updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1342
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1344
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1345
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1346
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1347
    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v4, v5

    goto/16 :goto_1

    .line 1312
    :cond_8
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_2

    :cond_9
    move-object v6, v7

    :goto_5
    const/4 v9, 0x1

    move-object v7, v6

    move v4, v10

    goto/16 :goto_3

    .line 1306
    :cond_a
    const-string v6, "2"

    move-object v5, v4

    goto :goto_5

    :cond_b
    move-object v4, v5

    .line 1347
    goto/16 :goto_1

    .line 1352
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/DataCore;->o:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1354
    const-string v3, "0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "uidPy"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    :cond_d
    :goto_6
    const-string v3, "2"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1370
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/CooperService;->setHeaderPy(Ljava/lang/String;)V

    .line 1373
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/mobstat/DataCore;->l:Z

    if-eqz v3, :cond_0

    .line 1375
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/DataCore;->updatePyd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1356
    :cond_f
    const-string v3, "1"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "userPy"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1358
    :cond_10
    const-string v3, "2"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v5, "sessionPy"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "sessionJson"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1361
    :cond_11
    const-string v3, "3"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "eventPy"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1363
    :cond_12
    const-string v3, "4"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/DataCore;->m:Ljava/util/HashMap;

    const-string v4, "pagePy"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6

    .line 1375
    :catch_1
    move-exception v6

    goto/16 :goto_4

    :catch_2
    move-exception v6

    goto/16 :goto_4
.end method

.method public updatePropertyKey(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1

    if-gez p4, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1407
    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    :cond_2
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public updatePyd(Ljava/lang/String;)V
    .locals 1

    .line 108
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string p1, ""

    .line 111
    :cond_0
    :try_start_1
    sput-object p1, Lcom/baidu/mobstat/DataCore;->b:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
