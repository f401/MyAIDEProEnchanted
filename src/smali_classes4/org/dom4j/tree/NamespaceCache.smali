.class public Lorg/dom4j/tree/NamespaceCache;
.super Ljava/lang/Object;


# static fields
.field private static final CONCURRENTREADERHASHMAP_CLASS:Ljava/lang/String; = "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap"

.field protected static cache:Ljava/util/Map;

.field protected static noPrefixCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    :try_start_0
    const-string v0, "java.util.concurrent.ConcurrentHashMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6d

    :goto_6c
    return-void

    :catch_6d
    move-exception v0

    :try_start_6e
    const-string v0, "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_84} :catch_85

    goto :goto_6c

    :catch_85
    move-exception v0

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    goto :goto_6c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 4

    new-instance v0, Lorg/dom4j/Namespace;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 6

    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    :cond_12
    if-nez v1, :cond_40

    sget-object v2, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_17
    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    :goto_27
    if-nez v0, :cond_39

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/tree/NamespaceCache;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sget-object v1, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    monitor-exit v2

    :goto_3a
    return-object v0

    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    move-object v0, v1

    goto :goto_27

    :cond_40
    move-object v0, v1

    goto :goto_3a
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 6

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/NamespaceCache;->getURICache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    :cond_14
    if-nez v1, :cond_3a

    monitor-enter v2

    :try_start_17
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    :goto_25
    if-nez v0, :cond_33

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceCache;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    monitor-exit v2

    :goto_34
    return-object v0

    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    move-object v0, v1

    goto :goto_25

    :cond_3a
    move-object v0, v1

    goto :goto_34
.end method

.method protected getURICache(Ljava/lang/String;)Ljava/util/Map;
    .registers 5

    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_22

    sget-object v1, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_21

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sget-object v2, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    monitor-exit v1

    :cond_22
    return-object v0

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v0
.end method
