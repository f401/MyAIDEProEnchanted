.class public abstract Lorg/xutils/http/BaseParams;
.super Ljava/lang/Object;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/BaseParams$ArrayItem;,
        Lorg/xutils/http/BaseParams$BodyItemWrapper;,
        Lorg/xutils/http/BaseParams$Header;
    }
.end annotation


# instance fields
.field private asJsonArrayContent:Z

.field private asJsonContent:Z

.field private bodyContent:Ljava/lang/String;

.field private bodyContentType:Ljava/lang/String;

.field private final bodyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lorg/xutils/http/HttpMethod;

.field private multipart:Z

.field private final queryStringParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private requestBody:Lorg/xutils/http/body/RequestBody;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    .line 40
    iput-boolean v1, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    .line 41
    iput-boolean v1, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    return-void
.end method

.method private checkBodyParams()V
    .registers 4

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 410
    :goto_0
    return-void

    .line 398
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    monitor-exit p0

    goto :goto_0

    .line 404
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 406
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, v0}, Lorg/xutils/http/BaseParams;->toJSONString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 411
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private params2Json(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 418
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 419
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v2, v3

    .line 420
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 421
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 422
    iget-object v6, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 423
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 433
    :goto_2
    iget-object v7, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v7}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    instance-of v0, v0, Lorg/xutils/http/BaseParams$ArrayItem;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 430
    invoke-virtual {v5, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 440
    :cond_3
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 443
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 444
    :cond_4
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 446
    :cond_5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 447
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 450
    :cond_6
    return-void
.end method

.method private toJSONString(Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 456
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 459
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 460
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 461
    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 481
    :goto_0
    if-eqz p1, :cond_4

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    invoke-direct {p0, v2, v0}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 490
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 463
    :cond_0
    const-string v0, "only contains bodyContent"

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 467
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 468
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v2, v0

    goto :goto_0

    .line 471
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 474
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 475
    iget-boolean v1, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    if-eqz v1, :cond_6

    .line 476
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 477
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_0

    .line 487
    :cond_4
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_1

    .line 490
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    instance-of v1, p2, Ljava/lang/Iterable;

    if-eqz v1, :cond_2

    .line 206
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v3, p1, v1}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_2
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    .line 210
    check-cast p2, Lorg/json/JSONArray;

    .line 211
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 212
    :goto_2
    if-ge v0, v1, :cond_0

    .line 213
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 215
    :cond_3
    instance-of v1, p2, [B

    if-eqz v1, :cond_4

    .line 216
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 219
    :goto_3
    if-ge v0, v1, :cond_0

    .line 220
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 223
    :cond_5
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 226
    :cond_6
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/xutils/http/BaseParams$BodyItemWrapper;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2, v1, v1}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    instance-of v1, p2, Ljava/lang/Iterable;

    if-eqz v1, :cond_2

    .line 154
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v3, p1, v1}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_2
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    .line 158
    check-cast p2, Lorg/json/JSONArray;

    .line 159
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 160
    :goto_2
    if-ge v0, v1, :cond_0

    .line 161
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 165
    :goto_3
    if-ge v0, v1, :cond_0

    .line 166
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 169
    :cond_4
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearParams()V
    .registers 3

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 287
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 288
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    .line 289
    return-void
.end method

.method public getBodyContent()Ljava/lang/String;
    .registers 2

    .line 235
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 236
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethod()Lorg/xutils/http/HttpMethod;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    return-object v0
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 269
    if-eqz p1, :cond_0

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 274
    if-nez p1, :cond_3

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_3
    if-eqz p1, :cond_2

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_4
    return-object v1
.end method

.method public getQueryStringParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRequestBody()Lorg/xutils/http/body/RequestBody;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 322
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-object v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lorg/xutils/http/body/StringBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Lorg/xutils/http/body/MultipartBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/MultipartBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 334
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 335
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 336
    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 337
    const/4 v1, 0x0

    .line 338
    instance-of v4, v0, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 339
    check-cast v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    .line 340
    iget-object v1, v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 342
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 345
    :cond_4
    instance-of v4, v2, Ljava/io/File;

    if-eqz v4, :cond_5

    .line 346
    new-instance v3, Lorg/xutils/http/body/FileBody;

    move-object v0, v2

    check-cast v0, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 347
    :cond_5
    instance-of v4, v2, Ljava/io/InputStream;

    if-eqz v4, :cond_6

    .line 348
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v0, v2, v1}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_6
    instance-of v4, v2, [B

    if-eqz v4, :cond_7

    .line 350
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v2, [B

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3, v1}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 353
    new-instance v2, Lorg/xutils/http/body/StringBody;

    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStrOrEmpty()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {v2, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 356
    :cond_8
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 357
    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    :cond_9
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isAsJsonArrayContent()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    return v0
.end method

.method public isAsJsonContent()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    return v0
.end method

.method public isMultipart()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 308
    if-nez p1, :cond_4

    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 299
    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 310
    :cond_4
    if-eqz p1, :cond_1

    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 314
    :cond_5
    return-void
.end method

.method public setAsJsonArrayContent(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    .line 101
    return-void
.end method

.method public setAsJsonContent(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    .line 86
    return-void
.end method

.method public setBodyContent(Ljava/lang/String;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setBodyContentType(Ljava/lang/String;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v0, 0x1

    invoke-direct {v1, p1, p2, v0}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 114
    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMethod(Lorg/xutils/http/HttpMethod;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    .line 60
    return-void
.end method

.method public setMultipart(Z)V
    .registers 2

    .line 71
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    .line 72
    return-void
.end method

.method public setRequestBody(Lorg/xutils/http/body/RequestBody;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    .line 318
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/http/BaseParams;->toJSONString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 377
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 382
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 387
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 389
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
