.class public Labcd/_K;
.super Ljava/io/FilterInputStream;


# instance fields
.field private DW:I

.field private final j6:Labcd/VK;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Labcd/VK;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Labcd/_K;->j6:Labcd/VK;

    return-void
.end method

.method private DW()V
    .registers 3

    iget-object v0, p0, Labcd/_K;->j6:Labcd/VK;

    iget v1, p0, Labcd/_K;->DW:I

    invoke-virtual {v0, v1}, Labcd/VK;->j6(I)V

    return-void
.end method

.method private FH()V
    .registers 2

    iget-object v0, p0, Labcd/_K;->j6:Labcd/VK;

    invoke-virtual {v0}, Labcd/VK;->j6()V

    return-void
.end method

.method private static Hw()Ljava/io/InterruptedIOException;
    .registers 2

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->readTimedOut:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Labcd/_K;->DW:I

    return v0
.end method

.method public j6(I)V
    .registers 6

    if-ltz p1, :cond_5

    iput p1, p0, Labcd/_K;->DW:I

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidTimeout:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .registers 2

    :try_start_0
    invoke-direct {p0}, Labcd/_K;->DW()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    invoke-direct {p0}, Labcd/_K;->FH()V

    return v0

    :catchall_b
    move-exception v0

    goto :goto_13

    :catch_d
    move-exception v0

    :try_start_e
    invoke-static {}, Labcd/_K;->Hw()Ljava/io/InterruptedIOException;

    move-result-object v0

    throw v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_b

    :goto_13
    invoke-direct {p0}, Labcd/_K;->FH()V

    throw v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/_K;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 4

    :try_start_0
    invoke-direct {p0}, Labcd/_K;->DW()V

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    invoke-direct {p0}, Labcd/_K;->FH()V

    return p1

    :catchall_b
    move-exception p1

    goto :goto_13

    :catch_d
    move-exception p1

    :try_start_e
    invoke-static {}, Labcd/_K;->Hw()Ljava/io/InterruptedIOException;

    move-result-object p1

    throw p1
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_b

    :goto_13
    invoke-direct {p0}, Labcd/_K;->FH()V

    throw p1
.end method

.method public skip(J)J
    .registers 3

    :try_start_0
    invoke-direct {p0}, Labcd/_K;->DW()V

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    invoke-direct {p0}, Labcd/_K;->FH()V

    return-wide p1

    :catchall_b
    move-exception p1

    goto :goto_13

    :catch_d
    move-exception p1

    :try_start_e
    invoke-static {}, Labcd/_K;->Hw()Ljava/io/InterruptedIOException;

    move-result-object p1

    throw p1
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_b

    :goto_13
    invoke-direct {p0}, Labcd/_K;->FH()V

    throw p1
.end method
