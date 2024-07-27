.class public Lcom/baidu/mobstat/co;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/co$a;
    }
.end annotation


# static fields
.field private static final u:Lcom/baidu/mobstat/co;


# instance fields
.field private A:Ljava/lang/Object;

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private v:Lcom/baidu/mobstat/co$a;

.field private w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private x:Ljava/lang/Runnable;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/baidu/mobstat/co;

    invoke-direct {v0}, Lcom/baidu/mobstat/co;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/co;->u:Lcom/baidu/mobstat/co;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->d:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    iput-object v0, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/co;->x:Ljava/lang/Runnable;

    .line 1674
    iput v1, p0, Lcom/baidu/mobstat/co;->y:F

    .line 1675
    iput v1, p0, Lcom/baidu/mobstat/co;->z:F

    .line 1676
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "feedViewCrawlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;F)F
    .registers 2

    .line 36
    iput p1, p0, Lcom/baidu/mobstat/co;->y:F

    return p1
.end method

.method private a(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cl;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;)",
            "Lcom/baidu/mobstat/cl;"
        }
    .end annotation

    .line 1510
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1511
    :cond_0
    const/4 v7, 0x0

    .line 1583
    :cond_1
    :goto_0
    return-object v7

    .line 1514
    :cond_2
    new-instance v2, Lcom/baidu/mobstat/co$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/mobstat/co$6;-><init>(Lcom/baidu/mobstat/co;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1529
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1530
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1531
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-wide v4, v2

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cl;

    .line 1537
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v8

    .line 1538
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->l()Ljava/lang/String;

    move-result-object v13

    .line 1542
    :try_start_0
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1543
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/cn;->d()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    cmp-long v3, v14, v16

    if-ltz v3, :cond_3

    .line 1551
    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v3, v4, v14

    if-nez v3, :cond_8

    move-wide v4, v8

    move-object v3, v2

    .line 1556
    :goto_3
    sub-long/2addr v8, v4

    .line 1558
    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-gez v7, :cond_4

    .line 1559
    const-wide/16 v8, 0x0

    .line 1562
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1563
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :goto_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :goto_5
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->h()I

    move-result v2

    add-int/2addr v2, v6

    move v6, v2

    move-object v7, v3

    .line 1575
    goto :goto_1

    .line 1565
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "|"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1571
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "|"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1577
    :cond_7
    if-eqz v7, :cond_1

    .line 1578
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/baidu/mobstat/cl;->b(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v7, v6}, Lcom/baidu/mobstat/cl;->a(I)V

    goto/16 :goto_0

    :cond_8
    move-object v3, v7

    .line 1546
    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method public static a()Lcom/baidu/mobstat/co;
    .registers 1

    .line 85
    sget-object v0, Lcom/baidu/mobstat/co;->u:Lcom/baidu/mobstat/co;

    return-object v0
.end method

.method private a(Lcom/baidu/mobstat/cl;)Ljava/lang/String;
    .registers 9

    .line 1440
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->a()Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v2

    .line 1443
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v3

    .line 1444
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->e()Ljava/lang/String;

    move-result-object v4

    .line 1445
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v5

    .line 1446
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->g()Z

    move-result v6

    .line 1449
    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1453
    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 753
    new-instance v1, Lcom/baidu/mobstat/co$3;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/co$3;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 760
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 761
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 762
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    return-object v1
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;"
        }
    .end annotation

    .line 902
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 905
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 909
    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 914
    if-eqz v2, :cond_0

    if-ne v2, p2, :cond_0

    .line 915
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 917
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 918
    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 923
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;)Ljava/util/List;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/app/Activity;J)V
    .registers 14

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->b:Ljava/lang/ref/WeakReference;

    .line 172
    iput-wide p2, p0, Lcom/baidu/mobstat/co;->g:J

    .line 175
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lcom/baidu/mobstat/co;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/de;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    .line 181
    iget-object v2, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mobstat/co;->j:Ljava/lang/String;

    iget-wide v4, p0, Lcom/baidu/mobstat/co;->i:J

    iget-wide v6, p0, Lcom/baidu/mobstat/co;->g:J

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/Activity;)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    .line 192
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;JJLjava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 769
    if-nez p6, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 775
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 776
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 781
    if-eqz v2, :cond_3

    .line 785
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 786
    if-eqz v2, :cond_3

    move-object v5, v2

    .line 794
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 795
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/co;->m:Ljava/lang/String;

    .line 800
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 804
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    .line 808
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v7

    .line 809
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v6

    .line 811
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/baidu/mobstat/de;->b(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 812
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v10

    .line 813
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v9

    .line 816
    if-le v10, v7, :cond_5

    move v12, v10

    .line 819
    :goto_2
    if-le v9, v6, :cond_4

    move v8, v9

    .line 823
    :goto_3
    if-eqz v12, :cond_0

    if-eqz v8, :cond_0

    .line 828
    new-instance v2, Lcom/baidu/mobstat/cj;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    sub-long v6, p4, p2

    int-to-float v10, v10

    int-to-float v11, v9

    int-to-float v12, v12

    int-to-float v13, v8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/baidu/mobstat/co;->n:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/co;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    move-wide/from16 v8, p2

    invoke-direct/range {v2 .. v16}, Lcom/baidu/mobstat/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFFLjava/lang/String;ZLjava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    goto/16 :goto_0

    :cond_4
    move v8, v6

    goto :goto_3

    :cond_5
    move v12, v7

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    move-object v5, v2

    goto/16 :goto_1
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 712
    if-nez p2, :cond_1

    .line 749
    :cond_0
    return-void

    .line 716
    :cond_1
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    invoke-static {p2}, Lcom/baidu/mobstat/de;->n(Landroid/view/View;)Z

    move-result v0

    .line 721
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_2
    if-eqz v0, :cond_3

    .line 726
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_3
    if-nez v0, :cond_4

    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_4

    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    .line 731
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 732
    if-eqz v0, :cond_5

    .line 733
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_5
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 738
    check-cast p2, Landroid/view/ViewGroup;

    .line 740
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 742
    :try_start_0
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .registers 4

    .line 1680
    new-instance v0, Lcom/baidu/mobstat/co$7;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/co$7;-><init>(Lcom/baidu/mobstat/co;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1693
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .registers 4

    .line 838
    if-nez p2, :cond_0

    .line 847
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    invoke-interface {v0, p2}, Lcom/baidu/mobstat/co$a;->a(Lcom/baidu/mobstat/cj;)V

    .line 846
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;J)V
    .registers 10

    .line 352
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lcom/baidu/mobstat/de;->o(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 356
    if-nez v2, :cond_1

    .line 358
    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->c()V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-direct {p0, v2}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->c()V

    goto :goto_0

    .line 373
    :cond_2
    iput-wide p3, p0, Lcom/baidu/mobstat/co;->i:J

    .line 374
    invoke-static {p2}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 377
    invoke-static {v1}, Lcom/baidu/mobstat/de;->t(Landroid/view/View;)Ljava/util/Map;

    move-result-object v3

    .line 379
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 380
    const-string v0, "title"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    const-string v0, "title"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/co;->m:Ljava/lang/String;

    .line 385
    invoke-static {v2}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->n:Z

    .line 387
    invoke-virtual {p0, p2, v1, v2}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/co;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;J)V
    .registers 28

    .line 1138
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/cn;->c()F

    move-result v2

    .line 1144
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    const-string v3, ""

    .line 1148
    const-string v7, ""

    .line 1149
    invoke-static/range {p2 .. p2}, Lcom/baidu/mobstat/de;->t(Landroid/view/View;)Ljava/util/Map;

    move-result-object v4

    .line 1150
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1152
    const-string v2, "title"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1153
    const-string v2, "title"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 1156
    :cond_2
    const-string v2, "content"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1157
    const-string v2, "content"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v3

    move-object v7, v2

    .line 1161
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/baidu/mobstat/de;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 1162
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 1166
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v10

    .line 1167
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1168
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1170
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1173
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V

    .line 1195
    new-instance v2, Lcom/baidu/mobstat/cl;

    const/4 v11, 0x1

    sub-long v12, p4, p4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    move-wide/from16 v12, p4

    move-wide/from16 v14, p4

    move-wide/from16 v16, p4

    invoke-direct/range {v2 .. v20}, Lcom/baidu/mobstat/cl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJJJLjava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1197
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cl;)V

    goto/16 :goto_0

    :cond_3
    move-object v6, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    .line 509
    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 561
    if-nez p1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/baidu/mobstat/co;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    if-eqz p2, :cond_0

    .line 582
    if-eqz p3, :cond_0

    .line 587
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 588
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/app/Activity;J)V
    .registers 6

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/List;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->a(Ljava/lang/ref/WeakReference;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Ljava/util/HashMap;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Ljava/util/List;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Ljava/util/List;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/co;->a(Ljava/util/List;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;J)V"
        }
    .end annotation

    .line 1588
    if-nez p1, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1593
    if-eqz v0, :cond_0

    .line 1597
    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/co;->d(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;J)V"
        }
    .end annotation

    .line 876
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 896
    :cond_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 881
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 884
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 885
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ck;

    .line 891
    invoke-virtual {v0}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 892
    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/ck;->a(J)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/ck;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/ck;",
            ")V"
        }
    .end annotation

    .line 928
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->a()Ljava/lang/String;

    move-result-object v5

    .line 929
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v6

    .line 930
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v8

    .line 931
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->d()Z

    move-result v10

    .line 933
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 993
    :goto_0
    return-void

    .line 937
    :cond_0
    const/4 v3, 0x0

    .line 940
    const/4 v4, 0x0

    .line 941
    invoke-direct/range {p0 .. p2}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 942
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 943
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 944
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 945
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 946
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 947
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 948
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v4, v2

    .line 953
    :cond_1
    if-eqz v4, :cond_7

    .line 954
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ck;

    .line 955
    invoke-virtual {v2}, Lcom/baidu/mobstat/ck;->a()Ljava/lang/String;

    move-result-object v12

    .line 956
    invoke-virtual {v2}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v14

    .line 957
    invoke-virtual {v2}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v16

    .line 958
    invoke-virtual {v2}, Lcom/baidu/mobstat/ck;->d()Z

    move-result v13

    .line 960
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 964
    if-ne v10, v13, :cond_2

    .line 969
    cmp-long v12, v16, v14

    if-gez v12, :cond_3

    cmp-long v12, v14, v6

    if-nez v12, :cond_2

    .line 979
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    .line 980
    if-nez v4, :cond_6

    .line 981
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 983
    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    if-nez v3, :cond_4

    .line 986
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 988
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 990
    :cond_5
    invoke-virtual {v2, v6, v7}, Lcom/baidu/mobstat/ck;->a(J)V

    .line 991
    invoke-virtual {v2, v8, v9}, Lcom/baidu/mobstat/ck;->b(J)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v4

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cl;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/cl;",
            ")V"
        }
    .end annotation

    .line 1231
    if-nez p2, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v6

    .line 1236
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v8

    .line 1237
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v2

    .line 1238
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1245
    const/4 v4, 0x0

    .line 1248
    invoke-direct/range {p0 .. p2}, Lcom/baidu/mobstat/co;->b(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1252
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 1254
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1255
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1256
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1260
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v4, v3

    .line 1265
    :goto_1
    if-eqz v5, :cond_5

    .line 1266
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    move-object v3, v2

    .line 1267
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1268
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1269
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1271
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_2

    .line 1275
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cl;

    .line 1276
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v12

    .line 1277
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v14

    .line 1279
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/cl;Lcom/baidu/mobstat/cl;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1284
    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v12

    cmp-long v12, v14, v12

    if-nez v12, :cond_3

    :cond_4
    :goto_3
    move-object v3, v2

    .line 1291
    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 1294
    :cond_6
    if-nez v3, :cond_9

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/cl;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1301
    if-nez v5, :cond_7

    .line 1302
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    if-nez v4, :cond_a

    .line 1310
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1312
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1314
    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1316
    if-nez v2, :cond_8

    .line 1317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1321
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1325
    :cond_9
    invoke-virtual {v3, v8, v9}, Lcom/baidu/mobstat/cl;->a(J)V

    .line 1326
    invoke-virtual {v3, v6, v7}, Lcom/baidu/mobstat/cl;->b(J)V

    .line 1328
    invoke-virtual {v3}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v6

    .line 1329
    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object v2, v4

    goto :goto_4

    :cond_b
    move-object v2, v3

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    move-object v5, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/util/HashMap;Ljava/util/HashMap;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;J)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1606
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1607
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1608
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1611
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1612
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1616
    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1620
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ck;

    .line 1621
    invoke-virtual {v0}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1622
    invoke-virtual {v0, p3, p4}, Lcom/baidu/mobstat/ck;->a(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1626
    :catch_0
    move-exception v0

    .line 1632
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1633
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    .line 1637
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1638
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1642
    :goto_2
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1646
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1647
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1648
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1651
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1655
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cl;

    .line 1657
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 1658
    invoke-virtual {v0, p3, p4}, Lcom/baidu/mobstat/cl;->a(J)V

    .line 1660
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v8

    .line 1661
    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1667
    :catch_1
    move-exception v0

    .line 1670
    :cond_6
    return-void

    .line 1613
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 1614
    goto/16 :goto_0

    .line 1639
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 1640
    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 526
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 532
    const/4 v2, 0x0

    .line 534
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 539
    :goto_2
    if-nez v2, :cond_3

    .line 540
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 544
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 545
    if-nez v0, :cond_4

    .line 546
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 550
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 556
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/util/List;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ")V"
        }
    .end annotation

    .line 484
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 488
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 489
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_2
    if-nez v0, :cond_2

    .line 488
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 493
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 501
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 502
    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_3

    .line 505
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private a(JJ)Z
    .registers 12

    .line 650
    const/4 v0, 0x0

    .line 652
    sub-long v2, p3, p1

    .line 653
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-wide/16 v4, 0x32

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 657
    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-ne v1, v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_SINGLE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-ne v1, v2, :cond_2

    .line 138
    invoke-static {p1}, Lcom/baidu/mobstat/de;->v(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/baidu/mobstat/cl;Lcom/baidu/mobstat/cl;)Z
    .registers 18

    .line 1335
    const/4 v0, 0x0

    .line 1337
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->a()Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v3

    .line 1340
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v4

    .line 1341
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->e()Ljava/lang/String;

    move-result-object v5

    .line 1342
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v6

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cl;->g()Z

    move-result v7

    .line 1345
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->a()Ljava/lang/String;

    move-result-object v8

    .line 1346
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v9

    .line 1347
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v10

    .line 1348
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v11

    .line 1349
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->e()Ljava/lang/String;

    move-result-object v12

    .line 1350
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v13

    .line 1351
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mobstat/cl;->g()Z

    move-result v14

    .line 1353
    invoke-direct {p0, v8, v1}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return v0

    .line 1357
    :cond_1
    invoke-direct {p0, v9, v2}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    invoke-direct {p0, v10, v3}, Lcom/baidu/mobstat/co;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    invoke-direct {p0, v11, v4}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    invoke-direct {p0, v12, v5}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    invoke-direct {p0, v13, v6}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    if-ne v14, v7, :cond_0

    .line 1381
    const/4 v0, 0x1

    .line 1382
    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/baidu/mobstat/co;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1386
    if-ne p1, p2, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v0

    .line 1390
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/Activity;)Z
    .registers 15

    .line 630
    const/4 v0, 0x0

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    instance-of v1, p8, Lcom/baidu/mobstat/IIgnoreAutoTrace;

    if-nez v1, :cond_0

    .line 642
    sub-long v2, p6, p4

    .line 643
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 644
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/view/View;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 597
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 620
    :goto_0
    return v0

    .line 601
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 602
    :goto_1
    if-ge v2, v3, :cond_4

    .line 603
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_2
    if-nez v0, :cond_3

    .line 602
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 606
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 614
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 615
    const/4 v0, 0x1

    .line 616
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 5

    .line 1398
    const/4 v0, 0x0

    .line 1400
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1401
    const/4 v0, 0x1

    .line 1406
    :cond_0
    :goto_0
    return v0

    .line 1402
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1403
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;F)F
    .registers 2

    .line 36
    iput p1, p0, Lcom/baidu/mobstat/co;->z:F

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->d()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;"
        }
    .end annotation

    .line 1204
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1208
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1212
    if-eqz v1, :cond_0

    .line 1216
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1217
    if-eqz v2, :cond_0

    if-ne v2, p2, :cond_0

    .line 1218
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1221
    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1226
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;J)V
    .registers 12

    .line 218
    iput-wide p2, p0, Lcom/baidu/mobstat/co;->h:J

    .line 221
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iput-object v0, p0, Lcom/baidu/mobstat/co;->j:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/co;->i:J

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    if-eqz v0, :cond_1

    .line 232
    iget-wide v2, p0, Lcom/baidu/mobstat/co;->g:J

    iget-object v6, p0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;JJLjava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->q:Z

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Ljava/util/HashMap;J)V

    .line 242
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->b(Ljava/util/HashMap;)V

    .line 243
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->c(Ljava/util/HashMap;)V

    .line 246
    iget-object v0, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->e(Ljava/util/HashMap;)V

    .line 247
    iget-object v0, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->f(Ljava/util/HashMap;)V

    .line 250
    if-eqz p1, :cond_2

    .line 251
    new-instance v0, Lcom/baidu/mobstat/co$9;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$9;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 261
    :cond_2
    return-void
.end method

.method private b(Landroid/view/View;Landroid/app/Activity;J)V
    .registers 14

    .line 854
    if-nez p1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {p2}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-static {p1}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v8

    .line 869
    new-instance v0, Lcom/baidu/mobstat/ck;

    move-wide v2, p3

    move-wide v4, p3

    move-wide v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mobstat/ck;-><init>(Ljava/lang/String;JJJZ)V

    .line 871
    iget-object v1, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/ck;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->b(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/app/Activity;J)V
    .registers 6

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/co;->b(Landroid/view/View;Landroid/app/Activity;J)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;)V"
        }
    .end annotation

    .line 996
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->d(Ljava/util/HashMap;)V

    .line 997
    return-void
.end method

.method private b(Ljava/util/HashMap;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;J)V"
        }
    .end annotation

    .line 1099
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    :cond_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1105
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1110
    if-eqz v0, :cond_2

    .line 1114
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1115
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1119
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cl;

    .line 1125
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 1126
    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/cl;->a(J)V

    .line 1128
    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v6

    .line 1129
    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/mobstat/co;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/co;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c()V
    .registers 3

    .line 412
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/co;->i:J

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/co;->m:Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->n:Z

    .line 418
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/co;->o:Ljava/lang/String;

    .line 419
    return-void
.end method

.method private c(Landroid/app/Activity;J)V
    .registers 22

    .line 661
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 662
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 663
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 666
    invoke-direct/range {v4 .. v9}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 668
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mobstat/co;->p:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mobstat/co;->q:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/mobstat/co;->g:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/baidu/mobstat/co;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    .line 671
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    .line 674
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/co;->q:Z

    .line 677
    :cond_0
    if-eqz p1, :cond_1

    .line 678
    new-instance v11, Lcom/baidu/mobstat/co$2;

    move-object/from16 v12, p0

    move-object v13, v9

    move-wide/from16 v14, p2

    move-object/from16 v16, v8

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/baidu/mobstat/co$2;-><init>(Lcom/baidu/mobstat/co;Ljava/util/ArrayList;JLjava/util/ArrayList;Landroid/app/Activity;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 708
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->c(Landroid/app/Activity;J)V

    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;)V"
        }
    .end annotation

    .line 1002
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1003
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1005
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1007
    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1011
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1012
    return-void
.end method

.method private d()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/baidu/mobstat/co;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/baidu/mobstat/co$14;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$14;-><init>(Lcom/baidu/mobstat/co;)V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/co;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/co;)Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    return-object v0
.end method

.method private d(Landroid/app/Activity;J)V
    .registers 14

    const/4 v8, 0x0

    .line 1053
    iget-object v0, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/co;->b(Ljava/util/HashMap;J)V

    .line 1054
    iget-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1095
    :cond_0
    return-void

    :cond_1
    move v7, v8

    .line 1057
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_1
    if-nez v0, :cond_3

    .line 1057
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 1069
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1070
    if-eqz v1, :cond_2

    .line 1074
    invoke-static {v1}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, v1

    .line 1086
    check-cast v6, Landroid/view/ViewGroup;

    move v9, v8

    .line 1087
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1088
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1090
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    .line 1091
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;J)V

    .line 1087
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2
.end method

.method static synthetic d(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->d(Landroid/app/Activity;J)V

    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;)V"
        }
    .end annotation

    .line 1015
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    .line 1018
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1019
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1021
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1022
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1027
    :cond_1
    new-instance v0, Lcom/baidu/mobstat/co$4;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$4;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1043
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    if-eqz v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/co$a;->a(Ljava/util/ArrayList;)V

    .line 1047
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1048
    return-void
.end method

.method static synthetic e(Lcom/baidu/mobstat/co;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->c()V

    return-void
.end method

.method private e(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1411
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->g(Ljava/util/HashMap;)V

    .line 1412
    return-void
.end method

.method private f(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1417
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1418
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1420
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1422
    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1427
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1429
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1430
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1433
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1436
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1437
    return-void
.end method

.method static synthetic f(Lcom/baidu/mobstat/co;)Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/baidu/mobstat/co;)Ljava/util/HashMap;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    return-object v0
.end method

.method private g(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1462
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1464
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1466
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->h(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1467
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1470
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/co$5;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$5;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1485
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/co$a;->b(Ljava/util/ArrayList;)V

    .line 1489
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1490
    return-void
.end method

.method static synthetic h(Lcom/baidu/mobstat/co;)Landroid/os/Handler;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private h(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cl;",
            ">;"
        }
    .end annotation

    .line 1493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1496
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1500
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->a(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cl;

    move-result-object v0

    .line 1501
    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1506
    :cond_1
    return-object v1
.end method

.method static synthetic i(Lcom/baidu/mobstat/co;)Ljava/lang/Object;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;
    .registers 11

    .line 391
    const-string v3, ""

    .line 392
    invoke-static {p2}, Lcom/baidu/mobstat/de;->t(Landroid/view/View;)Ljava/util/Map;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 394
    const-string v0, "title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const-string v0, "title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 397
    :cond_0
    invoke-static {p2}, Lcom/baidu/mobstat/de;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {p3}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v6

    .line 400
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v2

    .line 403
    invoke-static {p3}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-static {p2, v4}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 408
    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1696
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1697
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1698
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    :goto_0
    return-object v6

    .line 1703
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1704
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1709
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 1710
    iget-object v2, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    monitor-enter v2

    .line 1711
    :try_start_0
    check-cast p2, Landroid/webkit/WebView;

    .line 1714
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    :goto_1
    :try_start_2
    iget v0, p0, Lcom/baidu/mobstat/co;->y:F

    iget v4, p0, Lcom/baidu/mobstat/co;->z:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 1725
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v1

    .line 1756
    :goto_2
    if-nez v2, :cond_2

    move v2, v5

    .line 1759
    :cond_2
    if-nez v4, :cond_9

    move v0, v3

    .line 1763
    :goto_3
    if-lez v2, :cond_8

    .line 1764
    :goto_4
    if-lez v0, :cond_3

    move v1, v0

    .line 1766
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1725
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1726
    :cond_4
    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    .line 1727
    check-cast p2, Landroid/widget/ScrollView;

    .line 1728
    invoke-virtual {p2}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 1729
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1730
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_5
    move v4, v0

    .line 1732
    goto :goto_2

    :cond_5
    instance-of v0, p2, Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 1733
    check-cast p2, Landroid/widget/ListView;

    .line 1734
    invoke-static {p2}, Lcom/baidu/mobstat/de;->a(Landroid/widget/ListView;)I

    move-result v4

    move v2, v1

    .line 1735
    goto :goto_2

    :cond_6
    instance-of v0, p2, Landroid/widget/GridView;

    if-eqz v0, :cond_7

    .line 1736
    check-cast p2, Landroid/widget/GridView;

    .line 1740
    invoke-static {p2}, Lcom/baidu/mobstat/de;->a(Landroid/widget/GridView;)I

    move-result v4

    move v2, v1

    .line 1743
    goto :goto_2

    :cond_7
    invoke-static {p2}, Lcom/baidu/mobstat/de;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1747
    :try_start_4
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 1748
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    .line 1749
    :try_start_5
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    move v2, v0

    .line 1752
    goto :goto_2

    .line 1750
    :catch_0
    move-exception v0

    move v0, v1

    :goto_6
    move v4, v1

    move v2, v0

    goto :goto_2

    :cond_8
    move v2, v1

    .line 1763
    goto :goto_4

    :cond_9
    move v0, v4

    .line 1720
    goto :goto_3

    :cond_a
    move v4, v1

    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    move v2, v1

    goto :goto_5

    .line 1750
    :catch_1
    move-exception v2

    goto :goto_6

    .line 1720
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 7

    .line 146
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 153
    iget-object v1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobstat/co$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/baidu/mobstat/co$1;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)V
    .registers 4

    .line 315
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/co$12;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/co$12;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/app/Activity;)V
    .registers 11

    .line 287
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 292
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 296
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/co$11;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/co$11;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/View;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/co$13;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/co$13;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 452
    if-nez p1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 458
    new-instance v2, Lcom/baidu/mobstat/co$15;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/baidu/mobstat/co$15;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    .line 470
    iget-object v0, p0, Lcom/baidu/mobstat/co;->x:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/co;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    :cond_1
    iput-object v2, p0, Lcom/baidu/mobstat/co;->x:Ljava/lang/Runnable;

    .line 475
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .registers 7

    .line 195
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 202
    iget-object v1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobstat/co$8;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/baidu/mobstat/co$8;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()Z
    .registers 4

    .line 124
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_NONE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-ne v1, v2, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method

.method public c(Landroid/app/Activity;)V
    .registers 7

    .line 265
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 272
    iget-object v1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobstat/co$10;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/baidu/mobstat/co$10;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
