.class final Lcom/google/android/gms/internal/ads/vD;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/wD;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/uD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/uD",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final FH:I

.field private final Hw:J

.field private volatile VH:Ljava/lang/Thread;

.field private Zo:I

.field private volatile gn:Z

.field private final j6:Lcom/google/android/gms/internal/ads/wD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final u7:Lcom/google/android/gms/internal/ads/tD;

.field private v5:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tD;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/uD",
            "<TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iput p5, p0, Lcom/google/android/gms/internal/ads/vD;->FH:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/vD;->Hw:J

    return-void
.end method

.method private final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;Lcom/google/android/gms/internal/ads/vD;)Lcom/google/android/gms/internal/ads/vD;

    return-void
.end method

.method private final j6()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tD;->DW(Lcom/google/android/gms/internal/ads/tD;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;)Lcom/google/android/gms/internal/ads/vD;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->j6()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->DW()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vD;->Hw:J

    sub-long v4, v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->DW()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v7, :cond_7

    if-eq v0, v8, :cond_6

    if-ne v0, v9, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I

    move-result v0

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    :cond_4
    if-eq v0, v8, :cond_0

    if-ne v0, v7, :cond_5

    move v0, v7

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(J)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJ)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V

    goto :goto_0

    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method public final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    if-gt v1, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    throw v0
.end method

.method public final j6(J)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;)Lcom/google/android/gms/internal/ads/vD;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;Lcom/google/android/gms/internal/ads/vD;)Lcom/google/android/gms/internal/ads/vD;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->j6()V

    goto :goto_1
.end method

.method public final j6(Z)V
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->DW()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/vD;->Hw:J

    sub-long v4, v2, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->VH:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->VH:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final run()V
    .registers 5

    const/4 v2, 0x2

    const/4 v3, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->VH:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "load:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->j6()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "load:"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->DW()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    throw v0

    :catch_3
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "OutOfMemory error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/xD;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/xD;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/xD;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/xD;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
