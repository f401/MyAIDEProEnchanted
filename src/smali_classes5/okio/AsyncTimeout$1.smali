.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lokio/AsyncTimeout;

.field final val$sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 208
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_11
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    .line 209
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 214
    return-void

    .line 210
    :catch_11
    move-exception v0

    .line 211
    :try_start_12
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_19

    .line 213
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 195
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_11
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    .line 196
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 201
    return-void

    .line 197
    :catch_11
    move-exception v0

    .line 198
    :try_start_12
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_19

    .line 200
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 218
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 162
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    move-wide v4, p2

    .line 164
    :goto_9
    cmp-long v0, v4, v2

    if-lez v0, :cond_48

    .line 167
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    move-wide v0, v2

    :goto_10
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_23

    .line 168
    iget v7, v6, Lokio/Segment;->limit:I

    iget v8, v6, Lokio/Segment;->pos:I

    .line 169
    sub-int/2addr v7, v8

    int-to-long v8, v7

    add-long/2addr v0, v8

    .line 170
    cmp-long v7, v0, v4

    if-ltz v7, :cond_35

    move-wide v0, v4

    .line 177
    :cond_23
    iget-object v6, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v6}, Lokio/AsyncTimeout;->enter()V

    .line 180
    :try_start_28
    iget-object v6, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v6, p1, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_38
    .catchall {:try_start_28 .. :try_end_2d} :catchall_40

    .line 181
    sub-long/2addr v4, v0

    .line 182
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->exit(Z)V

    goto :goto_9

    .line 167
    :cond_35
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_10

    .line 183
    :catch_38
    move-exception v0

    .line 184
    :try_start_39
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_40

    .line 186
    :catchall_40
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0

    .line 189
    :cond_48
    return-void
.end method
