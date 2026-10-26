.class public Lorg/apache/commons/io/input/WindowsLineEndingInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final ensureLineFeedAtEndOfFile:Z

.field private eofSeen:Z

.field private injectSlashN:Z

.field private slashNSeen:Z

.field private slashRSeen:Z

.field private final target:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashRSeen:Z

    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashNSeen:Z

    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashN:Z

    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofSeen:Z

    iput-object p1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->target:Ljava/io/InputStream;

    iput-boolean p2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->ensureLineFeedAtEndOfFile:Z

    return-void
.end method

.method private eofGame()I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->ensureLineFeedAtEndOfFile:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashNSeen:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashRSeen:Z

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashRSeen:Z

    const/16 v0, 0xd

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashNSeen:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashRSeen:Z

    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashNSeen:Z

    const/16 v0, 0xa

    goto :goto_0
.end method

.method private readWithUpdate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofSeen:Z

    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofSeen:Z

    if-eqz v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashRSeen:Z

    const/16 v0, 0xa

    if-ne v3, v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashNSeen:Z

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    iget-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofSeen:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofGame()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashN:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashN:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->slashRSeen:Z

    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->readWithUpdate()I

    move-result v1

    iget-boolean v3, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofSeen:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->eofGame()I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    if-nez v2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashN:Z

    const/16 v0, 0xd

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
