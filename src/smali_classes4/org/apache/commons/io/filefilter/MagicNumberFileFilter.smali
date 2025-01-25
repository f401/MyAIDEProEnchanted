.class public Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x799f06c25c62aacL


# instance fields
.field private final byteOffset:J

.field private final magicNumbers:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number must contain at least one byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    array-length v0, p1

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number must contain at least one byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2f

    :try_start_f
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v4, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_49

    const/4 v2, 0x0

    :try_start_17
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v1, v1

    new-array v1, v1, [B

    iget-wide v6, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v5, v5
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_28} :catch_3d
    .catchall {:try_start_17 .. :try_end_28} :catchall_54

    if-eq v3, v5, :cond_30

    if-eqz v4, :cond_2f

    :try_start_2c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_49

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    :try_start_30
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_3d
    .catchall {:try_start_30 .. :try_end_35} :catchall_54

    move-result v1

    if-eqz v4, :cond_3b

    :try_start_38
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_49

    :cond_3b
    move v0, v1

    goto :goto_2f

    :catch_3d
    move-exception v1

    :try_start_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v3

    move-object v2, v1

    :goto_41
    if-eqz v4, :cond_48

    if-eqz v2, :cond_50

    :try_start_45
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    :try_start_48
    throw v3

    :catch_49
    move-exception v1

    goto :goto_2f

    :catch_4b
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_50
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_49

    goto :goto_48

    :catchall_54
    move-exception v1

    move-object v3, v1

    goto :goto_41
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
