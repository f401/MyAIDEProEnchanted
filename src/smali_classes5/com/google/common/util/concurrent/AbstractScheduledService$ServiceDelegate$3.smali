.class Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->doStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_33

    .line 258
    :try_start_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3a

    if-eq v0, v1, :cond_1d

    .line 267
    :try_start_13
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_33

    .line 273
    :goto_1c
    return-void

    .line 265
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_3a

    .line 267
    :try_start_24
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyStopped()V
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_33

    goto :goto_1c

    .line 270
    :catchall_33
    move-exception v0

    .line 271
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyFailed(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 267
    :catchall_3a
    move-exception v0

    :try_start_3b
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    throw v0
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_33
.end method
