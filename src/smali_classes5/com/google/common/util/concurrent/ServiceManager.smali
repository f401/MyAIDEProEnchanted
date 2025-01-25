.class public final Lcom/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;,
        Lcom/google/common/util/concurrent/ServiceManager$Listener;,
        Lcom/google/common/util/concurrent/ServiceManager$NoOpService;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;
    }
.end annotation


# static fields
.field private static final HEALTHY_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPED_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final services:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 125
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    .line 126
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ServiceManager$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->HEALTHY_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 138
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$2;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ServiceManager$2;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->STOPPED_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 209
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ServiceManager configured with no services.  Is your application configured properly?"

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;

    invoke-direct {v3, v4}, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;-><init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 215
    :cond_25
    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 216
    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    .line 217
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 219
    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;

    invoke-direct {v1, v0, v2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;-><init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 222
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v4, :cond_60

    const/4 v1, 0x1

    :goto_5a
    const-string v4, "Can only manage NEW services, %s"

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_39

    :cond_60
    const/4 v1, 0x0

    goto :goto_5a

    .line 226
    :cond_62
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->markReady()V

    .line 227
    return-void
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .registers 1

    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .registers 1

    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->STOPPED_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .registers 1

    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->HEALTHY_EVENT:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 274
    return-void
.end method

.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 254
    return-void
.end method

.method public awaitHealthy()V
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy()V

    .line 315
    return-void
.end method

.method public awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)V

    .line 331
    return-void
.end method

.method public awaitStopped()V
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped()V

    .line 354
    return-void
.end method

.method public awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped(JLjava/util/concurrent/TimeUnit;)V

    .line 368
    return-void
.end method

.method public isHealthy()Z
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 378
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 379
    const/4 v0, 0x0

    .line 382
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public servicesByState()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public startAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .registers 8

    .line 286
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 287
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v3

    .line 288
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v3, v1, :cond_21

    const/4 v1, 0x1

    :goto_1b
    const-string v4, "Service %s is %s, cannot start it."

    invoke-static {v1, v4, v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_21
    const/4 v1, 0x0

    goto :goto_1b

    .line 290
    :cond_23
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 292
    :try_start_35
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->tryStartTiming(Lcom/google/common/util/concurrent/Service;)V

    .line 293
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_3d} :catch_3e

    goto :goto_29

    .line 294
    :catch_3e
    move-exception v1

    .line 299
    sget-object v3, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 302
    :cond_58
    return-object p0
.end method

.method public startupTimes()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimes()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public stopAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 342
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    goto :goto_6

    .line 344
    :cond_16
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 408
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    .line 409
    const-string v2, "services"

    const-class v3, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-static {v3}, Lcom/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    return-object v0
.end method
