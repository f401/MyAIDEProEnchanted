.class Landroid/support/v4/content/e;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/g;-><init>()V
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
.field final j6:Landroid/support/v4/content/g;


# direct methods
.method constructor <init>(Landroid/support/v4/content/g;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/content/e;->j6:Landroid/support/v4/content/g;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    const-string v0, "An error occurred while executing doInBackground()"

    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/content/e;->j6:Landroid/support/v4/content/g;

    invoke-virtual {v2, v1}, Landroid/support/v4/content/g;->v5(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_b} :catch_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_b} :catch_13
    .catchall {:try_start_2 .. :try_end_b} :catchall_c

    goto :goto_2c

    :catchall_c
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_13
    move-exception v0

    iget-object v0, p0, Landroid/support/v4/content/e;->j6:Landroid/support/v4/content/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/g;->v5(Ljava/lang/Object;)V

    goto :goto_2c

    :catch_1b
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_26
    move-exception v0

    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method
