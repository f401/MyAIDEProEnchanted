.class final Lcom/google/common/cache/CacheLoader$1;
.super Lcom/google/common/cache/CacheLoader;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/CacheLoader;->asyncReloading(Lcom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final val$executor:Ljava/util/concurrent/Executor;

.field final val$loader:Lcom/google/common/cache/CacheLoader;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    iput-object p2, p0, Lcom/google/common/cache/CacheLoader$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/google/common/cache/CacheLoader$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/cache/CacheLoader$1$1;-><init>(Lcom/google/common/cache/CacheLoader$1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-static {v0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/google/common/cache/CacheLoader$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-object v0
.end method
