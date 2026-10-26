.class Labcd/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/fw;->j6(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/fw;


# direct methods
.method constructor <init>(Labcd/fw;)V
    .locals 0

    iput-object p1, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, 0x2710

    const/4 v3, 0x0

    const-string v0, "Cache"

    const-string v1, "Writing thread started"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->j6(Labcd/fw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Cache"

    const-string v1, "HTTP GONE encountered - exiting thread"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->v5(Labcd/fw;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v0, "Cache"

    const-string v1, "Waiting for next event."

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/_v;

    invoke-static {}, Labcd/fw;->j6()Labcd/_v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->VH(Labcd/fw;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v0

    sub-long/2addr v0, v8

    cmp-long v0, v0, v12

    if-ltz v0, :cond_3

    const-string v0, "Collected events for 10000ms. Finishing up file."

    :goto_2
    :try_start_4
    const-string v1, "Cache"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->gn(Labcd/fw;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Staged file with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events for network I/O: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cache"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Error writing events to disk"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x2710

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cache"

    const-string v2, "Unexpected InterruptedException"

    invoke-static {v1, v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    :try_start_a
    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v10, 0x3e8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v10, v11, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/_v;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v0, :cond_4

    const-string v0, "No events for 1000ms. Finishing up file."

    goto/16 :goto_2

    :cond_4
    :try_start_b
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move v1, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/_v;

    invoke-static {}, Labcd/fw;->j6()Labcd/_v;

    move-result-object v10

    if-eq v0, v10, :cond_6

    invoke-virtual {v0}, Labcd/_v;->j6()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/io/BufferedWriter;->write(I)V

    move v0, v1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v0

    if-eqz v1, :cond_9

    const-string v0, "Received flush. Finishing up file."

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not move file to outgoing directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_f
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_5
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :goto_6
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catchall_6
    move-exception v2

    :try_start_14
    invoke-static {v0, v2}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_5

    :catchall_7
    move-exception v2

    :try_start_15
    invoke-static {v0, v2}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_8
    move-exception v0

    iget-object v1, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_9
    move v2, v0

    goto/16 :goto_1
.end method
