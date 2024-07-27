.class final Labcd/AG;
.super Labcd/CG;


# instance fields
.field private final Hw:[B


# direct methods
.method constructor <init>(Labcd/aH;J[B)V
    .registers 7

    array-length v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/CG;-><init>(Labcd/aH;JI)V

    iput-object p4, p0, Labcd/AG;->Hw:[B

    return-void
.end method


# virtual methods
.method protected j6(ILjava/util/zip/Inflater;)I
    .registers 5

    iget-object v0, p0, Labcd/AG;->Hw:[B

    array-length v1, v0

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, p1, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1
.end method

.method protected j6(I[BII)I
    .registers 7

    iget-object v0, p0, Labcd/AG;->Hw:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Labcd/AG;->Hw:[B

    invoke-static {v1, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method j6(Labcd/OH;JILjava/security/MessageDigest;)V
    .registers 8

    iget-wide v0, p0, Labcd/CG;->DW:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/AG;->Hw:[B

    invoke-virtual {p1, v1, v0, p4}, Labcd/OH;->write([BII)V

    if-eqz p5, :cond_0

    iget-object v1, p0, Labcd/AG;->Hw:[B

    invoke-virtual {p5, v1, v0, p4}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    return-void
.end method

.method j6(Ljava/util/zip/CRC32;JI)V
    .registers 9

    iget-object v0, p0, Labcd/AG;->Hw:[B

    iget-wide v2, p0, Labcd/CG;->DW:J

    sub-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {p1, v0, v1, p4}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method j6(Ljava/util/zip/Inflater;[BJI)V
    .registers 11

    iget-object v0, p0, Labcd/AG;->Hw:[B

    iget-wide v2, p0, Labcd/CG;->DW:J

    sub-long v2, p3, v2

    long-to-int v1, v2

    invoke-virtual {p1, v0, v1, p5}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_0
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method
