.class public final Labcd/OH;
.super Ljava/io/OutputStream;


# instance fields
.field private final DW:Ljava/io/OutputStream;

.field private final FH:Labcd/TH;

.field private final Hw:Ljava/util/zip/CRC32;

.field private VH:[B

.field private Zo:J

.field private gn:[B

.field private final j6:Labcd/LE;

.field private u7:J

.field private final v5:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Labcd/LE;Ljava/io/OutputStream;Labcd/TH;)V
    .registers 6

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/OH;->v5:Ljava/security/MessageDigest;

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/OH;->VH:[B

    iput-object p1, p0, Labcd/OH;->j6:Labcd/LE;

    iput-object p2, p0, Labcd/OH;->DW:Ljava/io/OutputStream;

    iput-object p3, p0, Labcd/OH;->FH:Labcd/TH;

    const-wide/32 v0, 0x20000

    iput-wide v0, p0, Labcd/OH;->u7:J

    return-void
.end method

.method private DW(IJ)I
    .registers 14

    const/4 v0, 0x4

    ushr-long v2, p2, v0

    iget-object v1, p0, Labcd/OH;->VH:[B

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    const/4 v4, 0x0

    const-wide/16 v6, 0xf

    and-long/2addr v6, p2

    shl-int/lit8 v5, p1, 0x4

    or-int/2addr v0, v5

    int-to-long v8, v0

    or-long/2addr v6, v8

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    ushr-long v4, v2, v0

    iget-object v6, p0, Labcd/OH;->VH:[B

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    const/16 v0, 0x80

    :goto_2
    const-wide/16 v8, 0x7f

    and-long/2addr v2, v8

    int-to-long v8, v0

    or-long/2addr v2, v8

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move-wide v2, v4

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method DW()I
    .registers 3

    iget-object v0, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public FH()[B
    .registers 2

    iget-object v0, p0, Labcd/OH;->gn:[B

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/OH;->gn:[B

    :cond_0
    iget-object v0, p0, Labcd/OH;->gn:[B

    return-object v0
.end method

.method Hw()[B
    .registers 2

    iget-object v0, p0, Labcd/OH;->v5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method Zo()V
    .registers 2

    iget-object v0, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Labcd/OH;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method j6()V
    .registers 3

    iget-object v0, p0, Labcd/OH;->j6:Labcd/LE;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Labcd/LE;->update(I)V

    return-void
.end method

.method j6(IJ)V
    .registers 8

    const/4 v2, 0x4

    const/4 v3, 0x0

    sget-object v0, Labcd/hE;->v5:[B

    iget-object v1, p0, Labcd/OH;->VH:[B

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/OH;->VH:[B

    invoke-static {v0, v2, p1}, Labcd/FK;->DW([BII)V

    iget-object v0, p0, Labcd/OH;->VH:[B

    const/16 v1, 0x8

    long-to-int v2, p2

    invoke-static {v0, v1, v2}, Labcd/FK;->DW([BII)V

    iget-object v0, p0, Labcd/OH;->VH:[B

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v3, v1}, Labcd/OH;->write([BII)V

    return-void
.end method

.method public j6(Labcd/MH;)V
    .registers 3

    iget-object v0, p0, Labcd/OH;->FH:Labcd/TH;

    invoke-virtual {v0, p0, p1}, Labcd/TH;->j6(Labcd/OH;Labcd/MH;)V

    return-void
.end method

.method public j6(Labcd/MH;J)V
    .registers 16

    const-wide/16 v10, 0x7f

    const/4 v8, 0x7

    const/4 v5, 0x0

    invoke-virtual {p1}, Labcd/MH;->BT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/OH;->FH:Labcd/TH;

    invoke-virtual {v0}, Labcd/TH;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/MH;->nw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Labcd/OH;->Zo:J

    const/4 v1, 0x6

    invoke-direct {p0, v1, p2, p3}, Labcd/OH;->DW(IJ)I

    move-result v1

    iget-object v4, p0, Labcd/OH;->VH:[B

    invoke-virtual {p0, v4, v5, v1}, Labcd/OH;->write([BII)V

    invoke-virtual {v0}, Labcd/CI;->getOffset()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget-object v1, p0, Labcd/OH;->VH:[B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-long v4, v2, v10

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    :goto_0
    shr-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Labcd/OH;->VH:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Labcd/OH;->write([BII)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Labcd/OH;->VH:[B

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x80

    and-long v6, v2, v10

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8, p2, p3}, Labcd/OH;->DW(IJ)I

    move-result v0

    invoke-virtual {p1}, Labcd/MH;->lg()Labcd/yE;

    move-result-object v1

    iget-object v2, p0, Labcd/OH;->VH:[B

    invoke-virtual {v1, v2, v0}, Labcd/YD;->DW([BI)V

    iget-object v1, p0, Labcd/OH;->VH:[B

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p0, v1, v5, v0}, Labcd/OH;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Labcd/MH;->yS()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Labcd/OH;->DW(IJ)I

    move-result v0

    iget-object v1, p0, Labcd/OH;->VH:[B

    invoke-virtual {p0, v1, v5, v0}, Labcd/OH;->write([BII)V

    goto :goto_1
.end method

.method public v5()J
    .registers 3

    iget-wide v0, p0, Labcd/OH;->Zo:J

    return-wide v0
.end method

.method public write(I)V
    .registers 6

    iget-wide v0, p0, Labcd/OH;->Zo:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/OH;->Zo:J

    iget-object v0, p0, Labcd/OH;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    iget-object v0, p0, Labcd/OH;->v5:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([BII)V
    .registers 10

    :goto_0
    if-gtz p3, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x20000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-wide v2, p0, Labcd/OH;->Zo:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/OH;->Zo:J

    iget-wide v2, p0, Labcd/OH;->u7:J

    iget-wide v4, p0, Labcd/OH;->Zo:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    iget-object v1, p0, Labcd/OH;->j6:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, p0, Labcd/OH;->Zo:J

    const-wide/32 v4, 0x20000

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/OH;->u7:J

    :cond_1
    iget-object v1, p0, Labcd/OH;->DW:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v1, p0, Labcd/OH;->v5:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
