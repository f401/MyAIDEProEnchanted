.class abstract Lcom/google/common/hash/AbstractStreamingHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractStreamingHasher.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final bufferSize:I

.field private final chunkSize:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(II)V

    .line 51
    return-void
.end method

.method protected constructor <init>(II)V
    .registers 5

    .line 62
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 64
    rem-int v0, p2, p1

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 68
    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    .line 69
    iput p2, p0, Lcom/google/common/hash/AbstractStreamingHasher;->bufferSize:I

    .line 70
    iput p1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    .line 71
    return-void

    .line 64
    :cond_1e
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private munch()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    :goto_5
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    if-lt v0, v1, :cond_15

    .line 210
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 213
    return-void
.end method

.method private munchIfFull()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    .line 201
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munch()V

    .line 203
    :cond_d
    return-void
.end method

.method private putBytesInternal(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .registers 7

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_15

    .line 112
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    .line 131
    :goto_14
    return-object p0

    .line 118
    :cond_15
    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->bufferSize:I

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 119
    const/4 v0, 0x0

    :goto_1e
    sub-int v3, v1, v2

    if-ge v0, v3, :cond_2e

    .line 120
    iget-object v3, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 122
    :cond_2e
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munch()V

    .line 125
    :goto_31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    if-lt v0, v1, :cond_3d

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_31

    .line 130
    :cond_3d
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_14
.end method


# virtual methods
.method public final hash()Lcom/google/common/hash/HashCode;
    .registers 3

    .line 181
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munch()V

    .line 182
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1e

    .line 184
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;->processRemaining(Ljava/nio/ByteBuffer;)V

    .line 185
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    :cond_1e
    invoke-virtual {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->makeHash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected abstract makeHash()Lcom/google/common/hash/HashCode;
.end method

.method protected abstract process(Ljava/nio/ByteBuffer;)V
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    :goto_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    if-ge v0, v1, :cond_1c

    .line 86
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_e

    .line 88
    :cond_1c
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    .line 91
    return-void
.end method

.method public final putByte(B)Lcom/google/common/hash/Hasher;
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    .line 148
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .registers 4

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 102
    :try_start_4
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytesInternal(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 105
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    return-object v0

    .line 105
    :catchall_11
    move-exception v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    throw v0
.end method

.method public final putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 6

    .line 95
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytesInternal(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 5

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putChar(C)Lcom/google/common/hash/Hasher;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 161
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    .line 162
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putInt(I)Lcom/google/common/hash/Hasher;
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    .line 169
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putLong(J)Lcom/google/common/hash/Hasher;
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 175
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    .line 176
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 4

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractStreamingHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putShort(S)Lcom/google/common/hash/Hasher;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    .line 155
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
