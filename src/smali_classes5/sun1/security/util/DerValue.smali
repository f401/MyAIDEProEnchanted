.class public Lsun1/security/util/DerValue;
.super Ljava/lang/Object;


# instance fields
.field protected buffer:Lsun1/security/util/DerInputBuffer;

.field public final data:Lsun1/security/util/DerInputStream;

.field private length:I

.field public tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lsun1/security/util/DerValue;->init(BLjava/lang/String;)Lsun1/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>(B[B)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun1/security/util/DerValue;-><init>(B[BZ)V

    return-void
.end method

.method constructor <init>(B[BZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    new-instance v1, Lsun1/security/util/DerInputBuffer;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p3}, Lsun1/security/util/DerInputBuffer;-><init>([BZ)V

    iput-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    array-length v0, p2

    iput v0, p0, Lsun1/security/util/DerValue;->length:I

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DerValue;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lsun1/security/util/DerValue;->init(ZLjava/io/InputStream;Z)Lsun1/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_c
    if-eqz v1, :cond_24

    const/16 v0, 0x13

    :goto_10
    invoke-direct {p0, v0, p1}, Lsun1/security/util/DerValue;->init(BLjava/lang/String;)Lsun1/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    return-void

    :cond_17
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun1/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_24
    const/16 v0, 0xc

    goto :goto_10
.end method

.method constructor <init>(Lsun1/security/util/DerInputBuffer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {p1}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0, p1}, Lsun1/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lsun1/security/util/DerValue;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_90

    invoke-virtual {p1}, Lsun1/security/util/DerInputBuffer;->dup()Lsun1/security/util/DerInputBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lsun1/security/util/DerInputBuffer;->available()I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    iget-byte v5, p0, Lsun1/security/util/DerValue;->tag:B

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    new-instance v0, Lsun1/security/util/DerInputBuffer;

    new-instance v1, Lsun1/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun1/security/util/DerIndefLenConverter;-><init>()V

    invoke-virtual {v1, v3}, Lsun1/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v1

    iget-boolean v2, p1, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    invoke-direct {v0, v1, v2}, Lsun1/security/util/DerInputBuffer;-><init>([BZ)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v2

    if-ne v1, v2, :cond_88

    invoke-static {v0}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lsun1/security/util/DerValue;->length:I

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->dup()Lsun1/security/util/DerInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->truncate(I)V

    new-instance v0, Lsun1/security/util/DerInputStream;

    iget-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    add-int/lit8 v0, v0, 0x2

    :goto_83
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerInputBuffer;->skip(J)J

    return-void

    :cond_88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Indefinite length encoding not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    invoke-virtual {p1}, Lsun1/security/util/DerInputBuffer;->dup()Lsun1/security/util/DerInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->truncate(I)V

    new-instance v0, Lsun1/security/util/DerInputStream;

    iget-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    goto :goto_83
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DerValue;-><init>([BZ)V

    return-void
.end method

.method constructor <init>([BZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1, p2}, Lsun1/security/util/DerValue;->init(ZLjava/io/InputStream;Z)Lsun1/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    return-void
.end method

.method private append([B[B)[B
    .registers 7

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object p2

    :cond_4
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    goto :goto_3
.end method

.method public static createTag(BZB)B
    .registers 4

    or-int v0, p0, p2

    int-to-byte v0, v0

    if-eqz p1, :cond_8

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_8
    return v0
.end method

.method private static doEquals(Lsun1/security/util/DerValue;Lsun1/security/util/DerValue;)Z
    .registers 6

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    monitor-enter v1

    :try_start_3
    iget-object v2, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    :try_start_6
    iget-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->reset()V

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->reset()V

    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-object v3, p1, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0, v3}, Lsun1/security/util/DerInputBuffer;->equals(Lsun1/security/util/DerInputBuffer;)Z

    move-result v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1b

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    return v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private init(BLjava/lang/String;)Lsun1/security/util/DerInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_49

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_49

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_46

    const/16 v0, 0x13

    if-eq p1, v0, :cond_49

    const/16 v0, 0x14

    if-ne p1, v0, :cond_3e

    const-string v0, "ISO-8859-1"

    :goto_23
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lsun1/security/util/DerValue;->length:I

    new-instance v1, Lsun1/security/util/DerInputBuffer;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lsun1/security/util/DerInputBuffer;-><init>([BZ)V

    iput-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputStream;->mark(I)V

    return-object v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DER string type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const-string v0, "UnicodeBigUnmarked"

    goto :goto_23

    :cond_49
    const-string v0, "ASCII"

    goto :goto_23

    :cond_4c
    const-string v0, "UTF8"

    goto :goto_23
.end method

.method private init(ZLjava/io/InputStream;Z)Lsun1/security/util/DerInputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0, p2}, Lsun1/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lsun1/security/util/DerValue;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_62

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-byte v4, p0, Lsun1/security/util/DerValue;->tag:B

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-instance v0, Lsun1/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Lsun1/security/util/DerIndefLenConverter;-><init>()V

    invoke-virtual {v0, v2}, Lsun1/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v0, v1, :cond_68

    invoke-static {p2}, Lsun1/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lsun1/security/util/DerValue;->length:I

    :cond_62
    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    if-nez v0, :cond_70

    const/4 v0, 0x0

    :goto_67
    return-object v0

    :cond_68
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Indefinite length encoding not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    if-eqz p1, :cond_7a

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    if-ne v0, v1, :cond_8d

    :cond_7a
    new-instance v1, Lsun1/security/util/DerInputBuffer;

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    invoke-static {p2, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-direct {v1, v0, p3}, Lsun1/security/util/DerInputBuffer;-><init>([BZ)V

    iput-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    new-instance v0, Lsun1/security/util/DerInputStream;

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    goto :goto_67

    :cond_8d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "extra data given to DerValue constructor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isPrintableStringChar(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1a

    :cond_18
    :pswitch_18  #0x27, 0x28, 0x29, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/16 v0, 0x20

    if-eq p0, v0, :cond_18

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_18

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_18

    packed-switch p0, :pswitch_data_32

    packed-switch p0, :pswitch_data_3c

    const/4 v0, 0x0

    goto :goto_19

    :pswitch_data_32
    .packed-switch 0x27
        :pswitch_18  #00000027
        :pswitch_18  #00000028
        :pswitch_18  #00000029
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x2b
        :pswitch_18  #0000002b
        :pswitch_18  #0000002c
        :pswitch_18  #0000002d
        :pswitch_18  #0000002e
        :pswitch_18  #0000002f
    .end packed-switch
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->write(I)V

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    if-lez v0, :cond_26

    new-array v0, v0, [B

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun1/security/util/DerInputBuffer;->reset()V

    iget-object v2, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Lsun1/security/util/DerInputBuffer;->read([B)I

    move-result v2

    iget v3, p0, Lsun1/security/util/DerValue;->length:I

    if-ne v2, v3, :cond_27

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    monitor-exit v1

    :cond_26
    return-void

    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v2, "short DER value read (encode)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lsun1/security/util/DerValue;

    if-eqz v0, :cond_b

    check-cast p1, Lsun1/security/util/DerValue;

    invoke-virtual {p0, p1}, Lsun1/security/util/DerValue;->equals(Lsun1/security/util/DerValue;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Lsun1/security/util/DerValue;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    iget-byte v1, p1, Lsun1/security/util/DerValue;->tag:B

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_23

    invoke-static {p0, p1}, Lsun1/security/util/DerValue;->doEquals(Lsun1/security/util/DerValue;Lsun1/security/util/DerValue;)Z

    move-result v0

    goto :goto_3

    :cond_23
    invoke-static {p1, p0}, Lsun1/security/util/DerValue;->doEquals(Lsun1/security/util/DerValue;Lsun1/security/util/DerValue;)Z

    move-result v0

    goto :goto_3
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/16 v1, 0x13

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_14
    const/16 v1, 0x14

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getT61String()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1d
    const/16 v1, 0x16

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_26
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2f
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_38

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_38
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getBMPString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UnicodeBigUnmarked"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBMPString, not BMP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun1/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBigInteger, not an int "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBitString()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBitString, not a bit string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    if-ne v1, v0, :cond_2a

    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    if-ne v1, v0, :cond_14

    iget-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun1/security/util/DerInputBuffer;->read()I

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBoolean, invalid length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBoolean, not a BOOLEAN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getData()Lsun1/security/util/DerInputStream;
    .registers 2

    iget-object v0, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    return-object v0
.end method

.method public getDataBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    new-array v0, v0, [B

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->reset()V

    iget-object v2, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v2, v0}, Lsun1/security/util/DerInputStream;->getBytes([B)V

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getEnumerated()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getEnumerated, incorrect tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGeneralString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getGeneralString, not GeneralString "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIA5String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getIA5String, not IA5 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun1/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getInteger, not an int "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOID()Lsun1/security/util/ObjectIdentifier;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun1/security/util/ObjectIdentifier;-><init>(Lsun1/security/util/DerInputBuffer;)V

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getOID, not an OID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOctetString()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, v1}, Lsun1/security/util/DerValue;->isConstructed(B)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_b
    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    new-array v0, v1, [B

    iget-object v2, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Lsun1/security/util/DerInputBuffer;->read([B)I

    move-result v2

    iget v3, p0, Lsun1/security/util/DerValue;->length:I

    if-ne v2, v3, :cond_50

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Lsun1/security/util/DerInputStream;

    const/4 v3, 0x0

    iget-object v4, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    iget-boolean v4, v4, Lsun1/security/util/DerInputBuffer;->allowBER:Z

    invoke-direct {v2, v0, v3, v1, v4}, Lsun1/security/util/DerInputStream;-><init>([BIIZ)V

    const/4 v0, 0x0

    :goto_2a
    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_47

    :cond_30
    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getOctetString, not an Octet String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    invoke-virtual {v2}, Lsun1/security/util/DerInputStream;->getOctetString()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun1/security/util/DerValue;->append([B[B)[B

    move-result-object v0

    goto :goto_2a

    :cond_50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read on DerValue buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getPrintableString, not a string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getT61String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getT61String, not T61 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUTF8String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getUTF8String, not UTF-8 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUnalignedBitString()Lsun1/security/util/BitArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBitString, not a bit string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUnalignedBitString(Z)Lsun1/security/util/BitArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_7
    iget-object v0, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun1/security/util/DerInputBuffer;->getUnalignedBitString()Lsun1/security/util/BitArray;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerValue.getBitString, not a bit string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConstructed()Z
    .registers 3

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isConstructed(B)Z
    .registers 3

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isContextSpecific()Z
    .registers 3

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isContextSpecific(B)Z
    .registers 3

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public length()I
    .registers 2

    iget v0, p0, Lsun1/security/util/DerValue;->length:I

    return v0
.end method

.method public resetTag(B)V
    .registers 3

    int-to-byte v0, p1

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    return-void
.end method

.method public toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun1/security/util/DerValue;->encode(Lsun1/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->reset()V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toDerInputStream()Lsun1/security/util/DerInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_a

    const/16 v1, 0x31

    if-ne v0, v1, :cond_12

    :cond_a
    new-instance v0, Lsun1/security/util/DerInputStream;

    iget-object v1, p0, Lsun1/security/util/DerValue;->buffer:Lsun1/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun1/security/util/DerInputStream;-><init>(Lsun1/security/util/DerInputBuffer;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toDerInputStream rejects tag type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_54

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    const-string v0, "[DerValue, null]"

    goto :goto_19

    :cond_22
    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OID."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsun1/security/util/DerValue;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DerValue, tag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lsun1/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun1/security/util/DerValue;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_53} :catch_54

    goto :goto_33

    :catch_54
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "misformatted DER value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
