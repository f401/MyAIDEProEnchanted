.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private final mEnforceMainThread:Z

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/FastSafeIterableMap",
            "<",
            "Landroidx/lifecycle/LifecycleObserver;",
            "Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/LifecycleOwner;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    new-instance v0, Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    iput v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    return-void
.end method

.method private backwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_1c
    iget-object v3, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1c

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event down from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    return-void
.end method

.method private calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v1, v0

    :goto_12
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    :goto_28
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    return-object v0

    :cond_33
    move-object v1, v2

    goto :goto_12

    :cond_35
    move-object v0, v2

    goto :goto_28
.end method

.method public static createUnsafe(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleRegistry;
    .registers 3

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    return-object v0
.end method

.method private enforceMainThreadIfNeeded(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be called on the main thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private forwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_1c
    iget-object v3, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v3, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1c

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    return-void
.end method

.method private isSynced()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return v1

    :cond_a
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v0, :cond_2f

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v0, :cond_2f

    move v0, v1

    :goto_2d
    move v1, v0

    goto :goto_9

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method static min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private moveToState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-nez v0, :cond_10

    iget v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz v0, :cond_13

    :cond_10
    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    goto :goto_5

    :cond_13
    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    goto :goto_5
.end method

.method private popParentState()V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_4f

    :cond_b
    :goto_b
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    if-nez v1, :cond_4c

    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_2c

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->backwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_2c
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_b

    if-eqz v1, :cond_b

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_b

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->forwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    :cond_4c
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .registers 7

    const-string v0, "addObserver"

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_1d

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    :goto_d
    new-instance v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v3, p1, v0}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1, v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz v0, :cond_20

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_d

    :cond_20
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1c

    iget v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-nez v1, :cond_32

    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v1, :cond_65

    :cond_32
    const/4 v1, 0x1

    :goto_33
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    iget v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    :goto_3d
    iget-object v4, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_80

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v2, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {v3, v0, v2}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    goto :goto_3d

    :cond_65
    const/4 v1, 0x0

    goto :goto_33

    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_80
    if-nez v1, :cond_85

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    :cond_85
    iget v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    goto :goto_1c
.end method

.method public getCurrentState()Landroidx/lifecycle/Lifecycle$State;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public getObserverCount()I
    .registers 2

    const-string v0, "getObserverCount"

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    return v0
.end method

.method public handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    const-string v0, "handleLifecycleEvent"

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public markState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .registers 3

    const-string v0, "removeObserver"

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 3

    const-string v0, "setCurrentState"

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
