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
    .registers 6

    iput-object p1, p0, Labcd/qJ$a;->cn:Labcd/qJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    invoke-virtual {p1}, Labcd/qJ;->aM()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    :try_start_0
    iget-object v0, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/qJ$a;->close()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->remoteHungUpUnexpectedly:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/eI;->close()V

    iget-object v0, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/qJ$a;->ro:Ljava/net/Socket;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
