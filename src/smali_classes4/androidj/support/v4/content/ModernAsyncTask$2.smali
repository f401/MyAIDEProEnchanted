.class Landroidj/support/v4/content/ModernAsyncTask$2;
.super Landroidj/support/v4/content/ModernAsyncTask$WorkerRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/content/ModernAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroidj/support/v4/content/ModernAsyncTask;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->this$0:Landroidj/support/v4/content/ModernAsyncTask;

    invoke-direct {p0}, Landroidj/support/v4/content/ModernAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->this$0:Landroidj/support/v4/content/ModernAsyncTask;

    invoke-static {v0}, Landroidj/support/v4/content/ModernAsyncTask;->access$000(Landroidj/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    :try_start_d
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->this$0:Landroidj/support/v4/content/ModernAsyncTask;

    iget-object v2, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidj/support/v4/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1b} :catch_21
    .catchall {:try_start_d .. :try_end_1b} :catchall_2d

    iget-object v0, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->this$0:Landroidj/support/v4/content/ModernAsyncTask;

    invoke-virtual {v0, v1}, Landroidj/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_21
    move-exception v0

    :try_start_22
    iget-object v2, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->this$0:Landroidj/support/v4/content/ModernAsyncTask;

    invoke-static {v2}, Landroidj/support/v4/content/ModernAsyncTask;->access$100(Landroidj/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    iget-object v2, p0, Landroidj/support/v4/content/ModernAsyncTask$2;->this$0:Landroidj/support/v4/content/ModernAsyncTask;

    invoke-virtual {v2, v1}, Landroidj/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
