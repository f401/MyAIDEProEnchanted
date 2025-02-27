.class final Lcom/google/common/util/concurrent/ListenerCallQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue",
            "<T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 56
    sget-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private enqueueHelper(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 103
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "label"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_d
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;

    .line 107
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->add(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V

    goto :goto_13

    .line 109
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 110
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 75
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    new-instance v1, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public dispatch()V
    .registers 3

    .line 119
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 120
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->dispatch()V

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 122
    :cond_19
    return-void
.end method

.method public enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueueHelper(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueueHelper(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V

    .line 100
    return-void
.end method
