.class Lcom/bumptech/glide/disklrucache/StrictLineReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    if-nez p3, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    sget-object v0, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_15
    iput v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public hasUnterminatedLine()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xa

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-lt v0, v1, :cond_1d

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    :goto_1f
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-eq v2, v0, :cond_57

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_54

    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-eq v2, v0, :cond_52

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_52

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_3a
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    monitor-exit v3

    :goto_51
    return-object v0

    :cond_52
    move v1, v2

    goto :goto_3a

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_57
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;

    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;-><init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V

    :cond_63
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    :goto_77
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-eq v0, v2, :cond_63

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_9a

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-eq v0, v2, :cond_90

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_90
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_14 .. :try_end_99} :catchall_11

    goto :goto_51

    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_77
.end method
