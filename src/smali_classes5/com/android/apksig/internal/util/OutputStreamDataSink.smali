.class public Lcom/android/apksig/internal/util/OutputStreamDataSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSink;


# static fields
.field private static final MAX_READ_CHUNK_SIZE:I = 0x10000


# instance fields
.field private final mOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/android/apksig/internal/util/OutputStreamDataSink;->mOut:Ljava/io/OutputStream;

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/apksig/internal/util/OutputStreamDataSink;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_7

    :cond_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    :goto_38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/apksig/internal/util/OutputStreamDataSink;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_38
.end method

.method public consume([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/util/OutputStreamDataSink;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/util/OutputStreamDataSink;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method
