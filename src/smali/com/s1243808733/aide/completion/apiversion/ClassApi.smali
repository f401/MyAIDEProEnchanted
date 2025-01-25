.class public Lcom/s1243808733/aide/completion/apiversion/ClassApi;
.super Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
.source "ClassApi.java"


# instance fields
.field public apiInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ApiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public apiInfosCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/completion/apiversion/ApiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfosCache:Ljava/util/Map;

    .line 10
    sget-object v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;->CLASS:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    iput-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;

    return-void
.end method


# virtual methods
.method public findApi(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfosCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    if-eqz v0, :cond_b

    return-object v0

    .line 18
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    if-eqz v0, :cond_1a

    .line 19
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->apiInfosCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-object v0
.end method
