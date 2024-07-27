.class final Labcd/mw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ow;->j6(ZJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:J

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Labcd/mw;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/mw;->DW:Ljava/lang/String;

    iput-wide p3, p0, Labcd/mw;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_0
    :try_start_1
    invoke-static {}, Labcd/sw;->DW()V

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/mw;->j6:Ljava/lang/String;

    move-object v4, v0

    :goto_1
    invoke-static {}, Labcd/ow;->DW()Ljava/io/File;

    move-result-object v5

    invoke-static {}, Labcd/ow;->FH()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_2
    iget-wide v8, p0, Labcd/mw;->FH:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Probes"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-static {v4, v5, v0, v1}, Labcd/gw;->j6(Ljava/lang/String;Ljava/io/File;J)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Labcd/ow;->Hw()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Labcd/ow;->j6(Z)Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move v0, v2

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening new probes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "Probes"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Labcd/ow;->j6(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/ow;->j6(Ljava/lang/ClassLoader;Z)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x4c3b02ab    # 4.902366E7f

    const v1, 0x1080082

    const-string v4, "backbone test probes loaded"

    invoke-static {v0, v1, v4}, Labcd/xw;->j6(IILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_4
    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {}, Labcd/ow;->v5()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_5
    invoke-static {}, Labcd/ow;->v5()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x2710

    :goto_5
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Labcd/ow;->Zo()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    invoke-static {}, Labcd/ow;->Zo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/32 v0, 0xc350

    :goto_7
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    :try_start_8
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_1
    :try_start_9
    iget-object v0, p0, Labcd/mw;->DW:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    move-object v4, v0

    goto/16 :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error loading probes"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    const-wide/32 v0, 0xea60

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_c
    const-string v1, "Probes"

    const-string v5, "Unexpected InterruptedException"

    invoke-static {v1, v5, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :cond_4
    const-wide/32 v0, 0x3a980

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_d
    const-string v1, "Probes"

    const-string v5, "Unexpected InterruptedException"

    invoke-static {v1, v5, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0

    :cond_5
    move v0, v3

    goto/16 :goto_3
.end method
