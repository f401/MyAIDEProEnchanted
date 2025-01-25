.class final Lcom/google/android/gms/internal/ads/vD;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
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
            "Lcom/google/android/gms/internal/ads/uD<",
            "TT;>;"
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
            "Lcom/google/android/gms/internal/ads/uD<",
            "TT;>;IJ)V"
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
    .registers 13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->j6()V

    return-void

    :cond_d
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->DW()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vD;->Hw:J

    sub-long v6, v4, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->DW()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V

    return-void

    :cond_2c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_72

    const/4 v9, 0x2

    if-eq v0, v9, :cond_6a

    const/4 v10, 0x3

    if-eq v0, v10, :cond_38

    goto :goto_69

    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_51

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_51
    if-eq p1, v9, :cond_69

    if-ne p1, v1, :cond_57

    const/4 p1, 0x1

    goto :goto_5a

    :cond_57
    iget p1, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    add-int/2addr p1, v1

    :goto_5a
    iput p1, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(J)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJ)V

    return-void

    :cond_72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V

    return-void

    :cond_7b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/vD;->Zo:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public final j6(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;)Lcom/google/android/gms/internal/ads/vD;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->u7:Lcom/google/android/gms/internal/ads/tD;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/tD;Lcom/google/android/gms/internal/ads/vD;)Lcom/google/android/gms/internal/ads/vD;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->j6()V

    return-void
.end method

.method public final j6(Z)V
    .registers 10

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->v5:Ljava/io/IOException;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_24

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_24

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->VH:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->VH:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    :goto_24
    if-eqz p1, :cond_39

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vD;->DW()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vD;->DW:Lcom/google/android/gms/internal/ads/uD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/vD;->Hw:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/uD;->j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V

    :cond_39
    return-void
.end method

.method public final run()V
    .registers 7

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->VH:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wD;->DW()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_9e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_24} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_24} :catch_5e
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_24} :catch_4b

    const-string v5, "load:"

    if-eqz v4, :cond_2d

    :try_start_28
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_2d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_9e
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_35} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_35} :catch_5e
    .catch Ljava/lang/Error; {:try_start_28 .. :try_end_35} :catch_4b

    :try_start_35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wD;->j6()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3e

    :try_start_3a
    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    goto :goto_43

    :catchall_3e
    move-exception v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    throw v3

    :cond_43
    :goto_43
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v3, :cond_4a

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4a} :catch_9e
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_4a} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_4a} :catch_5e
    .catch Ljava/lang/Error; {:try_start_3a .. :try_end_4a} :catch_4b

    :cond_4a
    return-void

    :catch_4b
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v0, :cond_5d

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5d
    throw v1

    :catch_5e
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v0, :cond_74

    new-instance v0, Lcom/google/android/gms/internal/ads/xD;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xD;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_74
    return-void

    :catch_75
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v0, :cond_8b

    new-instance v0, Lcom/google/android/gms/internal/ads/xD;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xD;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8b
    return-void

    :catch_8c
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vD;->j6:Lcom/google/android/gms/internal/ads/wD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wD;->DW()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v0, :cond_9d

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9d
    return-void

    :catch_9e
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vD;->gn:Z

    if-nez v1, :cond_aa

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_aa
    return-void
.end method
