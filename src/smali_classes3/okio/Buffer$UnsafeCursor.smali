.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2077
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2078
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2298
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 2302
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2303
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2304
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2305
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2306
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2307
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2308
    return-void

    .line 2299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .registers 10

    const/16 v5, 0x2000

    .line 2267
    if-lez p1, :cond_3

    .line 2270
    if-gt p1, v5, :cond_2

    .line 2273
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_1

    .line 2276
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_0

    .line 2280
    iget-wide v0, v0, Lokio/Buffer;->size:J

    .line 2281
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 2282
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .line 2283
    iput v5, v2, Lokio/Segment;->limit:I

    .line 2284
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v6, v3

    add-long/2addr v6, v0

    iput-wide v6, v4, Lokio/Buffer;->size:J

    .line 2287
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2288
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2289
    iget-object v0, v2, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2290
    rsub-int v0, v3, 0x2000

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2291
    iput v5, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2293
    int-to-long v0, v3

    return-wide v0

    .line 2277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2274
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2271
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minByteCount > Segment.SIZE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2268
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minByteCount <= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final next()I
    .registers 5

    .line 2086
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2087
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    .line 2088
    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    goto :goto_0

    .line 2086
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .registers 16

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    const-wide/16 v10, 0x0

    .line 2186
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_7

    .line 2189
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_6

    .line 2193
    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 2194
    cmp-long v0, p1, v4

    if-gtz v0, :cond_4

    .line 2195
    cmp-long v0, p1, v10

    if-ltz v0, :cond_3

    .line 2199
    sub-long v0, v4, p1

    :goto_0
    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    .line 2200
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 2201
    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    .line 2202
    int-to-long v6, v3

    cmp-long v6, v6, v0

    if-gtz v6, :cond_0

    .line 2203
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 2204
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 2205
    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 2210
    goto :goto_0

    .line 2207
    :cond_0
    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v6, v3

    sub-long v0, v6, v0

    long-to-int v0, v0

    iput v0, v2, Lokio/Segment;->limit:I

    .line 2212
    :cond_1
    iput-object v9, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2213
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2214
    iput-object v9, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2215
    iput v8, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2216
    iput v8, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2238
    :cond_2
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v0, Lokio/Buffer;->size:J

    .line 2240
    return-wide v4

    .line 2196
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSize < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2217
    :cond_4
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 2220
    sub-long v2, p1, v4

    move v0, v1

    :cond_5
    :goto_1
    cmp-long v6, v2, v10

    if-lez v6, :cond_2

    .line 2221
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v6, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v6

    .line 2222
    iget v7, v6, Lokio/Segment;->limit:I

    rsub-int v7, v7, 0x2000

    int-to-long v8, v7

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v7, v8

    .line 2223
    iget v8, v6, Lokio/Segment;->limit:I

    add-int/2addr v8, v7

    iput v8, v6, Lokio/Segment;->limit:I

    .line 2224
    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 2227
    if-eqz v0, :cond_5

    .line 2228
    iput-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2229
    iput-wide v4, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2230
    iget-object v0, v6, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2231
    iget v0, v6, Lokio/Segment;->limit:I

    sub-int/2addr v0, v7

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2232
    iget v0, v6, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2233
    const/4 v0, 0x0

    goto :goto_1

    .line 2190
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2187
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final seek(J)I
    .registers 14

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 2097
    cmp-long v1, p1, v6

    if-ltz v1, :cond_7

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_7

    .line 2102
    cmp-long v1, p1, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 2103
    :cond_0
    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2104
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2105
    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2106
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2107
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2165
    :goto_0
    return v0

    .line 2112
    :cond_1
    const-wide/16 v2, 0x0

    .line 2113
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 2114
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2115
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 2116
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v6, :cond_2

    .line 2117
    iget-wide v8, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v7, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v6, v6, Lokio/Segment;->pos:I

    sub-int v6, v7, v6

    int-to-long v6, v6

    sub-long v6, v8, v6

    .line 2118
    cmp-long v8, v6, p1

    if-lez v8, :cond_3

    .line 2120
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v4, v6

    .line 2131
    :cond_2
    :goto_1
    sub-long v6, v4, p1

    sub-long v8, p1, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 2135
    :goto_2
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_4

    .line 2136
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 2137
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2

    .line 2125
    :cond_3
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v2, v6

    goto :goto_1

    .line 2141
    :goto_3
    cmp-long v1, v2, p1

    if-lez v1, :cond_4

    .line 2144
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 2145
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_3

    .line 2150
    :cond_4
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lokio/Segment;->shared:Z

    if-eqz v1, :cond_6

    .line 2151
    invoke-virtual {v0}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v1

    .line 2152
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v4, v0, :cond_5

    .line 2153
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v1, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 2155
    :cond_5
    invoke-virtual {v0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 2156
    iget-object v1, v0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2160
    :cond_6
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2161
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2162
    iget-object v1, v0, Lokio/Segment;->data:[B

    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2163
    iget v1, v0, Lokio/Segment;->pos:I

    sub-long v2, p1, v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2164
    iget v0, v0, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2165
    iget v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 2098
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "offset=%s > size=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    move-wide v2, v4

    goto :goto_3
.end method
