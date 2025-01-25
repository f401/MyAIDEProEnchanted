.class Lorg/apache/tools/ant/taskdefs/Parallel$1;
.super Ljava/lang/Thread;
.source "Parallel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/Parallel;->spinThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/Parallel;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    monitor-enter p0

    .line 309
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$100(Lorg/apache/tools/ant/taskdefs/Parallel;)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 312
    :goto_10
    cmp-long v4, v0, v2

    if-gez v4, :cond_1e

    .line 313
    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_10

    .line 316
    :cond_1e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_25} :catch_40
    .catchall {:try_start_1 .. :try_end_25} :catchall_42

    .line 317
    :try_start_25
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$302(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z

    .line 318
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$402(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3d

    .line 324
    :goto_3b
    monitor-exit p0

    return-void

    .line 320
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_40} :catch_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_42

    .line 321
    :catch_40
    move-exception v0

    goto :goto_3b

    .line 308
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method
