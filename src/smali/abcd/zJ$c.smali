.class Labcd/zJ$c;
.super Labcd/eI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/zJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final cn:Labcd/zJ;

.field private ro:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Labcd/zJ;)V
    .registers 10

    iput-object p1, p0, Labcd/zJ$c;->cn:Labcd/zJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    :try_start_0
    new-instance v5, Labcd/IG;

    invoke-static {p1}, Labcd/zJ;->j6(Labcd/zJ;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v5, v0}, Labcd/IG;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Ljava/io/PipedInputStream;

    invoke-direct {v6}, Ljava/io/PipedInputStream;-><init>()V

    new-instance v4, Ljava/io/PipedOutputStream;

    invoke-direct {v4, v6}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    new-instance v3, Labcd/AJ;

    invoke-direct {v3, p0}, Labcd/AJ;-><init>(Labcd/zJ$c;)V

    new-instance v7, Ljava/io/PipedOutputStream;

    invoke-direct {v7, v3}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Labcd/BJ;

    const-string v2, "JGit-Upload-Pack"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Labcd/BJ;-><init>(Labcd/zJ$c;Ljava/lang/String;Ljava/io/PipedInputStream;Ljava/io/PipedOutputStream;Labcd/UE;)V

    iput-object v0, p0, Labcd/zJ$c;->ro:Ljava/lang/Thread;

    iget-object v0, p0, Labcd/zJ$c;->ro:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, v6, v7}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v5}, Labcd/UE;->j6()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotConnectPipes:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notAGitDirectory:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic j6(Labcd/zJ$c;)Labcd/zJ;
    .registers 2

    iget-object v0, p0, Labcd/zJ$c;->cn:Labcd/zJ;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/eI;->close()V

    iget-object v0, p0, Labcd/zJ$c;->ro:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Labcd/zJ$c;->ro:Ljava/lang/Thread;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/zJ$c;->ro:Ljava/lang/Thread;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
