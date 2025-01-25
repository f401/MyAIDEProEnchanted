.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final this$0:Lokio/Pipe;

.field final timeout:Lokio/PushableTimeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 3

    .line 108
    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lokio/PushableTimeout;

    invoke-direct {v0}, Lokio/PushableTimeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 172
    :try_start_6
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_e

    monitor-exit v1

    .line 191
    :cond_d
    :goto_d
    return-void

    .line 174
    :cond_e
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v2}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 175
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v0}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v0

    .line 181
    :goto_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_52

    .line 183
    if-eqz v0, :cond_d

    .line 184
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 186
    :try_start_28
    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5d

    .line 188
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v0}, Lokio/PushableTimeout;->pop()V

    goto :goto_d

    .line 177
    :cond_31
    :try_start_31
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_55

    .line 178
    :cond_45
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Pipe;->sinkClosed:Z

    .line 179
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1c

    .line 181
    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_52

    throw v0

    .line 177
    :cond_55
    :try_start_55
    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_52

    .line 188
    :catchall_5d
    move-exception v0

    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v1}, Lokio/PushableTimeout;->pop()V

    throw v0
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 150
    :try_start_6
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_55

    .line 152
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v2}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 153
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v0}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v0

    .line 157
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_4b

    .line 159
    if-eqz v0, :cond_2e

    .line 160
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 162
    :try_start_26
    invoke-interface {v0}, Lokio/Sink;->flush()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_4e

    .line 164
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v0}, Lokio/PushableTimeout;->pop()V

    .line 167
    :cond_2e
    return-void

    .line 154
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw v0

    .line 164
    :catchall_4e
    move-exception v0

    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v1}, Lokio/PushableTimeout;->pop()V

    throw v0

    .line 150
    :cond_55
    :try_start_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_4b
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 194
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    .line 112
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 114
    :try_start_8
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_7c

    .line 116
    :goto_e
    cmp-long v2, p2, v6

    if-lez v2, :cond_20

    .line 117
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v2}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 118
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-static {v0}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v0

    .line 135
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_56

    .line 137
    if-eqz v0, :cond_34

    .line 138
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 140
    :try_start_2c
    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_75

    .line 142
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v0}, Lokio/PushableTimeout;->pop()V

    .line 145
    :cond_34
    return-void

    .line 122
    :cond_35
    :try_start_35
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sourceClosed:Z

    if-nez v2, :cond_6d

    .line 124
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-wide v2, v2, Lokio/Pipe;->maxBufferSize:J

    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v4, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 125
    cmp-long v4, v2, v6

    if-nez v4, :cond_59

    .line 126
    iget-object v2, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v3}, Lokio/PushableTimeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_e

    .line 135
    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_56

    throw v0

    .line 130
    :cond_59
    :try_start_59
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 131
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v4, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4, p1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 132
    sub-long/2addr p2, v2

    .line 133
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_e

    .line 122
    :cond_6d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_56

    .line 142
    :catchall_75
    move-exception v0

    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {v1}, Lokio/PushableTimeout;->pop()V

    throw v0

    .line 114
    :cond_7c
    :try_start_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_56
.end method
