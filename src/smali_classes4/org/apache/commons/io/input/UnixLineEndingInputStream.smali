.class public Lorg/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final ensureLineFeedAtEndOfFile:Z

.field private eofSeen:Z

.field private slashNSeen:Z

.field private slashRSeen:Z

.field private final target:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    iput-object p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->target:Ljava/io/InputStream;

    iput-boolean p2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->ensureLineFeedAtEndOfFile:Z

    return-void
.end method

.method private eofGame(Z)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_7

    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->ensureLineFeedAtEndOfFile:Z

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    if-nez v1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    const/16 v0, 0xa

    goto :goto_7
.end method

.method private readWithUpdate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_13

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    if-eqz v0, :cond_15

    :goto_12
    return v3

    :cond_13
    move v0, v2

    goto :goto_c

    :cond_15
    const/16 v0, 0xa

    if-ne v3, v0, :cond_23

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    const/16 v0, 0xd

    if-ne v3, v0, :cond_25

    :goto_20
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    goto :goto_12

    :cond_23
    move v0, v2

    goto :goto_1a

    :cond_25
    move v1, v2

    goto :goto_20
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark notsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofGame(Z)I

    move-result v0

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->readWithUpdate()I

    move-result v0

    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    if-eqz v2, :cond_18

    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofGame(Z)I

    move-result v0

    goto :goto_a

    :cond_18
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    if-eqz v2, :cond_1f

    const/16 v0, 0xa

    goto :goto_a

    :cond_1f
    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    move-result v0

    goto :goto_a
.end method
