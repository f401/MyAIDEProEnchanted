.class Labcd/zJ$d;
.super Labcd/gI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/zJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final gW:Labcd/zJ;

.field private yS:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Labcd/zJ;)V
    .registers 10

    iput-object p1, p0, Labcd/zJ$d;->gW:Labcd/zJ;

    invoke-direct {p0, p1}, Labcd/gI;-><init>(Labcd/BI;)V

    :try_start_5
    new-instance v5, Labcd/IG;

    invoke-static {p1}, Labcd/zJ;->j6(Labcd/zJ;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v5, p1}, Labcd/IG;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_49

    :try_start_e
    new-instance p1, Ljava/io/PipedInputStream;

    invoke-direct {p1}, Ljava/io/PipedInputStream;-><init>()V

    new-instance v4, Ljava/io/PipedOutputStream;

    invoke-direct {v4, p1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    new-instance v3, Ljava/io/PipedInputStream;

    invoke-direct {v3}, Ljava/io/PipedInputStream;-><init>()V

    new-instance v6, Ljava/io/PipedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_37

    new-instance v7, Labcd/CJ;

    const-string v2, "JGit-Receive-Pack"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Labcd/CJ;-><init>(Labcd/zJ$d;Ljava/lang/String;Ljava/io/PipedInputStream;Ljava/io/PipedOutputStream;Labcd/UE;)V

    iput-object v7, p0, Labcd/zJ$d;->yS:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, p1, v6}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void

    :catch_37
    move-exception p1

    invoke-virtual {v5}, Labcd/UE;->j6()V

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotConnectPipes:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_49
    move-exception p1

    new-instance p1, Labcd/yD;

    iget-object v0, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notAGitDirectory:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic j6(Labcd/zJ$d;)Labcd/zJ;
    .registers 1

    iget-object p0, p0, Labcd/zJ$d;->gW:Labcd/zJ;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-super {p0}, Labcd/cI;->close()V

    iget-object v0, p0, Labcd/zJ$d;->yS:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception v0

    iput-object v1, p0, Labcd/zJ$d;->yS:Ljava/lang/Thread;

    throw v0

    :catch_10
    move-exception v0

    :goto_11
    iput-object v1, p0, Labcd/zJ$d;->yS:Ljava/lang/Thread;

    :cond_13
    return-void
.end method
