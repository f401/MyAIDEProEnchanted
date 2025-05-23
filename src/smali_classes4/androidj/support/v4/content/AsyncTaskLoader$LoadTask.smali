.class final Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;
.super Landroidj/support/v4/content/ModernAsyncTask;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mDone:Ljava/util/concurrent/CountDownLatch;

.field final this$0:Landroidj/support/v4/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Landroidj/support/v4/content/AsyncTaskLoader;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroidj/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroidj/support/v4/content/ModernAsyncTask;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroidj/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroidj/support/v4/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;
    :try_end_5
    .catch Landroidj/support/v4/os/OperationCanceledException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {p0}, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_f

    throw v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroidj/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroidj/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroidj/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroidj/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    return-void
.end method

.method public waitForLoader()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
