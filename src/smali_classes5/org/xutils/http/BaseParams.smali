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
    :try_start_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_50

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit p0

    .line 410
    :goto_a
    return-void

    .line 398
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 399
    :cond_17
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_50

    .line 401
    monitor-exit p0

    goto :goto_a

    .line 404
    :cond_25
    :try_start_25
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_50

    if-eqz v0, :cond_3b

    .line 406
    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    invoke-direct {p0, v0}, Lorg/xutils/http/BaseParams;->toJSONString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_39} :catch_53
    .catchall {:try_start_2e .. :try_end_39} :catchall_50

    .line 410
    :cond_39
    :goto_39
    monitor-exit p0

    goto :goto_a

    .line 411
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 412
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_50

    goto :goto_39

    .line 395
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    .line 408
    :catch_53
    move-exception v0

    .line 409
    :try_start_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_50
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
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_52

    .line 421
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 422
    iget-object v6, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 423
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 420
    :cond_28
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 425
    :cond_2c
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 427
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 433
    :goto_38
    iget-object v7, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v7}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    instance-of v0, v0, Lorg/xutils/http/BaseParams$ArrayItem;

    if-eqz v0, :cond_28

    .line 436
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 429
    :cond_49
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 430
    invoke-virtual {v5, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 440
    :cond_52
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

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

    if-gt v5, v6, :cond_7f

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 444
    :cond_7f
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5a

    .line 446
    :cond_83
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 447
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5a

    .line 450
    :cond_8b
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

    if-nez v1, :cond_75

    .line 456
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 457
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_62

    .line 459
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 460
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_58

    .line 461
    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 481
    :goto_30
    if-eqz p1, :cond_88

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
    :goto_51
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_57
    return-object v0

    .line 463
    :cond_58
    const-string v0, "only contains bodyContent"

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 467
    :cond_62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 468
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v2, v0

    goto :goto_30

    .line 471
    :cond_6c
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_30

    .line 474
    :cond_75
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 475
    iget-boolean v1, p0, Lorg/xutils/http/BaseParams;->asJsonArrayContent:Z

    if-eqz v1, :cond_93

    .line 476
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 477
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_30

    .line 487
    :cond_88
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_51

    .line 490
    :cond_8e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_93
    move-object v1, v0

    goto :goto_30
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

    if-eqz v1, :cond_a

    if-nez p2, :cond_a

    .line 228
    :cond_9
    :goto_9
    return-void

    .line 204
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 205
    instance-of v1, p2, Ljava/lang/Iterable;

    if-eqz v1, :cond_35

    .line 206
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v3, p1, v1}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 209
    :cond_35
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_52

    .line 210
    check-cast p2, Lorg/json/JSONArray;

    .line 211
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 212
    :goto_3f
    if-ge v0, v1, :cond_9

    .line 213
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 215
    :cond_52
    instance-of v1, p2, [B

    if-eqz v1, :cond_61

    .line 216
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 217
    :cond_61
    if-eqz p2, :cond_84

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 218
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 219
    :goto_71
    if-ge v0, v1, :cond_9

    .line 220
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 223
    :cond_84
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 226
    :cond_90
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/xutils/http/BaseParams$BodyItemWrapper;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    :goto_6
    return-void

    .line 128
    :cond_7
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    invoke-virtual {p0, p1, p2, v1, v1}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_c
    return-void

    .line 141
    :cond_d
    invoke-virtual {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 171
    :cond_7
    :goto_7
    return-void

    .line 153
    :cond_8
    instance-of v1, p2, Ljava/lang/Iterable;

    if-eqz v1, :cond_27

    .line 154
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v3, p1, v1}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 157
    :cond_27
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_44

    .line 158
    check-cast p2, Lorg/json/JSONArray;

    .line 159
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 160
    :goto_31
    if-ge v0, v1, :cond_7

    .line 161
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 163
    :cond_44
    if-eqz p2, :cond_67

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 164
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 165
    :goto_54
    if-ge v0, v1, :cond_7

    .line 166
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 169
    :cond_67
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
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

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 269
    if-eqz p1, :cond_b

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 270
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 273
    :cond_25
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 274
    if-nez p1, :cond_41

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_41

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 276
    :cond_41
    if-eqz p1, :cond_2b

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 280
    :cond_4f
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

    if-eqz v0, :cond_8

    .line 365
    :goto_7
    return-object v0

    .line 326
    :cond_8
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 328
    new-instance v0, Lorg/xutils/http/body/StringBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto :goto_7

    .line 330
    :cond_1f
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    if-eqz v0, :cond_32

    .line 331
    new-instance v0, Lorg/xutils/http/body/MultipartBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/MultipartBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto :goto_7

    .line 333
    :cond_32
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_aa

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

    if-eqz v4, :cond_52

    move-object v1, v0

    .line 339
    check-cast v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    .line 340
    iget-object v1, v1, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 342
    :cond_52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 343
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 345
    :cond_5a
    instance-of v4, v2, Ljava/io/File;

    if-eqz v4, :cond_68

    .line 346
    new-instance v3, Lorg/xutils/http/body/FileBody;

    move-object v0, v2

    check-cast v0, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_7

    .line 347
    :cond_68
    instance-of v4, v2, Ljava/io/InputStream;

    if-eqz v4, :cond_74

    .line 348
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v0, v2, v1}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_7

    .line 349
    :cond_74
    instance-of v4, v2, [B

    if-eqz v4, :cond_85

    .line 350
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v2, [B

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3, v1}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_7

    .line 352
    :cond_85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 353
    new-instance v2, Lorg/xutils/http/body/StringBody;

    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStrOrEmpty()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {v2, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_7

    .line 356
    :cond_9c
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 357
    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 361
    :cond_aa
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_7
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

    if-eqz v0, :cond_27

    .line 293
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContentType:Ljava/lang/String;

    .line 305
    :cond_b
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 308
    if-nez p1, :cond_45

    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_45

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 296
    :cond_27
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 299
    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    .line 310
    :cond_45
    if-eqz p1, :cond_11

    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 314
    :cond_53
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

    if-nez v0, :cond_8

    .line 50
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    .line 52
    :cond_8
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    :goto_6
    return-void

    .line 110
    :cond_7
    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v0, 0x1

    invoke-direct {v1, p1, p2, v0}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 114
    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 118
    :cond_2b
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
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

    if-nez v0, :cond_3d

    .line 376
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

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

    goto :goto_13

    .line 379
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 382
    :cond_3d
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 383
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_54
    :goto_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_59
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 385
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

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

    goto :goto_6c

    .line 389
    :cond_8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54
.end method
