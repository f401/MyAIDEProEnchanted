.class public abstract Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.super Ljava/io/OutputStream;
.source "LineOrientedOutputStream.java"


# static fields
.field private static final CR:I = 0xd

.field private static final INITIAL_SIZE:I = 0x84

.field private static final LF:I = 0xa


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private skip:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x84

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->skip:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processBuffer()V

    .line 121
    :cond_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 122
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method protected processBuffer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processLine([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    throw v0
.end method

.method protected abstract processLine(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected processLine([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processLine(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xd

    .line 55
    int-to-byte v0, p1

    .line 56
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    .line 57
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->skip:Z

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processBuffer()V

    .line 63
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->skip:Z

    .line 64
    return-void

    .line 61
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 136
    move v3, p2

    move v0, p3

    move v2, p2

    .line 138
    :goto_0
    if-lez v0, :cond_4

    move v1, v2

    .line 140
    :goto_1
    if-lez v0, :cond_0

    aget-byte v2, p1, v1

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v1

    if-eq v2, v6, :cond_0

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 145
    :cond_0
    sub-int v2, v1, v3

    .line 146
    if-lez v2, :cond_1

    .line 147
    iget-object v4, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 149
    :cond_1
    :goto_2
    if-lez v0, :cond_3

    aget-byte v2, p1, v1

    if-eq v2, v5, :cond_2

    aget-byte v2, p1, v1

    if-ne v2, v6, :cond_3

    .line 150
    :cond_2
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->write(I)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 152
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move v3, v1

    move v2, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_4
    return-void
.end method
