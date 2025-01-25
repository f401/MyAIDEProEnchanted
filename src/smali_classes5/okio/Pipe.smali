.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Pipe$PipeSink;,
        Lokio/Pipe$PipeSource;
    }
.end annotation


# instance fields
.field final buffer:Lokio/Buffer;

.field private foldedSink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field sinkClosed:Z

.field private final source:Lokio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 42
    new-instance v0, Lokio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lokio/Pipe$PipeSink;-><init>(Lokio/Pipe;)V

    iput-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    .line 43
    new-instance v0, Lokio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lokio/Pipe$PipeSource;-><init>(Lokio/Pipe;)V

    iput-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    .line 47
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_21

    .line 50
    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    .line 51
    return-void

    .line 48
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxBufferSize < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lokio/Pipe;)Lokio/Sink;
    .registers 2

    .line 37
    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object v0
.end method


# virtual methods
.method public fold(Lokio/Sink;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    :goto_0
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 74
    :try_start_3
    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    if-nez v0, :cond_4a

    .line 76
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Pipe;->sourceClosed:Z

    .line 78
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    .line 79
    monitor-exit v1

    return-void

    .line 82
    :cond_16
    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    .line 83
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 84
    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    iget-wide v4, v3, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 85
    iget-object v3, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_52

    .line 88
    :try_start_2a
    iget-wide v4, v2, Lokio/Buffer;->size:J

    invoke-interface {p1, v2, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 91
    if-eqz v0, :cond_43

    .line 92
    invoke-interface {p1}, Lokio/Sink;->close()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_35

    goto :goto_0

    .line 98
    :catchall_35
    move-exception v0

    .line 99
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 100
    const/4 v2, 0x1

    :try_start_3a
    iput-boolean v2, p0, Lokio/Pipe;->sourceClosed:Z

    .line 101
    iget-object v2, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_47

    throw v0

    .line 94
    :cond_43
    :try_start_43
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_35

    goto :goto_0

    .line 102
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 74
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "sink already folded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v0
.end method

.method public final sink()Lokio/Sink;
    .registers 2

    .line 58
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final source()Lokio/Source;
    .registers 2

    .line 54
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method
