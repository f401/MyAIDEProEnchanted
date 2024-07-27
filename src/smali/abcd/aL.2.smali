.class public Labcd/aL;
.super Ljava/io/OutputStream;


# instance fields
.field private final DW:Labcd/VK;

.field private FH:I

.field private final j6:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Labcd/VK;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Labcd/aL;->j6:Ljava/io/OutputStream;

    iput-object p2, p0, Labcd/aL;->DW:Labcd/VK;

    return-void
.end method

.method private DW()V
    .registers 2

    iget-object v0, p0, Labcd/aL;->DW:Labcd/VK;

    invoke-virtual {v0}, Labcd/VK;->j6()V

    return-void
.end method

.method private static FH()Ljava/io/InterruptedIOException;
    .registers 2

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->writeTimedOut:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private j6()V
    .registers 3

    iget-object v0, p0, Labcd/aL;->DW:Labcd/VK;

    iget v1, p0, Labcd/aL;->FH:I

    invoke-virtual {v0, v1}, Labcd/VK;->j6(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Labcd/aL;->j6()V

    iget-object v0, p0, Labcd/aL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Labcd/aL;->DW()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Labcd/aL;->FH()Ljava/io/InterruptedIOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Labcd/aL;->DW()V

    throw v0
.end method

.method public flush()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Labcd/aL;->j6()V

    iget-object v0, p0, Labcd/aL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Labcd/aL;->DW()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Labcd/aL;->FH()Ljava/io/InterruptedIOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Labcd/aL;->DW()V

    throw v0
.end method

.method public j6(I)V
    .registers 7

    if-ltz p1, :cond_0

    iput p1, p0, Labcd/aL;->FH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidTimeout:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Labcd/aL;->j6()V

    iget-object v0, p0, Labcd/aL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Labcd/aL;->DW()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Labcd/aL;->FH()Ljava/io/InterruptedIOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Labcd/aL;->DW()V

    throw v0
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/aL;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Labcd/aL;->j6()V

    iget-object v0, p0, Labcd/aL;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Labcd/aL;->DW()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Labcd/aL;->FH()Ljava/io/InterruptedIOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Labcd/aL;->DW()V

    throw v0
.end method
