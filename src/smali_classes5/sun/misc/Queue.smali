.class public Lsun/misc/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# instance fields
.field head:Lsun/misc/QueueElement;

.field length:I

.field tail:Lsun/misc/QueueElement;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/Queue;->length:I

    .line 42
    iput-object v1, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    .line 43
    iput-object v1, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    .line 46
    return-void
.end method


# virtual methods
.method public dequeue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lsun/misc/Queue;->dequeue(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dequeue(J)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 91
    :goto_1
    :try_start_1
    iget-object v0, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    if-nez v0, :cond_c

    .line 92
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    .line 90
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_c
    :try_start_c
    iget-object v0, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    .line 95
    iget-object v1, v0, Lsun/misc/QueueElement;->prev:Lsun/misc/QueueElement;

    iput-object v1, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    .line 96
    if-nez v1, :cond_21

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    .line 101
    :goto_17
    iget v1, p0, Lsun/misc/Queue;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/misc/Queue;->length:I

    .line 102
    iget-object v0, v0, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_9

    monitor-exit p0

    return-object v0

    .line 99
    :cond_21
    const/4 v2, 0x0

    :try_start_22
    iput-object v2, v1, Lsun/misc/QueueElement;->next:Lsun/misc/QueueElement;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_9

    goto :goto_17
.end method

.method public dump(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 132
    :try_start_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsun/misc/Queue;->length:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " elt(s); head = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_c4

    if-nez v0, :cond_6b

    const-string v0, "null"

    :goto_33
    :try_start_33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tail = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v0, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_c4

    if-nez v0, :cond_81

    const-string v0, "null"

    :goto_41
    :try_start_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    .line 137
    const/4 v0, 0x0

    .line 138
    :goto_4e
    if-eqz v1, :cond_97

    .line 139
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    iget-object v2, v1, Lsun/misc/QueueElement;->next:Lsun/misc/QueueElement;

    move-object v0, v1

    move-object v1, v2

    goto :goto_4e

    .line 134
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    iget-object v3, v3, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 135
    :cond_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    iget-object v3, v3, Lsun/misc/QueueElement;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 143
    :cond_97
    iget-object v1, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    if-eq v0, v1, :cond_bb

    .line 144
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  tail != last: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_bb
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_41 .. :try_end_c2} :catchall_c4

    .line 147
    monitor-exit p0

    return-void

    .line 131
    :catchall_c4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final elements()Ljava/util/Enumeration;
    .registers 2

    monitor-enter p0

    .line 119
    :try_start_1
    new-instance v0, Lsun/misc/LIFOQueueEnumerator;

    invoke-direct {v0, p0}, Lsun/misc/LIFOQueueEnumerator;-><init>(Lsun/misc/Queue;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enqueue(Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 53
    :try_start_1
    new-instance v0, Lsun/misc/QueueElement;

    invoke-direct {v0, p1}, Lsun/misc/QueueElement;-><init>(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    if-nez v1, :cond_16

    .line 56
    iput-object v0, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    .line 57
    iput-object v0, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lsun/misc/Queue;->length:I

    .line 65
    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_27

    .line 66
    monitor-exit p0

    return-void

    .line 60
    :cond_16
    :try_start_16
    iget-object v1, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    iput-object v1, v0, Lsun/misc/QueueElement;->next:Lsun/misc/QueueElement;

    .line 61
    iget-object v1, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    iput-object v0, v1, Lsun/misc/QueueElement;->prev:Lsun/misc/QueueElement;

    .line 62
    iput-object v0, p0, Lsun/misc/Queue;->head:Lsun/misc/QueueElement;

    .line 63
    iget v0, p0, Lsun/misc/Queue;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/Queue;->length:I
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_27

    goto :goto_11

    .line 52
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lsun/misc/Queue;->tail:Lsun/misc/QueueElement;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final reverseElements()Ljava/util/Enumeration;
    .registers 2

    monitor-enter p0

    .line 128
    :try_start_1
    new-instance v0, Lsun/misc/FIFOQueueEnumerator;

    invoke-direct {v0, p0}, Lsun/misc/FIFOQueueEnumerator;-><init>(Lsun/misc/Queue;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
