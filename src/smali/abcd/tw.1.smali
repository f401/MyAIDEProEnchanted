.class public Labcd/tw;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Z

.field private FH:Ljava/io/RandomAccessFile;

.field private Hw:Ljava/nio/channels/FileLock;

.field private final j6:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/tw;->j6:Ljava/io/File;

    iput-boolean p2, p0, Labcd/tw;->DW:Z

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Labcd/tw;->Hw:Ljava/nio/channels/FileLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Labcd/tw;->Hw:Ljava/nio/channels/FileLock;

    throw v0
.end method

.method public j6()V
    .registers 8

    iget-object v0, p0, Labcd/tw;->Hw:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Labcd/tw;->j6:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    :try_start_0
    iget-object v0, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    iget-boolean v6, p0, Labcd/tw;->DW:Z

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Labcd/tw;->Hw:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Labcd/tw;->FH:Ljava/io/RandomAccessFile;

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
