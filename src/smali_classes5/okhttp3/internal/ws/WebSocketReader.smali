.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Lokio/Buffer;

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    if-eqz p2, :cond_38

    if-eqz p3, :cond_30

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    if-eqz p1, :cond_26

    move-object v0, v1

    :goto_1f
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    if-eqz p1, :cond_2a

    :goto_23
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    return-void

    :cond_26
    const/4 v0, 0x4

    new-array v0, v0, [B

    goto :goto_1f

    :cond_2a
    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    goto :goto_23

    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readControlFrame()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_2b

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v6, v7}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    :cond_2b
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown control opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4d  #0xa
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    :goto_58
    return-void

    :pswitch_59  #0x9
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    goto :goto_58

    :pswitch_65  #0x8
    const/16 v1, 0x3ed

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9b

    cmp-long v0, v2, v6

    if-eqz v0, :cond_98

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v1

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_92

    :goto_89
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v2, v1, v0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_58

    :cond_92
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    const-string v0, ""

    goto :goto_89

    :cond_9b
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_a4
    .packed-switch 0x8
        :pswitch_65  #00000008
        :pswitch_59  #00000009
        :pswitch_4d  #0000000a
    .end packed-switch
.end method

.method private readHeader()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_107

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    :try_start_19
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_fa

    move-result v0

    and-int/lit16 v6, v0, 0xff

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    and-int/lit8 v0, v6, 0xf

    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_71

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    and-int/lit8 v3, v6, 0x8

    if-eqz v3, :cond_73

    move v3, v1

    :goto_3c
    iput-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v3, :cond_42

    if-eqz v0, :cond_75

    :cond_42
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_7d

    move v4, v1

    :goto_47
    and-int/lit8 v0, v6, 0x20

    if-eqz v0, :cond_7f

    move v3, v1

    :goto_4c
    and-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_81

    move v0, v1

    :goto_51
    if-nez v4, :cond_f2

    if-nez v3, :cond_f2

    if-nez v0, :cond_f2

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_10f

    :goto_63
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v1, v2, :cond_86

    if-eqz v2, :cond_83

    const-string v0, "Server-sent frames must not be masked."

    :goto_6b
    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    move v0, v2

    goto :goto_35

    :cond_73
    move v3, v2

    goto :goto_3c

    :cond_75
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    move v4, v2

    goto :goto_47

    :cond_7f
    move v3, v2

    goto :goto_4c

    :cond_81
    move v0, v2

    goto :goto_51

    :cond_83
    const-string v0, "Client-sent frames must be masked."

    goto :goto_6b

    :cond_86
    and-int/lit8 v0, v0, 0x7f

    int-to-long v2, v0

    iput-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x7e

    cmp-long v0, v2, v4

    if-nez v0, :cond_b4

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    :cond_9e
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_aa

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x7d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_ea

    :cond_aa
    if-eqz v1, :cond_b3

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    :cond_b3
    return-void

    :cond_b4
    const-wide/16 v4, 0x7f

    cmp-long v0, v2, v4

    if-nez v0, :cond_9e

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_9e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame length 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ea
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_fa
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v0

    :cond_107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10f
    move v1, v2

    goto/16 :goto_63
.end method

.method private readMessage()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_61

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_38

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    :cond_38
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_3d

    return-void

    :cond_3d
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected continuation opcode. Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMessageFrame()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eq v0, v2, :cond_8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    :cond_8
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    goto :goto_18
.end method

.method private readUntilNonControlFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method processNextFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_a
.end method
