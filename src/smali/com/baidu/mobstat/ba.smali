.class final Lcom/baidu/mobstat/ba;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .registers 7

    if-ltz p3, :cond_28

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_28

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_28

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_28

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p3, :cond_27

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    return-void

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "That combination of buffers, offsets and length to xor result in out-of-bond accesses."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw p0

    :goto_31
    goto :goto_30
.end method
