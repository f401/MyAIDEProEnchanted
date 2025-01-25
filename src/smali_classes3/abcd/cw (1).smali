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
    .registers 2

    iput-object p1, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "Cache"

    const-string v1, "Writing thread started"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    iget-object v1, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->j6(Labcd/fw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "Cache"

    const-string v1, "HTTP GONE encountered - exiting thread"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const-wide/16 v1, 0x2710

    :try_start_22
    iget-object v3, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v3}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v3}, Labcd/fw;->v5(Labcd/fw;)Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_16c

    :cond_3a
    :try_start_3a
    iget-object v3, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v3}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v3, "Cache"

    const-string v4, "Waiting for next event."

    invoke-static {v3, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v3}, Labcd/fw;->Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/_v;

    invoke-static {}, Labcd/fw;->j6()Labcd/_v;

    move-result-object v4

    if-ne v3, v4, :cond_5d

    goto :goto_c

    :cond_5d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v3}, Labcd/fw;->VH(Labcd/fw;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_3a .. :try_end_6b} :catchall_177

    :try_start_6b
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_160

    :try_start_75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_7b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_ac

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    cmp-long v12, v10, v1

    if-ltz v12, :cond_92

    const-string v6, "Cache"

    const-string v7, "Collected events for 10000ms. Finishing up file."

    :goto_8e
    invoke-static {v6, v7}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_92
    iget-object v10, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v10}, Labcd/fw;->Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v10

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x3e8

    invoke-interface {v10, v12, v13, v11}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labcd/_v;

    if-nez v10, :cond_a9

    const-string v6, "Cache"

    const-string v7, "No events for 1000ms. Finishing up file."

    goto :goto_8e

    :cond_a9
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    iget-object v10, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v10}, Labcd/fw;->Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    const/4 v10, 0x0

    :goto_b6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_dd

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Labcd/_v;

    invoke-static {}, Labcd/fw;->j6()Labcd/_v;

    move-result-object v12

    if-eq v11, v12, :cond_d9

    invoke-virtual {v11}, Labcd/_v;->j6()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v11, 0xa

    invoke-virtual {v5, v11}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_da

    :cond_d9
    const/4 v10, 0x1

    :goto_da
    add-int/lit8 v9, v9, 0x1

    goto :goto_b6

    :cond_dd
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v10, :cond_7b

    const-string v6, "Cache"

    const-string v7, "Received flush. Finishing up file."

    goto :goto_8e

    :goto_e8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_f2
    .catchall {:try_start_75 .. :try_end_f2} :catchall_154

    :try_start_f2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_160

    :try_start_f5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v5}, Labcd/fw;->gn(Labcd/fw;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_14c

    iget-object v4, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v4}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_114
    .catchall {:try_start_f5 .. :try_end_114} :catchall_177

    :try_start_114
    iget-object v5, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v5}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_11e
    .catchall {:try_start_114 .. :try_end_11e} :catchall_149

    :try_start_11e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Staged file with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " events for network I/O: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Cache"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_147
    .catchall {:try_start_11e .. :try_end_147} :catchall_177

    goto/16 :goto_c

    :catchall_149
    move-exception v3

    :try_start_14a
    monitor-exit v4
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    :try_start_14b
    throw v3

    :cond_14c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not move file to outgoing directory"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_154
    .catchall {:try_start_14b .. :try_end_154} :catchall_177

    :catchall_154
    move-exception v3

    :try_start_155
    throw v3
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_156

    :catchall_156
    move-exception v6

    :try_start_157
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    goto :goto_15f

    :catchall_15b
    move-exception v5

    :try_start_15c
    invoke-static {v3, v5}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_15f
    throw v6
    :try_end_160
    .catchall {:try_start_15c .. :try_end_160} :catchall_160

    :catchall_160
    move-exception v3

    :try_start_161
    throw v3
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_162

    :catchall_162
    move-exception v5

    :try_start_163
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_167

    goto :goto_16b

    :catchall_167
    move-exception v4

    :try_start_168
    invoke-static {v3, v4}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_16b
    throw v5

    :catchall_16c
    move-exception v3

    iget-object v4, p0, Labcd/cw;->j6:Labcd/fw;

    invoke-static {v4}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_177
    .catchall {:try_start_168 .. :try_end_177} :catchall_177

    :catchall_177
    move-exception v3

    const-string v4, "Error writing events to disk"

    invoke-static {v4, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_17d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_180
    .catch Ljava/lang/InterruptedException; {:try_start_17d .. :try_end_180} :catch_182

    goto/16 :goto_c

    :catch_182
    move-exception v1

    const-string v2, "Cache"

    const-string v3, "Unexpected InterruptedException"

    invoke-static {v2, v3, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c
.end method
