.class Lorg/apache/tools/ant/types/resources/FailFast;
.super Ljava/lang/Object;
.source "FailFast.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAP:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tools/ant/types/resources/FailFast;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final parent:Ljava/lang/Object;

.field private wrapped:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_1d

    .line 79
    if-eqz p2, :cond_15

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 84
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    .line 85
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->add(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 87
    :cond_14
    return-void

    .line 80
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot wrap null iterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parent object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static add(Lorg/apache/tools/ant/types/resources/FailFast;)V
    .registers 4

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v0, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    sget-object v2, Lorg/apache/tools/ant/types/resources/FailFast$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/FailFast$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 50
    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v0

    return-void

    .line 48
    :catchall_16
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v1

    throw v0
.end method

.method private static failFast(Lorg/apache/tools/ant/types/resources/FailFast;)V
    .registers 3

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v0, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 61
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1d

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v0

    return-void

    .line 62
    :cond_17
    :try_start_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    .line 59
    :catchall_1d
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v1

    throw v0
.end method

.method static invalidate(Ljava/lang/Object;)V
    .registers 3

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v0, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 43
    if-eqz v0, :cond_10

    .line 44
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 46
    :cond_10
    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v0

    return-void

    .line 41
    :catchall_14
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v1

    throw v0
.end method

.method static synthetic lambda$add$0(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private static remove(Lorg/apache/tools/ant/types/resources/FailFast;)V
    .registers 3

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v0, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 54
    if-eqz v0, :cond_12

    .line 55
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 57
    :cond_12
    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v0

    return-void

    .line 52
    :catchall_16
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    if-nez v0, :cond_6

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_5
    return v0

    .line 98
    :cond_6
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->failFast(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .registers 4

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 112
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->failFast(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 114
    :try_start_e
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_24

    .line 116
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_23

    .line 117
    iput-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    .line 118
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->remove(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 114
    :cond_23
    return-object v0

    .line 116
    :catchall_24
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_32

    .line 117
    iput-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    .line 118
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->remove(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 120
    :cond_32
    throw v0

    .line 110
    :cond_33
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
