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
    .registers 5

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

    const-wide/32 p1, 0x20000

    iput-wide p1, p0, Labcd/OH;->u7:J

    return-void
.end method

.method private DW(IJ)I
    .registers 15

    const/4 v0, 0x4

    ushr-long v1, p2, v0

    iget-object v3, p0, Labcd/OH;->VH:[B

    const/16 v4, 0x80

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_11

    const/16 v8, 0x80

    goto :goto_12

    :cond_11
    const/4 v8, 0x0

    :goto_12
    const-wide/16 v9, 0xf

    and-long/2addr p2, v9

    shl-int/2addr p1, v0

    or-int/2addr p1, v8

    int-to-long v8, p1

    or-long/2addr p2, v8

    long-to-int p1, p2

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    const/4 p1, 0x1

    :goto_1e
    cmp-long p2, v1, v6

    if-gtz p2, :cond_23

    return p1

    :cond_23
    const/4 p2, 0x7

    ushr-long p2, v1, p2

    iget-object v0, p0, Labcd/OH;->VH:[B

    cmp-long v3, p2, v6

    if-lez v3, :cond_2f

    const/16 v3, 0x80

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    const-wide/16 v8, 0x7f

    and-long/2addr v1, v8

    int-to-long v8, v3

    or-long/2addr v1, v8

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    move-wide v1, p2

    goto :goto_1e
.end method


# virtual methods
.method DW()I
    .registers 3

    iget-object v0, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public FH()[B
    .registers 2

    iget-object v0, p0, Labcd/OH;->gn:[B

    if-nez v0, :cond_a

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/OH;->gn:[B

    :cond_a
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

    sget-object v0, Labcd/hE;->v5:[B

    iget-object v1, p0, Labcd/OH;->VH:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/OH;->VH:[B

    invoke-static {v0, v3, p1}, Labcd/FK;->DW([BII)V

    iget-object p1, p0, Labcd/OH;->VH:[B

    const/16 v0, 0x8

    long-to-int p3, p2

    invoke-static {p1, v0, p3}, Labcd/FK;->DW([BII)V

    iget-object p1, p0, Labcd/OH;->VH:[B

    const/16 p2, 0xc

    invoke-virtual {p0, p1, v2, p2}, Labcd/OH;->write([BII)V

    return-void
.end method

.method public j6(Labcd/MH;)V
    .registers 3

    iget-object v0, p0, Labcd/OH;->FH:Labcd/TH;

    invoke-virtual {v0, p0, p1}, Labcd/TH;->j6(Labcd/OH;Labcd/MH;)V

    return-void
.end method

.method public j6(Labcd/MH;J)V
    .registers 13

    invoke-virtual {p1}, Labcd/MH;->BT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    iget-object v0, p0, Labcd/OH;->FH:Labcd/TH;

    invoke-virtual {v0}, Labcd/TH;->Zo()Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Labcd/MH;->nw()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-wide v3, p0, Labcd/OH;->Zo:J

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, p3}, Labcd/OH;->DW(IJ)I

    move-result p1

    iget-object p2, p0, Labcd/OH;->VH:[B

    invoke-virtual {p0, p2, v1, p1}, Labcd/OH;->write([BII)V

    invoke-virtual {v0}, Labcd/CI;->getOffset()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iget-object p1, p0, Labcd/OH;->VH:[B

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v5, 0x7f

    and-long v0, v3, v5

    long-to-int p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :goto_3a
    shr-long v0, v3, v2

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_4a

    iget-object p1, p0, Labcd/OH;->VH:[B

    array-length p3, p1

    sub-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, p3}, Labcd/OH;->write([BII)V

    return-void

    :cond_4a
    iget-object p1, p0, Labcd/OH;->VH:[B

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v3, 0x1

    sub-long v3, v0, v3

    const-wide/16 v0, 0x80

    and-long v7, v3, v5

    or-long/2addr v0, v7

    long-to-int p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    goto :goto_3a

    :cond_5c
    invoke-direct {p0, v2, p2, p3}, Labcd/OH;->DW(IJ)I

    move-result p2

    invoke-virtual {p1}, Labcd/MH;->lg()Labcd/yE;

    move-result-object p1

    iget-object p3, p0, Labcd/OH;->VH:[B

    invoke-virtual {p1, p3, p2}, Labcd/YD;->DW([BI)V

    iget-object p1, p0, Labcd/OH;->VH:[B

    add-int/lit8 p2, p2, 0x14

    invoke-virtual {p0, p1, v1, p2}, Labcd/OH;->write([BII)V

    goto :goto_7e

    :cond_71
    invoke-virtual {p1}, Labcd/MH;->yS()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Labcd/OH;->DW(IJ)I

    move-result p1

    iget-object p2, p0, Labcd/OH;->VH:[B

    invoke-virtual {p0, p2, v1, p1}, Labcd/OH;->write([BII)V

    :goto_7e
    return-void
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

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([BII)V
    .registers 10

    :goto_0
    if-gtz p3, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x20000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-wide v1, p0, Labcd/OH;->Zo:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/OH;->Zo:J

    iget-wide v3, p0, Labcd/OH;->u7:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_32

    iget-object v1, p0, Labcd/OH;->j6:Labcd/LE;

    invoke-interface {v1}, Labcd/LE;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_26

    iget-wide v1, p0, Labcd/OH;->Zo:J

    const-wide/32 v3, 0x20000

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/OH;->u7:J

    goto :goto_32

    :cond_26
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    :goto_32
    iget-object v1, p0, Labcd/OH;->DW:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Labcd/OH;->Hw:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v1, p0, Labcd/OH;->v5:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0
.end method
