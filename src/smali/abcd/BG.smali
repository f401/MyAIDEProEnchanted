.class final Labcd/BG;
.super Labcd/CG;


# instance fields
.field private final Hw:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Labcd/aH;JLjava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/CG;-><init>(Labcd/aH;JI)V

    iput-object p4, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected j6(ILjava/util/zip/Inflater;)I
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    array-length v0, v1

    invoke-virtual {p2, v1, v3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    array-length v0, v1

    return v0
.end method

.method protected j6(I[BII)I
    .registers 7

    iget-object v0, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v1
.end method

.method j6(Labcd/OH;JILjava/security/MessageDigest;)V
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Labcd/CG;->DW:J

    sub-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    if-gtz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Labcd/OH;->FH()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v4, v2}, Labcd/OH;->write([BII)V

    if-eqz p5, :cond_1

    invoke-virtual {p5, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    :cond_1
    sub-int/2addr p4, v2

    goto :goto_0
.end method
