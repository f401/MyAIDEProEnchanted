.class Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
.super Ljava/lang/Object;
.source "Parallel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private finished:Z

.field private task:Lorg/apache/tools/ant/Task;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 441
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->task:Lorg/apache/tools/ant/Task;

    .line 443
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .registers 2

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method interrupt()V
    .registers 2

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 486
    return-void
.end method

.method isFinished()Z
    .registers 2

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    return v0
.end method

.method public run()V
    .registers 4

    .line 452
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/property/LocalProperties;->copy()V

    .line 453
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->thread:Ljava/lang/Thread;

    .line 454
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->perform()V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_30

    .line 461
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 462
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 464
    monitor-exit v1

    .line 465
    :goto_2c
    return-void

    .line 464
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v0

    .line 455
    :catchall_30
    move-exception v0

    .line 456
    :try_start_31
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->exception:Ljava/lang/Throwable;

    .line 457
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$500(Lorg/apache/tools/ant/taskdefs/Parallel;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$302(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_59

    .line 461
    :cond_41
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 462
    const/4 v0, 0x1

    :try_start_49
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 464
    monitor-exit v1

    goto :goto_2c

    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_56

    throw v0

    .line 461
    :catchall_59
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 462
    const/4 v2, 0x1

    :try_start_62
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 463
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 464
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_6f

    .line 465
    throw v0

    .line 464
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0
.end method
