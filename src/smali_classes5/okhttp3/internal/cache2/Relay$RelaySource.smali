.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v2, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v2, :cond_22

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_29

    if-eqz v0, :cond_5

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_136

    iget-object v6, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v6

    :goto_7
    :try_start_7
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v8, v2, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_53

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-boolean v0, v0, Lokhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v0, :cond_1b

    monitor-exit v6

    const-wide/16 v4, -0x1

    :goto_1a
    return-wide v4

    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v1}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_7

    :catchall_29
    move-exception v0

    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v0, 0x1

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_29

    :goto_36
    const/4 v1, 0x2

    if-ne v0, v1, :cond_66

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v0, v8, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-wide v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const-wide/16 v6, 0x20

    add-long v1, v2, v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    goto :goto_1a

    :cond_53
    :try_start_53
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long v2, v8, v0

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11c

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_29

    const/4 v0, 0x2

    goto :goto_36

    :cond_66
    :try_start_66
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v2, v2, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v8, v9}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_109

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    :try_start_84
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    iput-object v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    const-wide/16 v4, -0x1

    goto :goto_1a

    :catchall_92
    move-exception v0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_84 .. :try_end_94} :catchall_92

    throw v0

    :cond_95
    :try_start_95
    invoke-static {v10, v11, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v6, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    const-wide/16 v0, 0x20

    add-long v7, v8, v0

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v9

    invoke-virtual/range {v6 .. v11}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1
    :try_end_bc
    .catchall {:try_start_95 .. :try_end_bc} :catchall_109

    :try_start_bc
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v0, v2, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v6, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_eb

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-object v6, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v6, v6, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    :cond_eb
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_bc .. :try_end_f3} :catchall_106

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    :try_start_f6
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    iput-object v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_1a

    :catchall_103
    move-exception v0

    monitor-exit v1
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_103

    throw v0

    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v1
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    :try_start_108
    throw v0
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_109

    :catchall_109
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    :try_start_10d
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_118
    .catchall {:try_start_10d .. :try_end_118} :catchall_119

    throw v0

    :catchall_119
    move-exception v0

    :try_start_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v0

    :cond_11c
    sub-long v0, v8, v0

    :try_start_11e
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-wide v8, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v2, v8, v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    monitor-exit v6
    :try_end_134
    .catchall {:try_start_11e .. :try_end_134} :catchall_29

    goto/16 :goto_1a

    :cond_136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
