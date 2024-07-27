.class final Landroid/support/multidex/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/d$a;
    }
.end annotation


# direct methods
.method static j6(Ljava/io/File;)J
    .registers 5

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Landroid/support/multidex/d;->j6(Ljava/io/RandomAccessFile;)Landroid/support/multidex/d$a;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/multidex/d;->j6(Ljava/io/RandomAccessFile;Landroid/support/multidex/d$a;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-wide v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method static j6(Ljava/io/RandomAccessFile;Landroid/support/multidex/d$a;)J
    .registers 14

    const-wide/16 v10, 0x4000

    const/4 v8, 0x0

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    iget-wide v0, p1, Landroid/support/multidex/d$a;->DW:J

    iget-wide v4, p1, Landroid/support/multidex/d$a;->j6:J

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    const/16 v4, 0x4000

    new-array v4, v4, [B

    invoke-virtual {p0, v4, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-virtual {v3, v4, v8, v2}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v6, v2

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {p0, v4, v8, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_0
.end method

.method static j6(Ljava/io/RandomAccessFile;)Landroid/support/multidex/d$a;
    .registers 11

    const-wide v8, 0xffffffffL

    const-wide/16 v0, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    sub-long v4, v2, v4

    cmp-long v2, v4, v0

    if-ltz v2, :cond_3

    const-wide/32 v2, 0x10000

    sub-long v2, v4, v2

    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    :goto_0
    const v2, 0x6054b50

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    move-wide v2, v4

    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    new-instance v0, Landroid/support/multidex/d$a;

    invoke-direct {v0}, Landroid/support/multidex/d$a;-><init>()V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v8

    iput-wide v2, v0, Landroid/support/multidex/d$a;->DW:J

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v8

    iput-wide v2, v0, Landroid/support/multidex/d$a;->j6:J

    return-object v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "End Of Central Directory signature not found"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File too short to be a zip file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
