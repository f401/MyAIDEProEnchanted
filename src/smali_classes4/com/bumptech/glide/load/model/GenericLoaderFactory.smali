.class public Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.super Ljava/lang/Object;


# static fields
.field private static final NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final modelClassToResourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    return-void
.end method

.method private cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method

.method private getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_44

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    :goto_10
    if-nez v0, :cond_41

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    if-eqz v0, :cond_46

    :cond_41
    :goto_41
    return-object v0

    :cond_42
    move-object v0, v1

    goto :goto_41

    :cond_44
    const/4 v0, 0x0

    goto :goto_10

    :cond_46
    move-object v1, v0

    goto :goto_1d
.end method


# virtual methods
.method public buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v1, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_22

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :cond_10
    :goto_10
    monitor-exit p0

    return-object v0

    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    invoke-interface {v1, v0, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_10

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_10
.end method

.method public buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_41

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    :cond_3f
    monitor-exit p0

    return-object v0

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :goto_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method
