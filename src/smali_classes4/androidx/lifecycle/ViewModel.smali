.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_9

    :try_start_4
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final clear()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-eqz v1, :cond_24

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    goto :goto_12

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    :cond_24
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method getTag(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onCleared()V
    .registers 1

    return-void
.end method

.method setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v2, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    if-nez v0, :cond_1b

    :goto_13
    iget-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    if-eqz v0, :cond_1a

    invoke-static {p2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    :cond_1a
    return-object p2

    :cond_1b
    move-object p2, v0

    goto :goto_13

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method
