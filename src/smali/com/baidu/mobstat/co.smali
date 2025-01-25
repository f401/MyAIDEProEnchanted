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
            "Ljava/lang/ref/WeakReference<",
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
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
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
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/co;->y:F

    .line 1675
    iput v0, p0, Lcom/baidu/mobstat/co;->z:F

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

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;F)F
    .registers 2

    .line 36
    iput p1, p0, Lcom/baidu/mobstat/co;->y:F

    return p1
.end method

.method private a(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cl;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;)",
            "Lcom/baidu/mobstat/cl;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_c9

    .line 1510
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v3, p0

    goto/16 :goto_cb

    .line 1514
    :cond_f
    new-instance v2, Lcom/baidu/mobstat/co$6;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lcom/baidu/mobstat/co$6;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    move-object v8, v1

    move-wide v9, v6

    const/4 v1, 0x0

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/baidu/mobstat/cl;

    .line 1537
    invoke-virtual {v11}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v12

    .line 1538
    invoke-virtual {v11}, Lcom/baidu/mobstat/cl;->l()Ljava/lang/String;

    move-result-object v14

    .line 1542
    :try_start_42
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1543
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->d()J

    move-result-wide v17
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_57

    cmp-long v0, v15, v17

    if-gez v0, :cond_58

    goto :goto_2d

    :catch_57
    move-exception v0

    :cond_58
    cmp-long v0, v9, v6

    if-nez v0, :cond_5e

    move-object v8, v11

    move-wide v9, v12

    :cond_5e
    sub-long/2addr v12, v9

    cmp-long v0, v12, v6

    if-gez v0, :cond_64

    move-wide v12, v6

    .line 1562
    :cond_64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v15, "|"

    if-eqz v0, :cond_74

    .line 1563
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 1565
    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :goto_83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 1571
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :goto_ae
    invoke-virtual {v11}, Lcom/baidu/mobstat/cl;->h()I

    move-result v0

    add-int/2addr v1, v0

    goto/16 :goto_2d

    :cond_b5
    if-eqz v8, :cond_c8

    .line 1578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/baidu/mobstat/cl;->b(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v8, v1}, Lcom/baidu/mobstat/cl;->a(I)V

    :cond_c8
    return-object v8

    .line 0
    :cond_c9
    move-object/from16 v3, p0

    .line 1580
    :goto_cb
    return-object v1
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

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 753
    new-instance p1, Lcom/baidu/mobstat/co$3;

    invoke-direct {p1, p0}, Lcom/baidu/mobstat/co$3;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 760
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 761
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 762
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_37
    return-object p1
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;"
        }
    .end annotation

    .line 904
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 905
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 906
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1d

    goto :goto_8

    .line 913
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    if-ne v2, p2, :cond_8

    .line 915
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 917
    new-instance p2, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 918
    invoke-virtual {p2, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_37
    const/4 p2, 0x0

    :goto_38
    return-object p2
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;)Ljava/util/List;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    return-object p0
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

    move-result-object v2

    .line 177
    iget-object p2, p0, Lcom/baidu/mobstat/co;->j:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/baidu/mobstat/de;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 178
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/baidu/mobstat/co;->p:Z

    .line 181
    iget-object v3, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/co;->j:Ljava/lang/String;

    iget-wide v5, p0, Lcom/baidu/mobstat/co;->i:J

    iget-wide v7, p0, Lcom/baidu/mobstat/co;->g:J

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 184
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/co;->p:Z

    :cond_31
    return-void
.end method

.method private a(Landroid/app/Activity;JJLjava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    if-nez v2, :cond_9

    return-void

    .line 773
    :cond_9
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1b

    .line 775
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    .line 776
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_1b
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2e

    goto :goto_1f

    .line 785
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_38

    goto :goto_1f

    :cond_37
    const/4 v3, 0x0

    .line 794
    :cond_38
    iget-object v2, v0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 795
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    return-void

    .line 799
    :cond_41
    iget-object v2, v0, Lcom/baidu/mobstat/co;->m:Ljava/lang/String;

    .line 800
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    return-void

    .line 804
    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 805
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    .line 807
    invoke-virtual {v0, v1, v3}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    .line 808
    iget-object v7, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v7, v9}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v7

    .line 809
    iget-object v9, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v9, v4}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v4

    .line 811
    invoke-static {v1, v3}, Lcom/baidu/mobstat/de;->b(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 812
    iget-object v3, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v3, v8}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    .line 813
    iget-object v8, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v8, v1}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v1

    if-le v3, v7, :cond_a3

    move v7, v3

    :cond_a3
    if-le v1, v4, :cond_a6

    move v4, v1

    :cond_a6
    if-eqz v7, :cond_d1

    if-nez v4, :cond_ab

    goto :goto_d1

    .line 830
    :cond_ab
    new-instance v15, Lcom/baidu/mobstat/cj;

    iget-object v8, v0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    sub-long v9, p4, p2

    int-to-float v12, v3

    int-to-float v13, v1

    int-to-float v14, v7

    int-to-float v1, v4

    iget-boolean v3, v0, Lcom/baidu/mobstat/co;->n:Z

    iget-object v11, v0, Lcom/baidu/mobstat/co;->o:Ljava/lang/String;

    move-object v4, v15

    move-object v7, v8

    move-wide v8, v9

    move-object/from16 v18, v11

    move-wide/from16 v10, p2

    move-object/from16 v19, v15

    move v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/baidu/mobstat/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFFLjava/lang/String;ZLjava/lang/String;)V

    .line 834
    iget-object v1, v0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    :cond_d1
    :goto_d1
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 716
    :cond_3
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 720
    :cond_a
    invoke-static {p2}, Lcom/baidu/mobstat/de;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 721
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {p2}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 722
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-eqz v0, :cond_24

    .line 726
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    if-nez v0, :cond_2e

    .line 730
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_2e

    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_41

    .line 731
    :cond_2e
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    if-eqz v0, :cond_41

    .line 733
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_41
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_62

    .line 738
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 740
    :goto_48
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 742
    :try_start_4e
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception v1

    .line 744
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_62
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .registers 4

    .line 1680
    new-instance v0, Lcom/baidu/mobstat/co$7;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/co$7;-><init>(Lcom/baidu/mobstat/co;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    if-eqz v0, :cond_a

    .line 843
    invoke-interface {v0, p2}, Lcom/baidu/mobstat/co$a;->a(Lcom/baidu/mobstat/cj;)V

    .line 846
    :cond_a
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;J)V
    .registers 7

    .line 352
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    .line 353
    invoke-static {p1}, Lcom/baidu/mobstat/de;->o(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    .line 358
    iget-boolean p1, p0, Lcom/baidu/mobstat/co;->p:Z

    if-nez p1, :cond_11

    .line 359
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->c()V

    :cond_11
    return-void

    .line 364
    :cond_12
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 366
    iget-boolean p1, p0, Lcom/baidu/mobstat/co;->p:Z

    if-nez p1, :cond_1f

    .line 367
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->c()V

    :cond_1f
    return-void

    .line 373
    :cond_20
    iput-wide p3, p0, Lcom/baidu/mobstat/co;->i:J

    .line 374
    invoke-static {p2}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    .line 376
    const-string p3, ""

    iput-object p3, p0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 377
    invoke-static {p1}, Lcom/baidu/mobstat/de;->t(Landroid/view/View;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_4e

    .line 379
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p4

    if-lez p4, :cond_4e

    .line 380
    const-string p4, "title"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 382
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 384
    :cond_4e
    iget-object p3, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/mobstat/co;->m:Ljava/lang/String;

    .line 385
    invoke-static {v0}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/baidu/mobstat/co;->n:Z

    .line 387
    invoke-virtual {p0, p2, p1, v0}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/co;->o:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;J)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_a3

    if-nez v2, :cond_c

    goto/16 :goto_a3

    .line 1142
    :cond_c
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/cn;->c()F

    move-result v3

    .line 1144
    invoke-static {v2, v3}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;F)Z

    move-result v3

    if-nez v3, :cond_1b

    return-void

    .line 1149
    :cond_1b
    invoke-static/range {p2 .. p2}, Lcom/baidu/mobstat/de;->t(Landroid/view/View;)Ljava/util/Map;

    move-result-object v3

    .line 1150
    const-string v4, ""

    if-eqz v3, :cond_56

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_56

    .line 1152
    const-string v5, "title"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 1153
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3f

    :cond_3e
    move-object v5, v4

    .line 1156
    :goto_3f
    const-string v6, "content"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 1157
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    :cond_54
    move-object v10, v5

    goto :goto_57

    :cond_56
    move-object v10, v4

    .line 1161
    :goto_57
    invoke-static/range {p2 .. p2}, Lcom/baidu/mobstat/de;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 1162
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    .line 1166
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v14

    .line 1167
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1168
    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1170
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 1171
    invoke-static {v2, v3}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1174
    nop

    .line 1177
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v24, v2

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1195
    new-instance v2, Lcom/baidu/mobstat/cl;

    move-object v6, v2

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object v11, v4

    move-wide/from16 v16, p4

    move-wide/from16 v18, p4

    move-wide/from16 v20, p4

    invoke-direct/range {v6 .. v24}, Lcom/baidu/mobstat/cl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJJJLjava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1197
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    .line 1198
    iget-object v3, v0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {v0, v3, v1, v2}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cl;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 513
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 514
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_16

    :cond_10
    if-nez p2, :cond_13

    return-void

    .line 522
    :cond_13
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 565
    :cond_3
    invoke-direct {p0, p3, p1}, Lcom/baidu/mobstat/co;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 569
    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 573
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 574
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_31

    :cond_1e
    if-nez p2, :cond_21

    return-void

    :cond_21
    if-nez p3, :cond_24

    return-void

    .line 587
    :cond_24
    :try_start_24
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 588
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception p1

    :cond_31
    :goto_31
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/app/Activity;J)V
    .registers 5

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1592
    :cond_3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_c

    return-void

    .line 1597
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->d(Landroid/app/Activity;J)V

    return-void
.end method

.method private a(Ljava/util/HashMap;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;J)V"
        }
    .end annotation

    if-eqz p1, :cond_4c

    .line 876
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4c

    .line 880
    :cond_9
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 881
    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 882
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 884
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 885
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_11

    .line 889
    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/ck;

    .line 891
    invoke-virtual {v1}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_30

    .line 892
    invoke-virtual {v1, p2, p3}, Lcom/baidu/mobstat/ck;->a(J)V

    goto :goto_30

    :cond_4c
    :goto_4c
    return-void
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/ck;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/ck;",
            ")V"
        }
    .end annotation

    .line 928
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->a()Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v1

    .line 930
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v3

    .line 931
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/ck;->d()Z

    move-result v5

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    return-void

    .line 941
    :cond_17
    invoke-direct/range {p0 .. p2}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 942
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    if-lez v8, :cond_44

    .line 943
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 944
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 945
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 946
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 947
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 948
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    goto :goto_46

    :cond_44
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_46
    if-eqz v6, :cond_7d

    .line 954
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mobstat/ck;

    .line 955
    invoke-virtual {v10}, Lcom/baidu/mobstat/ck;->a()Ljava/lang/String;

    move-result-object v11

    .line 956
    invoke-virtual {v10}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v12

    .line 957
    invoke-virtual {v10}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v14

    .line 958
    invoke-virtual {v10}, Lcom/baidu/mobstat/ck;->d()Z

    move-result v7

    .line 960
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6f

    :goto_6e
    goto :goto_4c

    :cond_6f
    if-eq v5, v7, :cond_72

    goto :goto_6e

    :cond_72
    cmp-long v7, v14, v12

    if-gez v7, :cond_7b

    cmp-long v7, v12, v1

    if-eqz v7, :cond_7b

    goto :goto_6e

    :cond_7b
    move-object v7, v10

    goto :goto_7e

    :cond_7d
    const/4 v7, 0x0

    :goto_7e
    if-nez v7, :cond_9b

    if-nez v6, :cond_87

    .line 981
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 983
    :cond_87
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_95

    .line 986
    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 988
    :cond_95
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    .line 990
    :cond_9b
    invoke-virtual {v7, v1, v2}, Lcom/baidu/mobstat/ck;->a(J)V

    .line 991
    invoke-virtual {v7, v3, v4}, Lcom/baidu/mobstat/ck;->b(J)V

    :goto_a1
    return-void
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cl;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/cl;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v1, :cond_9

    return-void

    .line 1235
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v3

    .line 1236
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v5

    .line 1237
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v7

    .line 1238
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v8

    .line 1241
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_105

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto/16 :goto_105

    .line 1250
    :cond_27
    invoke-direct/range {p0 .. p2}, Lcom/baidu/mobstat/co;->b(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_55

    .line 1252
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_55

    .line 1254
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 1255
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1256
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 1258
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1259
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 1260
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    goto :goto_57

    :cond_55
    move-object v7, v8

    move-object v9, v7

    :goto_57
    if-eqz v7, :cond_aa

    .line 1266
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1267
    :cond_61
    :goto_61
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 1268
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1269
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_61

    .line 1271
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_7c

    goto :goto_61

    .line 1275
    :cond_7c
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_80
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/mobstat/cl;

    .line 1276
    invoke-virtual {v12}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v13

    .line 1277
    invoke-virtual {v12}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v15

    .line 1279
    invoke-direct {v0, v12, v2}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/cl;Lcom/baidu/mobstat/cl;)Z

    move-result v17

    if-nez v17, :cond_9b

    goto :goto_80

    :cond_9b
    cmp-long v17, v13, v15

    if-gez v17, :cond_a8

    .line 1284
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v13

    cmp-long v17, v15, v13

    if-eqz v17, :cond_a8

    goto :goto_80

    :cond_a8
    move-object v8, v12

    goto :goto_61

    :cond_aa
    if-nez v8, :cond_ee

    .line 1295
    invoke-direct {v0, v2}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/cl;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b7

    return-void

    :cond_b7
    if-nez v7, :cond_d6

    .line 1302
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1304
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v9, :cond_d0

    .line 1310
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1312
    :cond_d0
    move-object/from16 v1, p1

    invoke-virtual {v1, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_105

    .line 1314
    :cond_d6
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_ea

    .line 1317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_105

    .line 1321
    :cond_ea
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_105

    .line 1325
    :cond_ee
    invoke-virtual {v8, v5, v6}, Lcom/baidu/mobstat/cl;->a(J)V

    .line 1326
    invoke-virtual {v8, v3, v4}, Lcom/baidu/mobstat/cl;->b(J)V

    .line 1328
    invoke-virtual {v8}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v3

    .line 1329
    nop

    .line 1330
    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V

    :cond_105
    :goto_105
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/util/HashMap;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;J)V"
        }
    .end annotation

    .line 1606
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1607
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1608
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_47

    if-eqz v1, :cond_48

    .line 1611
    :try_start_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1612
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c
    .catchall {:try_start_f .. :try_end_1b} :catchall_47

    goto :goto_1e

    :catch_1c
    move-exception v1

    move-object v1, v0

    :goto_1e
    if-eqz v1, :cond_9

    .line 1616
    :try_start_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_27

    goto :goto_9

    .line 1620
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ck;

    .line 1621
    invoke-virtual {v2}, Lcom/baidu/mobstat/ck;->e()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/ck;->c()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2b

    .line 1622
    invoke-virtual {v2, p3, p4}, Lcom/baidu/mobstat/ck;->a(J)V
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_47

    goto :goto_2b

    .line 1662
    :catchall_47
    move-exception p1

    .line 1632
    :cond_48
    :try_start_48
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1633
    :cond_50
    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_c2

    if-eqz p2, :cond_c3

    .line 1637
    :try_start_56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1638
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_63
    .catchall {:try_start_56 .. :try_end_62} :catchall_c2

    goto :goto_65

    :catch_63
    move-exception p2

    move-object p2, v0

    :goto_65
    if-eqz p2, :cond_50

    .line 1642
    :try_start_67
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_6e

    goto :goto_50

    .line 1646
    :cond_6e
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1647
    :cond_76
    :goto_76
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1648
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1649
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_76

    .line 1651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_91

    goto :goto_76

    .line 1655
    :cond_91
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_95
    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cl;

    .line 1657
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_95

    .line 1658
    invoke-virtual {v2, p3, p4}, Lcom/baidu/mobstat/cl;->a(J)V

    .line 1660
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v5

    .line 1661
    nop

    .line 1662
    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_67 .. :try_end_c1} :catchall_c2

    goto :goto_95

    :catchall_c2
    move-exception p1

    :cond_c3
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_45

    .line 526
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_45

    .line 530
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 531
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 534
    :try_start_15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1e

    :catch_1c
    move-exception v2

    const/4 v2, 0x0

    :goto_1e
    if-nez v2, :cond_24

    .line 540
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 544
    :cond_24
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_30

    .line 546
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 550
    :cond_30
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 551
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 552
    :cond_3c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 556
    :cond_42
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_45
    :goto_45
    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2b

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_2b

    .line 487
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_28

    .line 491
    :try_start_10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    move-exception v2

    const/4 v2, 0x0

    :goto_19
    if-nez v2, :cond_1c

    goto :goto_25

    .line 501
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 502
    invoke-direct {p0, v2, p2}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 505
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private a(JJ)Z
    .registers 6

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-lez v0, :cond_f

    const-wide/16 p1, 0x32

    cmp-long v0, p3, p1

    if-lez v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private a(Landroid/view/View;)Z
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-ne v0, v1, :cond_7

    goto :goto_13

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_SINGLE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-ne v0, v1, :cond_15

    .line 138
    invoke-static {p1}, Lcom/baidu/mobstat/de;->v(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private a(Lcom/baidu/mobstat/cl;Lcom/baidu/mobstat/cl;)Z
    .registers 15

    .line 1337
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->a()Ljava/lang/String;

    move-result-object v0

    .line 1338
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v2

    .line 1340
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v3

    .line 1341
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->e()Ljava/lang/String;

    move-result-object v4

    .line 1342
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v5

    .line 1343
    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->g()Z

    move-result p2

    .line 1345
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->a()Ljava/lang/String;

    move-result-object v6

    .line 1346
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->b()Ljava/lang/String;

    move-result-object v7

    .line 1347
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->c()Lorg/json/JSONArray;

    move-result-object v8

    .line 1348
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->d()Ljava/lang/String;

    move-result-object v9

    .line 1349
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->e()Ljava/lang/String;

    move-result-object v10

    .line 1350
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->f()Ljava/lang/String;

    move-result-object v11

    .line 1351
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->g()Z

    move-result p1

    .line 1353
    invoke-direct {p0, v6, v0}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_40

    return v6

    .line 1357
    :cond_40
    invoke-direct {p0, v7, v1}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    return v6

    .line 1361
    :cond_47
    invoke-direct {p0, v8, v2}, Lcom/baidu/mobstat/co;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_4e

    return v6

    .line 1365
    :cond_4e
    invoke-direct {p0, v9, v3}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    return v6

    .line 1369
    :cond_55
    invoke-direct {p0, v10, v4}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    return v6

    .line 1373
    :cond_5c
    invoke-direct {p0, v11, v5}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    return v6

    :cond_63
    if-eq p1, p2, :cond_66

    return v6

    :cond_66
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/co;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/baidu/mobstat/co;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-ne p1, p2, :cond_3

    goto :goto_15

    .line 1390
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

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/Activity;)Z
    .registers 11

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 632
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 633
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_33

    .line 638
    :cond_20
    instance-of p1, p8, Lcom/baidu/mobstat/IIgnoreAutoTrace;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    sub-long/2addr p6, p4

    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-lez p3, :cond_33

    const-wide/16 p1, 0x1388

    cmp-long p3, p6, p1

    if-gez p3, :cond_33

    const/4 v1, 0x1

    :cond_33
    :goto_33
    return v1
.end method

.method private a(Ljava/util/List;Landroid/view/View;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 597
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_28

    .line 601
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_28

    .line 605
    :try_start_11
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1a

    :catch_18
    move-exception v3

    const/4 v3, 0x0

    :goto_1a
    if-nez v3, :cond_1d

    goto :goto_25

    .line 614
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_28

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_28
    :goto_28
    return v0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 3

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_18

    :cond_6
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 1403
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;F)F
    .registers 2

    .line 36
    iput p1, p0, Lcom/baidu/mobstat/co;->z:F

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/baidu/mobstat/co;->d()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;"
        }
    .end annotation

    .line 1207
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1208
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1d

    goto :goto_8

    .line 1216
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    if-ne v2, p2, :cond_8

    .line 1218
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 1221
    invoke-virtual {p1, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    return-object p1
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

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/co;->i:J

    .line 231
    :cond_1c
    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    if-eqz v0, :cond_32

    .line 232
    iget-wide v3, p0, Lcom/baidu/mobstat/co;->g:J

    iget-object v7, p0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;JJLjava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->q:Z

    .line 239
    :cond_32
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Ljava/util/HashMap;J)V

    .line 242
    iget-object p2, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/co;->b(Ljava/util/HashMap;)V

    .line 243
    iget-object p2, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/co;->c(Ljava/util/HashMap;)V

    .line 246
    iget-object p2, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/co;->e(Ljava/util/HashMap;)V

    .line 247
    iget-object p2, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/co;->f(Ljava/util/HashMap;)V

    if-eqz p1, :cond_57

    .line 251
    new-instance p2, Lcom/baidu/mobstat/co$9;

    invoke-direct {p2, p0}, Lcom/baidu/mobstat/co$9;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_57
    return-void
.end method

.method private b(Landroid/view/View;Landroid/app/Activity;J)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 859
    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 863
    :cond_a
    invoke-static {p2}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-static {p1}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v8

    .line 869
    new-instance p2, Lcom/baidu/mobstat/ck;

    move-object v0, p2

    move-wide v2, p3

    move-wide v4, p3

    move-wide v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mobstat/ck;-><init>(Ljava/lang/String;JJJZ)V

    .line 871
    iget-object p3, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    invoke-direct {p0, p3, p1, p2}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/ck;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->b(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/app/Activity;J)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/co;->b(Landroid/view/View;Landroid/app/Activity;J)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;)V"
        }
    .end annotation

    .line 996
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method private b(Ljava/util/HashMap;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;J)V"
        }
    .end annotation

    if-eqz p1, :cond_7b

    .line 1099
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7b

    .line 1104
    :cond_a
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1105
    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_27

    goto :goto_12

    .line 1114
    :cond_27
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1115
    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2f

    .line 1119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_2f

    .line 1123
    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cl;

    .line 1125
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->k()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4e

    .line 1126
    invoke-virtual {v2, p2, p3}, Lcom/baidu/mobstat/cl;->a(J)V

    .line 1128
    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->j()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v5

    .line 1129
    nop

    .line 1130
    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;)V

    goto :goto_4e

    :cond_7b
    :goto_7b
    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/co;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/co;->b:Ljava/lang/ref/WeakReference;

    return-object p0
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
    iput-object v0, p0, Lcom/baidu/mobstat/co;->l:Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lcom/baidu/mobstat/co;->m:Ljava/lang/String;

    .line 416
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mobstat/co;->n:Z

    .line 418
    iput-object v0, p0, Lcom/baidu/mobstat/co;->o:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/app/Activity;J)V
    .registers 14

    .line 661
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 662
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 663
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v9

    .line 666
    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 668
    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->p:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/baidu/mobstat/co;->q:Z

    if-nez v0, :cond_3d

    iget-wide v0, p0, Lcom/baidu/mobstat/co;->g:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/baidu/mobstat/co;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 669
    invoke-direct {p0, v6}, Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    iput-object v0, p0, Lcom/baidu/mobstat/co;->r:Ljava/util/List;

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/co;->q:Z

    :cond_3d
    if-eqz p1, :cond_4d

    .line 678
    new-instance v9, Lcom/baidu/mobstat/co$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v8

    move-wide v3, p2

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/co$2;-><init>(Lcom/baidu/mobstat/co;Ljava/util/ArrayList;JLjava/util/ArrayList;Landroid/app/Activity;)V

    invoke-virtual {p1, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4d
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
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;)V"
        }
    .end annotation

    .line 1002
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1003
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1004
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1005
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 1008
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 1011
    :cond_20
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private d()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/baidu/mobstat/co;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_b

    .line 435
    new-instance v0, Lcom/baidu/mobstat/co$14;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$14;-><init>(Lcom/baidu/mobstat/co;)V

    iput-object v0, p0, Lcom/baidu/mobstat/co;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 443
    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/co;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/co;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/co;->k:Ljava/lang/String;

    return-object p0
.end method

.method private d(Landroid/app/Activity;J)V
    .registers 15

    .line 1053
    iget-object v0, p0, Lcom/baidu/mobstat/co;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/co;->b(Ljava/util/HashMap;J)V

    .line 1054
    iget-object v0, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    if-eqz v0, :cond_67

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_10

    goto :goto_67

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1057
    :goto_12
    iget-object v2, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 1060
    :try_start_1a
    iget-object v2, p0, Lcom/baidu/mobstat/co;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_25

    :catch_23
    move-exception v2

    const/4 v2, 0x0

    :goto_25
    if-nez v2, :cond_28

    goto :goto_64

    .line 1069
    :cond_28
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_31

    goto :goto_64

    .line 1074
    :cond_31
    invoke-static {v2}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_64

    .line 1078
    :cond_38
    invoke-direct {p0, v2}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_64

    .line 1082
    :cond_3f
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_44

    goto :goto_64

    .line 1086
    :cond_44
    move-object v9, v2

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    .line 1087
    :goto_48
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v10, v3, :cond_64

    .line 1088
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 1090
    invoke-static {v5}, Lcom/baidu/mobstat/de;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1091
    move-object v3, p0

    move-object v4, v2

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;J)V

    :cond_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_67
    :goto_67
    return-void
.end method

.method static synthetic d(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/co;->d(Landroid/app/Activity;J)V

    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/ck;",
            ">;>;)V"
        }
    .end annotation

    .line 1015
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    iget-object v0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    .line 1018
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1019
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1020
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1021
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    .line 1022
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 1023
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 1027
    :cond_2d
    new-instance v0, Lcom/baidu/mobstat/co$4;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$4;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1043
    iget-object v0, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    if-eqz v0, :cond_3c

    .line 1044
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/co$a;->a(Ljava/util/ArrayList;)V

    .line 1047
    :cond_3c
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

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
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1411
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/co;->g(Ljava/util/HashMap;)V

    return-void
.end method

.method private f(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1417
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1418
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1419
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1d

    goto :goto_8

    .line 1426
    :cond_1d
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1427
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1428
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1429
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1430
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_25

    .line 1433
    :cond_3b
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_8

    .line 1436
    :cond_3f
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/mobstat/co;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/baidu/mobstat/co;->d:Z

    return p0
.end method

.method static synthetic g(Lcom/baidu/mobstat/co;)Ljava/util/HashMap;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/co;->s:Ljava/util/HashMap;

    return-object p0
.end method

.method private g(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1462
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1463
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1464
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1466
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/co;->h(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    .line 1470
    :cond_27
    new-instance p1, Lcom/baidu/mobstat/co$5;

    invoke-direct {p1, p0}, Lcom/baidu/mobstat/co$5;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1485
    iget-object p1, p0, Lcom/baidu/mobstat/co;->v:Lcom/baidu/mobstat/co$a;

    if-eqz p1, :cond_36

    .line 1486
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/co$a;->b(Ljava/util/ArrayList;)V

    .line 1489
    :cond_36
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object p1

    iget-object v1, p0, Lcom/baidu/mobstat/co;->a:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic h(Lcom/baidu/mobstat/co;)Landroid/os/Handler;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private h(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/cl;",
            ">;"
        }
    .end annotation

    .line 1493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1496
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1497
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1498
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1500
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/co;->a(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cl;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1502
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method static synthetic i(Lcom/baidu/mobstat/co;)Ljava/lang/Object;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;
    .registers 12

    .line 392
    invoke-static {p2}, Lcom/baidu/mobstat/de;->t(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 393
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 394
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 395
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_25

    .line 397
    :cond_22
    const-string v0, ""

    move-object v4, v0

    :goto_25
    invoke-static {p2}, Lcom/baidu/mobstat/de;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {p3}, Lcom/baidu/mobstat/de;->s(Landroid/view/View;)Z

    move-result v7

    .line 400
    invoke-static {p1}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v3

    .line 403
    invoke-static {p3}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-static {p2, p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p2, :cond_a2

    if-nez p1, :cond_10

    goto/16 :goto_a2

    .line 1703
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1704
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1709
    instance-of v4, p2, Landroid/webkit/WebView;

    if-eqz v4, :cond_39

    .line 1710
    iget-object v4, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    monitor-enter v4

    .line 1711
    :try_start_1f
    check-cast p2, Landroid/webkit/WebView;

    .line 1714
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_36

    .line 1719
    :try_start_24
    iget-object p1, p0, Lcom/baidu/mobstat/co;->A:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {p1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c
    .catchall {:try_start_24 .. :try_end_2b} :catchall_36

    goto :goto_2d

    .line 1699
    :catch_2c
    move-exception p1

    .line 1724
    :goto_2d
    :try_start_2d
    iget p1, p0, Lcom/baidu/mobstat/co;->y:F

    iget p2, p0, Lcom/baidu/mobstat/co;->z:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1725
    monitor-exit v4

    goto :goto_6b

    :catchall_36
    move-exception p1

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_36

    throw p1

    .line 1726
    :cond_39
    instance-of p1, p2, Landroid/widget/ScrollView;

    if-eqz p1, :cond_56

    .line 1727
    check-cast p2, Landroid/widget/ScrollView;

    .line 1728
    invoke-virtual {p2}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_82

    .line 1729
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 1730
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_84

    .line 1732
    :cond_56
    instance-of p1, p2, Landroid/widget/ListView;

    if-eqz p1, :cond_61

    .line 1733
    check-cast p2, Landroid/widget/ListView;

    .line 1734
    invoke-static {p2}, Lcom/baidu/mobstat/de;->a(Landroid/widget/ListView;)I

    move-result p1

    goto :goto_6b

    .line 1735
    :cond_61
    instance-of p1, p2, Landroid/widget/GridView;

    if-eqz p1, :cond_6e

    .line 1736
    check-cast p2, Landroid/widget/GridView;

    .line 1740
    invoke-static {p2}, Lcom/baidu/mobstat/de;->a(Landroid/widget/GridView;)I

    move-result p1

    .line 1734
    :goto_6b
    move p2, p1

    const/4 p1, 0x0

    goto :goto_84

    .line 1743
    :cond_6e
    invoke-static {p2}, Lcom/baidu/mobstat/de;->r(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 1747
    :try_start_74
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 1748
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_81

    .line 1749
    :try_start_7a
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7e} :catch_7f

    goto :goto_84

    :catch_7f
    move-exception p2

    goto :goto_83

    :catch_81
    move-exception p1

    :cond_82
    const/4 p1, 0x0

    :goto_83
    const/4 p2, 0x0

    :goto_84
    if-nez p1, :cond_87

    goto :goto_88

    :cond_87
    move v2, p1

    :goto_88
    if-nez p2, :cond_8b

    goto :goto_8c

    :cond_8b
    move v3, p2

    :goto_8c
    if-lez v2, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v2, 0x0

    :goto_90
    if-lez v3, :cond_93

    move v1, v3

    .line 1766
    :cond_93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1698
    :cond_a2
    :goto_a2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 153
    iget-object p1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/co$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/baidu/mobstat/co$1;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    return-void

    .line 325
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    return-void

    .line 329
    :cond_13
    iget-object p1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/co$12;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/co$12;-><init>(Lcom/baidu/mobstat/co;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/app/Activity;)V
    .registers 11

    if-eqz p1, :cond_20

    if-nez p2, :cond_5

    goto :goto_20

    .line 291
    :cond_5
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 292
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 296
    iget-object p2, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/mobstat/co$11;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/co$11;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/View;J)V

    invoke-virtual {p2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    :goto_20
    return-void
.end method

.method public a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/co$13;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/co$13;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 456
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 458
    new-instance v2, Lcom/baidu/mobstat/co$15;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/baidu/mobstat/co$15;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    .line 470
    iget-object p1, p0, Lcom/baidu/mobstat/co;->x:Ljava/lang/Runnable;

    if-eqz p1, :cond_15

    .line 471
    iget-object v0, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    :cond_15
    iput-object v2, p0, Lcom/baidu/mobstat/co;->x:Ljava/lang/Runnable;

    .line 475
    iget-object p1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 199
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 202
    iget-object p1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/co$8;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/baidu/mobstat/co$8;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/baidu/mobstat/co;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_NONE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public c(Landroid/app/Activity;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 269
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 272
    iget-object p1, p0, Lcom/baidu/mobstat/co;->c:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/co$10;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/baidu/mobstat/co$10;-><init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
