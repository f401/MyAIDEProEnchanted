.class final Lsun/misc/LIFOQueueEnumerator;
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

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lsun/misc/LIFOQueueEnumerator;->queue:Lsun/misc/Queue;

    .line 181
    iget-object v0, p1, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    iput-object v0, p0, Lsun/misc/LIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    .line 182
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lsun/misc/LIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

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

    .line 189
    iget-object v1, p0, Lsun/misc/LIFOQueueEnumerator;->queue:Lsun/misc/Queue;

    monitor-enter v1

    .line 190
    :try_start_3
    iget-object v0, p0, Lsun/misc/LIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    if-eqz v0, :cond_13

    .line 191
    iget-object v0, p0, Lsun/misc/LIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    .line 192
    iget-object v2, p0, Lsun/misc/LIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    iget-object v2, v2, Lsun/misc/QueueElement;->next:Lsun/misc/QueueElement;

    iput-object v2, p0, Lsun/misc/LIFOQueueEnumerator;->cursor:Lsun/misc/QueueElement;

    .line 193
    iget-object v0, v0, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 195
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    .line 196
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "LIFOQueueEnumerator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
