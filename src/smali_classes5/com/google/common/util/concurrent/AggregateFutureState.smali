.class abstract Lcom/google/common/util/concurrent/AggregateFutureState;
.super Ljava/lang/Object;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;,
        Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    .line 49
    const-class v1, Lcom/google/common/util/concurrent/AggregateFutureState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->log:Ljava/util/logging/Logger;

    .line 55
    :try_start_d
    new-instance v1, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;

    .line 57
    const-class v2, Lcom/google/common/util/concurrent/AggregateFutureState;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 58
    const-class v3, Lcom/google/common/util/concurrent/AggregateFutureState;

    const-string v4, "remaining"

    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_33

    move-object v2, v1

    .line 67
    :goto_25
    sput-object v2, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    .line 70
    if-eqz v0, :cond_32

    .line 71
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_32
    return-void

    .line 59
    :catchall_33
    move-exception v1

    .line 64
    new-instance v2, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V

    move-object v0, v1

    goto :goto_25
.end method

.method constructor <init>(I)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    .line 76
    iput p1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    .line 77
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AggregateFutureState;)Ljava/util/Set;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .registers 2

    .line 40
    iget v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    return v0
.end method

.method static synthetic access$310(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .registers 3

    .line 40
    iget v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    return v0
.end method


# virtual methods
.method abstract addInitialException(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final decrementRemainingAndGet()I
    .registers 2

    .line 122
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->decrementAndGetRemainingCount(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    move-result v0

    return v0
.end method

.method final getOrInitSeenExceptions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    .line 97
    if-nez v0, :cond_13

    .line 98
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;->addInitialException(Ljava/util/Set;)V

    .line 106
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->compareAndSetSeenExceptions(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V

    .line 113
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    .line 115
    :cond_13
    return-object v0
.end method
