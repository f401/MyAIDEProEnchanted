.class public Lorg/apache/tools/ant/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
    }
.end annotation


# static fields
.field private static final CR:I = 0xd

.field private static final INITIAL_SIZE:I = 0x84

.field private static final LF:I = 0xa

.field private static final MAX_SIZE:I = 0x400


# instance fields
.field private buffers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isErrorStream:Z

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;Z)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->project:Lorg/apache/tools/ant/Project;

    .line 91
    iput-boolean p2, p0, Lorg/apache/tools/ant/DemuxOutputStream;->isErrorStream:Z

    .line 92
    return-void
.end method

.method private getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
    .registers 4

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    sget-object v2, Lorg/apache/tools/ant/DemuxOutputStream$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/DemuxOutputStream$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    return-object v0
.end method

.method static synthetic lambda$getBufferInfo$0(Ljava/lang/Thread;)Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
    .registers 4

    .line 102
    new-instance v0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;-><init>(Lorg/apache/tools/ant/DemuxOutputStream$1;)V

    .line 103
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x84

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$002(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 104
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z

    .line 105
    return-object v0
.end method

.method private removeBuffer()V
    .registers 3

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method private resetBufferInfo()V
    .registers 3

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    .line 115
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 116
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$002(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 117
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z

    .line 118
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->flush()V

    .line 197
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->removeBuffer()V

    .line 198
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 210
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DemuxOutputStream;->processFlush(Ljava/io/ByteArrayOutputStream;)V

    .line 212
    :cond_15
    return-void
.end method

.method protected processBuffer(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    .line 168
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->project:Lorg/apache/tools/ant/Project;

    iget-boolean v2, p0, Lorg/apache/tools/ant/DemuxOutputStream;->isErrorStream:Z

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->demuxOutput(Ljava/lang/String;Z)V

    .line 170
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->resetBufferInfo()V

    .line 171
    return-void
.end method

.method protected processFlush(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    .line 182
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->project:Lorg/apache/tools/ant/Project;

    iget-boolean v2, p0, Lorg/apache/tools/ant/DemuxOutputStream;->isErrorStream:Z

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->demuxFlush(Ljava/lang/String;Z)V

    .line 184
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->resetBufferInfo()V

    .line 185
    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    int-to-byte v0, p1

    .line 139
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    move-result-object v1

    .line 141
    const/16 v2, 0xa

    if-ne v0, v2, :cond_39

    .line 143
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/DemuxOutputStream;->processBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 153
    :goto_17
    const/16 v2, 0xd

    if-ne v0, v2, :cond_4e

    const/4 v0, 0x1

    :goto_1c
    invoke-static {v1, v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z

    .line 154
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$100(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_38

    .line 155
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DemuxOutputStream;->processBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 157
    :cond_38
    return-void

    .line 146
    :cond_39
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$100(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 148
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/DemuxOutputStream;->processBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 151
    :cond_46
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_17

    .line 153
    :cond_4e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public write([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xd

    const/16 v6, 0xa

    .line 226
    .line 228
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    move-result-object v4

    move v3, p2

    move v0, p3

    move v2, p2

    .line 230
    :goto_b
    if-lez v0, :cond_3f

    move v1, v2

    .line 231
    :goto_e
    if-lez v0, :cond_1d

    aget-byte v2, p1, v1

    if-eq v2, v6, :cond_1d

    aget-byte v2, p1, v1

    if-eq v2, v7, :cond_1d

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 236
    :cond_1d
    sub-int v2, v1, v3

    .line 237
    if-lez v2, :cond_28

    .line 238
    invoke-static {v4}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 240
    :cond_28
    :goto_28
    if-lez v0, :cond_3c

    aget-byte v2, p1, v1

    if-eq v2, v6, :cond_32

    aget-byte v2, p1, v1

    if-ne v2, v7, :cond_3c

    .line 241
    :cond_32
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/DemuxOutputStream;->write(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 243
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_3c
    move v3, v1

    move v2, v1

    .line 246
    goto :goto_b

    .line 247
    :cond_3f
    return-void
.end method
