.class public Lcom/google/common/eventbus/AsyncEventBus;
.super Lcom/google/common/eventbus/EventBus;
.source "AsyncEventBus.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 39
    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->legacyAsync()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v0

    sget-object v1, Lcom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lcom/google/common/eventbus/EventBus$LoggingHandler;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 62
    const-string v0, "default"

    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->legacyAsync()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v1

    sget-object v2, Lcom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lcom/google/common/eventbus/EventBus$LoggingHandler;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .registers 5

    .line 52
    const-string v0, "default"

    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->legacyAsync()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 53
    return-void
.end method
