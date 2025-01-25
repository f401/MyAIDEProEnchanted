.class public Lcom/baidu/mobstat/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static volatile c:Z


# direct methods
.method private static a()Ljava/lang/String;
    .registers 1

    .line 208
    const-string v0, "https://dxp.baidu.com/vizParser"

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 212
    const-string v0, "UTF-8"

    sget-object v1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 219
    new-instance v2, Landroid/util/Pair;

    const-string v3, "sign"

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 226
    :try_start_40
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_60} :catch_95

    const-string v5, "="

    if-eqz v4, :cond_7a

    .line 230
    :try_start_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 232
    :cond_7a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_94} :catch_95

    goto :goto_34

    :catch_95
    move-exception v2

    goto :goto_34

    .line 238
    :cond_97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://dxp.baidu.com/autoTracker?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b2

    .line 241
    :cond_b0
    const-string p0, "https://dxp.baidu.com/autoTracker"

    :goto_b2
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 249
    const-string v0, "UTF-8"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v2, Landroid/util/Pair;

    const-string v3, "sdkVersion"

    invoke-static {}, Lcom/baidu/mobstat/StatService;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/util/Pair;

    const-string v4, "appKey"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance p1, Landroid/util/Pair;

    const-string v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance p1, Landroid/util/Pair;

    const-string v2, "appVersion"

    invoke-static {p0}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 263
    new-instance v2, Landroid/util/Pair;

    const-string v4, "cuid"

    invoke-direct {v2, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/CooperService;->getDevicImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 273
    new-instance p1, Landroid/util/Pair;

    const-string v2, "imei"

    invoke-direct {p1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance p0, Landroid/util/Pair;

    const-string p1, "platform"

    const-string v2, "Android"

    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance p0, Landroid/util/Pair;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object p1

    const-string v2, "model"

    invoke-direct {p0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/util/Pair;

    const-string v2, "s"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance p0, Landroid/util/Pair;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object p1

    const-string v2, "o"

    invoke-direct {p0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 282
    :try_start_ce
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ee} :catch_123

    const-string v4, "="

    if-eqz v3, :cond_108

    .line 286
    :try_start_f2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c2

    .line 288
    :cond_108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_122} :catch_123

    goto :goto_c2

    :catch_123
    move-exception v1

    goto :goto_c2

    .line 295
    :cond_125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://dxp.baidu.com/circleConfig?"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_15

    const/4 v0, 0x1

    if-eq p2, v0, :cond_10

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 186
    const-string p0, ""

    goto :goto_19

    .line 196
    :cond_b
    invoke-static {p0, p1}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    .line 192
    :cond_10
    invoke-static {p0}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    .line 188
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method private static a(IZ)V
    .registers 3

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    goto :goto_11

    .line 66
    :cond_9
    sput-boolean p1, Lcom/baidu/mobstat/db;->c:Z

    goto :goto_11

    .line 62
    :cond_c
    sput-boolean p1, Lcom/baidu/mobstat/db;->b:Z

    goto :goto_11

    .line 58
    :cond_f
    sput-boolean p1, Lcom/baidu/mobstat/db;->a:Z

    :goto_11
    return-void
.end method

.method private static a(I)Z
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_12

    .line 45
    :cond_a
    sget-boolean p0, Lcom/baidu/mobstat/db;->c:Z

    goto :goto_12

    .line 41
    :cond_d
    sget-boolean p0, Lcom/baidu/mobstat/db;->b:Z

    goto :goto_12

    .line 37
    :cond_10
    sget-boolean p0, Lcom/baidu/mobstat/db;->a:Z

    :goto_12
    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 13

    const-class v0, Lcom/baidu/mobstat/db;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-static {p2}, Lcom/baidu/mobstat/db;->a(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_13f

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 86
    const-class p0, Lcom/baidu/mobstat/db;

    monitor-exit p0

    return v1

    :cond_e
    const/4 v0, 0x0

    if-nez p0, :cond_15

    .line 91
    const-class p0, Lcom/baidu/mobstat/db;

    monitor-exit p0

    return v0

    .line 94
    :cond_15
    :try_start_15
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_13f

    if-eqz v2, :cond_23

    .line 96
    const-class p0, Lcom/baidu/mobstat/db;

    monitor-exit p0

    return v0

    .line 99
    :cond_23
    :try_start_23
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz p3, :cond_44

    .line 100
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestUrl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 102
    :cond_44
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 103
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestUrl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 106
    :cond_63
    invoke-static {p2}, Lcom/baidu/mobstat/db;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6b
    .catchall {:try_start_23 .. :try_end_6b} :catchall_13f

    if-eqz v3, :cond_71

    .line 108
    const-class p0, Lcom/baidu/mobstat/db;

    monitor-exit p0

    return v0

    :cond_71
    nop

    .line 114
    const/4 v3, 0x0

    :try_start_73
    invoke-static {p0, p1}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_134
    .catchall {:try_start_73 .. :try_end_7a} :catchall_12d

    if-ne p2, v1, :cond_8c

    .line 121
    :try_start_7c
    const-string p1, "X-INTERVAL"

    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8a} :catch_8b
    .catchall {:try_start_7c .. :try_end_8a} :catchall_12d

    goto :goto_8e

    .line 180
    :catch_8b
    move-exception p1

    .line 121
    :cond_8c
    const-wide/16 v4, 0x0

    .line 127
    :goto_8e
    :try_start_8e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 128
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 130
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v7

    if-eqz v7, :cond_bf

    if-eqz p3, :cond_bf

    .line 131
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contentLength:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " fileName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 134
    :cond_bf
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p3

    invoke-virtual {p3}, Lcom/baidu/mobstat/dc;->b()Z

    move-result p3

    if-eqz p3, :cond_e6

    .line 135
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contentLength:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " fileName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    :cond_e6
    const/16 p3, 0xc8

    if-ne p1, p3, :cond_129

    if-eq p2, v1, :cond_fc

    const/4 p1, 0x2

    if-eq p2, p1, :cond_f0

    goto :goto_10e

    .line 155
    :cond_f0
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, p0, v4, v5}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;J)V

    goto :goto_10e

    .line 150
    :cond_fc
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1, p0, v7, v8}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;J)V

    .line 151
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p1

    invoke-virtual {p1, p0, v4, v5}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;J)V

    :goto_10e
    if-lez v6, :cond_123

    .line 164
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 165
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_11c} :catch_134
    .catchall {:try_start_8e .. :try_end_11c} :catchall_12d

    .line 166
    :try_start_11c
    invoke-static {p0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_120
    .catchall {:try_start_11c .. :try_end_11f} :catchall_12d

    goto :goto_123

    :catch_120
    move-exception p0

    move v1, p1

    goto :goto_136

    .line 170
    :cond_123
    :goto_123
    :try_start_123
    invoke-static {p2, v1}, Lcom/baidu/mobstat/db;->a(IZ)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_126} :catch_127
    .catchall {:try_start_123 .. :try_end_126} :catchall_12d

    goto :goto_12a

    :catch_127
    move-exception p0

    goto :goto_136

    :cond_129
    const/4 v1, 0x0

    :goto_12a
    if-eqz v3, :cond_13b

    goto :goto_138

    .line 176
    :catchall_12d
    move-exception p0

    if-eqz v3, :cond_133

    :try_start_130
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_133
    throw p0

    :catch_134
    move-exception p0

    const/4 v1, 0x0

    :goto_136
    if-eqz v3, :cond_13b

    :goto_138
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13b
    .catchall {:try_start_130 .. :try_end_13b} :catchall_13f

    .line 180
    :cond_13b
    const-class p0, Lcom/baidu/mobstat/db;

    monitor-exit p0

    return v1

    :catchall_13f
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/db;

    monitor-exit p1

    throw p0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 303
    const-string p0, ""

    goto :goto_13

    .line 313
    :cond_b
    sget-object p0, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    goto :goto_13

    .line 309
    :cond_e
    sget-object p0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    goto :goto_13

    .line 305
    :cond_11
    sget-object p0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    :goto_13
    return-object p0
.end method
