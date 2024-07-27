.class public Lorg/apache/tools/ant/util/LeadPipeInputStream;
.super Ljava/io/PipedInputStream;
.source "LeadPipeInputStream.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private managingPc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setBufferSize(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setBufferSize(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    const/4 v0, -0x1

    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "write end dead"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string v2, "pipe broken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    :cond_1
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    if-lez v1, :cond_0

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    if-le v1, v2, :cond_0

    .line 95
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 98
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error at LeadPipeInputStream.read():  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->log(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBufferSize(I)V
    .registers 8

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 111
    new-array v0, p1, [B

    .line 112
    iget v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    if-ltz v1, :cond_0

    .line 113
    iget v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    if-le v1, v2, :cond_2

    .line 114
    iget-object v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    iget v3, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    iget v4, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    iget v5, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    monitor-exit p0

    return-void

    .line 116
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    sub-int/2addr v1, v2

    .line 117
    iget-object v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    .line 143
    return-void
.end method

.method public setManagingTask(Lorg/apache/tools/ant/Task;)V
    .registers 2

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 134
    return-void
.end method
