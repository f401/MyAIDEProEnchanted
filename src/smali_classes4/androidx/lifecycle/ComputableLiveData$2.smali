.class Landroidx/lifecycle/ComputableLiveData$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v2, 0x0

    move v0, v1

    :goto_e
    :try_start_e
    iget-object v4, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v4, v4, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v2

    move v0, v3

    goto :goto_e

    :cond_22
    if-eqz v0, :cond_2b

    iget-object v4, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v4, v4, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_3f

    :cond_2b
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_32
    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3e
    return-void

    :catchall_3f
    move-exception v0

    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_48
    move v0, v1

    goto :goto_32
.end method
