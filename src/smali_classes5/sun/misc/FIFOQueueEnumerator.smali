.class final Lsun/misc/FIFOQueueEnumerator;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field cursor:Lsun/misc/QueueElement;

.field queue:Lsun/misc/Queue;


# direct methods
.method constructor <init>(Lsun/misc/Queue;)V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lsun/misc/FIFOQueueEnumerator;->queue:Lsun/misc/Queue;

    .line 156
    iget-object v0, p1, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    iput-object v0, p0, Lsun/misc/FIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    .line 157
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lsun/misc/FIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .line 164
    iget-object v1, p0, Lsun/misc/FIFOQueueEnumerator;->queue:Lsun/misc/Queue;

    monitor-enter v1

    .line 165
    :try_start_3
    iget-object v0, p0, Lsun/misc/FIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    if-eqz v0, :cond_13

    .line 166
    iget-object v0, p0, Lsun/misc/FIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    .line 167
    iget-object v2, p0, Lsun/misc/FIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    iget-object v2, v2, Lsun/misc/QueueElement;->prev:Lsun/misc/QueueElement;

    iput-object v2, p0, Lsun/misc/FIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    .line 168
    iget-object v0, v0, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 170
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    .line 171
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "FIFOQueueEnumerator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
