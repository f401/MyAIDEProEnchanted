.class abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iput-object p2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .registers 4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    iget-object v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->changeActiveCounter(I)V

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    goto :goto_4

    :cond_19
    const/4 v0, -0x1

    goto :goto_c
.end method

.method detachObserver()V
    .registers 1

    return-void
.end method

.method isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method abstract shouldBeActive()Z
.end method
