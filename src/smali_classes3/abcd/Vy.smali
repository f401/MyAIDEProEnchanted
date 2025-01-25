.class Labcd/Vy;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Xy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final j6:Labcd/Xy;


# direct methods
.method constructor <init>(Labcd/Xy;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Labcd/Vy;->j6:Labcd/Xy;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/Vy;->j6:Labcd/Xy;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Xy;->DW(Labcd/Xy;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_25

    :catch_a
    move-exception v0

    iget-object v0, p0, Labcd/Vy;->j6:Labcd/Xy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Xy;->DW(Labcd/Xy;Ljava/lang/Object;)V

    goto :goto_25

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1f
    move-exception v0

    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method
