.class Labcd/qJ$a;
.super Labcd/eI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/qJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final cn:Labcd/qJ;

.field private ro:Ljava/net/Socket;


# direct methods
.method constructor <init>(Labcd/qJ;)V
    .registers 5

    iput-object p1, p0, Labcd/qJ$a;->cn:Labcd/qJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    invoke-virtual {p1}, Labcd/qJ;->aM()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    :try_start_b
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Labcd/XK;

    invoke-direct {v0, v1}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2, v0}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v0, "git-upload-pack"

    iget-object v1, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {p1, v0, v1}, Labcd/qJ;->j6(Ljava/lang/String;Labcd/EI;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_2d

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void

    :catch_2d
    move-exception p1

    invoke-virtual {p0}, Labcd/qJ$a;->close()V

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->remoteHungUpUnexpectedly:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-super {p0}, Labcd/eI;->close()V

    iget-object v0, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception v0

    iput-object v1, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    throw v0

    :catch_10
    move-exception v0

    :goto_11
    iput-object v1, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    :cond_13
    return-void
.end method
