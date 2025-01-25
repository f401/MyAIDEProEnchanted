.class final Labcd/BG;
.super Labcd/CG;


# instance fields
.field private final Hw:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Labcd/aH;JLjava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/CG;-><init>(Labcd/aH;JI)V

    iput-object p4, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected j6(ILjava/util/zip/Inflater;)I
    .registers 6

    iget-object v0, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    const/16 v1, 0x200

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1, v2, p1}, Ljava/util/zip/Inflater;->setInput([BII)V

    return p1
.end method

.method protected j6(I[BII)I
    .registers 6

    iget-object v0, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p1
.end method

.method j6(Labcd/OH;JILjava/security/MessageDigest;)V
    .registers 9

    iget-object v0, p0, Labcd/BG;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Labcd/CG;->DW:J

    sub-long/2addr p2, v1

    long-to-int p3, p2

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_d
    if-gtz p4, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Labcd/OH;->FH()[B

    move-result-object p2

    array-length p3, p2

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v1, p3}, Labcd/OH;->write([BII)V

    if-eqz p5, :cond_25

    invoke-virtual {p5, p2, v1, p3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_25
    sub-int/2addr p4, p3

    goto :goto_d
.end method
