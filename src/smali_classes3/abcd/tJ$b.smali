.class Labcd/tJ$b;
.super Labcd/eI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private cn:Labcd/YK;

.field private final ro:Ljava/lang/Process;

.field final sh:Labcd/tJ;


# direct methods
.method constructor <init>(Labcd/tJ;)V
    .registers 6

    iput-object p1, p0, Labcd/tJ$b;->sh:Labcd/tJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    :try_start_5
    invoke-virtual {p1}, Labcd/dJ;->aM()Labcd/ZI;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jJ;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/tJ;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jJ;->gn()I

    move-result v2

    invoke-interface {v0, v1, v2}, Labcd/ZI;->j6(Ljava/lang/String;I)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Labcd/tJ$b;->ro:Ljava/lang/Process;

    new-instance v1, Labcd/WK;

    invoke-direct {v1}, Labcd/WK;-><init>()V

    invoke-virtual {p0, v1}, Labcd/aI;->j6(Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Labcd/YK;

    invoke-virtual {v1}, Labcd/WK;->j6()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Labcd/YK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v3, p0, Labcd/tJ$b;->cn:Labcd/YK;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_40
    .catch Labcd/yD; {:try_start_5 .. :try_end_40} :catch_6d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_40} :catch_5b

    :try_start_40
    invoke-virtual {p0}, Labcd/cI;->EQ()V
    :try_end_43
    .catch Labcd/hD; {:try_start_40 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception v0

    invoke-virtual {p0}, Labcd/aI;->j6()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/tJ$b;->ro:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v2

    invoke-virtual {p1}, Labcd/jJ;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Labcd/tJ;->j6(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Labcd/tJ;->j6(Labcd/hD;Ljava/lang/String;)Labcd/hD;

    move-result-object p1

    throw p1

    :catch_5b
    move-exception p1

    invoke-virtual {p0}, Labcd/tJ$b;->close()V

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->remoteHungUpUnexpectedly:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_6d
    move-exception p1

    invoke-virtual {p0}, Labcd/tJ$b;->close()V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-virtual {p0}, Labcd/cI;->u7()V

    iget-object v0, p0, Labcd/tJ$b;->cn:Labcd/YK;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Labcd/YK;->DW()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception v0

    iput-object v1, p0, Labcd/tJ$b;->cn:Labcd/YK;

    throw v0

    :catch_10
    move-exception v0

    :goto_11
    iput-object v1, p0, Labcd/tJ$b;->cn:Labcd/YK;

    :cond_13
    invoke-super {p0}, Labcd/eI;->close()V

    iget-object v0, p0, Labcd/tJ$b;->ro:Ljava/lang/Process;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1d
    return-void
.end method
