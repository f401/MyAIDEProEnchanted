.class public Lcom/google/common/eventbus/SubscriberExceptionContext;
.super Ljava/lang/Object;
.source "SubscriberExceptionContext.java"


# instance fields
.field private final event:Ljava/lang/Object;

.field private final eventBus:Lcom/google/common/eventbus/EventBus;

.field private final subscriber:Ljava/lang/Object;

.field private final subscriberMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/EventBus;

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->eventBus:Lcom/google/common/eventbus/EventBus;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->event:Ljava/lang/Object;

    .line 43
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriber:Ljava/lang/Object;

    .line 44
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriberMethod:Ljava/lang/reflect/Method;

    .line 45
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/Object;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->event:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventBus()Lcom/google/common/eventbus/EventBus;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->eventBus:Lcom/google/common/eventbus/EventBus;

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/Object;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriber:Ljava/lang/Object;

    return-object v0
.end method

.method public getSubscriberMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriberMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
