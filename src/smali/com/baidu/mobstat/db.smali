.class public Lcom/baidu/mobstat/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static volatile c:Z


# direct methods
.method private static a()Ljava/lang/String;
    .locals 1

    .line 208
    const-string v0, "https://dxp.baidu.com/vizParser"

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 212
    sget-object v0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    new-instance v2, Landroid/util/Pair;

    const-string v3, "sign"

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 226
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://dxp.baidu.com/autoTracker?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_1
    return-object v0

    :cond_3
    const-string v0, "https://dxp.baidu.com/autoTracker"

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sdkVersion"

    invoke-static {}, Lcom/baidu/mobstat/StatService;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "appKey"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Landroid/util/Pair;

    const-string v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Landroid/util/Pair;

    const-string v2, "appVersion"

    invoke-static {p0}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 263
    new-instance v2, Landroid/util/Pair;

    const-string v3, "cuid"

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobstat/CooperService;->getDevicImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 273
    new-instance v2, Landroid/util/Pair;

    const-string v3, "imei"

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Landroid/util/Pair;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Landroid/util/Pair;

    const-string v2, "model"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "s"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Landroid/util/Pair;

    const-string v2, "o"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 282
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://dxp.baidu.com/circleConfig?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 186
    const-string v0, ""

    .line 188
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(IZ)V
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 66
    :cond_0
    sput-boolean p1, Lcom/baidu/mobstat/db;->c:Z

    goto :goto_0

    .line 62
    :cond_1
    sput-boolean p1, Lcom/baidu/mobstat/db;->b:Z

    goto :goto_0

    .line 58
    :cond_2
    sput-boolean p1, Lcom/baidu/mobstat/db;->a:Z

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 45
    :cond_0
    sget-boolean v0, Lcom/baidu/mobstat/db;->c:Z

    goto :goto_0

    .line 41
    :cond_1
    sget-boolean v0, Lcom/baidu/mobstat/db;->b:Z

    goto :goto_0

    .line 37
    :cond_2
    sget-boolean v0, Lcom/baidu/mobstat/db;->a:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/baidu/mobstat/db;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {p2}, Lcom/baidu/mobstat/db;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-class v0, Lcom/baidu/mobstat/db;

    monitor-exit v0

    move v0, v2

    .line 180
    :goto_0
    return v0

    .line 86
    :cond_0
    if-nez p0, :cond_1

    .line 91
    const-class v0, Lcom/baidu/mobstat/db;

    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 94
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const-class v0, Lcom/baidu/mobstat/db;

    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 99
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 100
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestUrl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 102
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestUrl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 106
    :cond_4
    invoke-static {p2}, Lcom/baidu/mobstat/db;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    const-class v0, Lcom/baidu/mobstat/db;

    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 114
    :cond_5
    :try_start_3
    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    .line 116
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v2, :cond_a

    .line 121
    :try_start_5
    const-string v0, "X-INTERVAL"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    .line 127
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 128
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 130
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz p3, :cond_6

    .line 131
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "contentLength:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " fileName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 134
    :cond_6
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 135
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "contentLength:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " fileName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    :cond_7
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_e

    if-eq p2, v2, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 151
    :goto_2
    if-lez v7, :cond_8

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dp;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    .line 166
    :try_start_7
    invoke-static {v1}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    :cond_8
    const/4 v0, 0x1

    :try_start_8
    invoke-static {p2, v0}, Lcom/baidu/mobstat/db;->a(IZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v2

    :goto_3
    if-eqz v4, :cond_9

    .line 176
    :goto_4
    :try_start_9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 180
    :cond_9
    const-class v1, Lcom/baidu/mobstat/db;

    monitor-exit v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 121
    :cond_a
    const-wide/16 v0, 0x0

    goto/16 :goto_1

    .line 155
    :cond_b
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, p0, v8, v9}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;J)V

    goto :goto_2

    .line 176
    :catch_1
    move-exception v0

    :goto_5
    move v0, v3

    :goto_6
    if-eqz v4, :cond_9

    goto :goto_4

    .line 150
    :cond_c
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, p0, v8, v9}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;J)V

    .line 151
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v6

    invoke-virtual {v6, p0, v0, v1}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_7
    if-eqz v1, :cond_d

    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 180
    :catchall_1
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/db;

    monitor-exit v1

    throw v0

    .line 170
    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_6

    :cond_e
    move v0, v3

    goto :goto_3

    .line 166
    :catch_3
    move-exception v1

    goto :goto_6

    .line 176
    :catch_4
    move-exception v0

    move-object v4, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_7
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 303
    const-string v0, ""

    .line 305
    :goto_0
    return-object v0

    .line 313
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_2
    sget-object v0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    goto :goto_0
.end method
