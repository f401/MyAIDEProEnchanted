.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Landroidx/lifecycle/MethodCallsLogger;

    invoke-direct {v2}, Landroidx/lifecycle/MethodCallsLogger;-><init>()V

    iget-object v3, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    array-length v4, v3

    move v1, v0

    :goto_a
    if-ge v1, v4, :cond_14

    aget-object v5, v3, v1

    invoke-interface {v5, p1, p2, v0, v2}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    array-length v3, v1

    :goto_17
    if-ge v0, v3, :cond_22

    aget-object v4, v1, v0

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v2}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_22
    return-void
.end method
