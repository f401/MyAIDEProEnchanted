.class Lokio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lokio/AsyncTimeout;

.field final val$source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

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

    .line 248
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 251
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_11
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    .line 252
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 257
    return-void

    .line 253
    :catch_11
    move-exception v0

    .line 254
    :try_start_12
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_19

    .line 256
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 237
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_12
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    move-result-wide v0

    .line 238
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokio/AsyncTimeout;->exit(Z)V

    .line 239
    return-wide v0

    .line 240
    :catch_12
    move-exception v0

    .line 241
    :try_start_13
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 243
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 261
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
