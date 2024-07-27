.class public Lorg/apache/tools/ant/property/LocalPropertyStack;
.super Ljava/lang/Object;
.source "LocalPropertyStack.java"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private getMapForProperty(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 173
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 174
    monitor-exit v1

    .line 178
    :goto_0
    return-object v0

    .line 177
    :cond_1
    monitor-exit v1

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic lambda$getPropertyNames$0(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public addLocal(Ljava/lang/String;)V
    .registers 5

    .line 52
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    sget-object v2, Lorg/apache/tools/ant/property/NullReturn;->NULL:Lorg/apache/tools/ant/property/NullReturn;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copy()Lorg/apache/tools/ant/property/LocalPropertyStack;
    .registers 5

    .line 89
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-direct {v0}, Lorg/apache/tools/ant/property/LocalPropertyStack;-><init>()V

    .line 91
    iget-object v2, v0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    iget-object v3, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v2, v3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 92
    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enterScope()V
    .registers 4

    .line 64
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .registers 6

    .line 109
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 111
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    monitor-exit v1

    .line 117
    :goto_0
    return-object v0

    .line 116
    :cond_1
    monitor-exit v1

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exitScope()V
    .registers 3

    .line 73
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPropertyNames()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda4;

    sget-object v2, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda1;

    sget-object v3, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda2;

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 163
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/util/stream/Collector$Characteristics;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v1, v2, v3, v6}, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .registers 5

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/property/LocalPropertyStack;->getMapForProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .registers 7

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/property/LocalPropertyStack;->getMapForProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 133
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    sget-object v2, Lorg/apache/tools/ant/property/NullReturn;->NULL:Lorg/apache/tools/ant/property/NullReturn;

    if-ne v1, v2, :cond_1

    .line 135
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
