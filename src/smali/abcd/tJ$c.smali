.class Labcd/tJ$c;
.super Labcd/gI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final BT:Labcd/tJ;

.field private gW:Labcd/YK;

.field private final yS:Ljava/lang/Process;


# direct methods
.method constructor <init>(Labcd/tJ;)V
    .registers 6

    iput-object p1, p0, Labcd/tJ$c;->BT:Labcd/tJ;

    invoke-direct {p0, p1}, Labcd/gI;-><init>(Labcd/BI;)V

    :try_start_0
    invoke-virtual {p1}, Labcd/dJ;->aM()Labcd/ZI;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/tJ;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/jJ;->gn()I

    move-result v2

    invoke-interface {v0, v1, v2}, Labcd/ZI;->j6(Ljava/lang/String;I)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Labcd/tJ$c;->yS:Ljava/lang/Process;

    new-instance v0, Labcd/WK;

    invoke-direct {v0}, Labcd/WK;-><init>()V

    invoke-virtual {p0, v0}, Labcd/aI;->j6(Ljava/io/Writer;)V

    iget-object v1, p0, Labcd/tJ$c;->yS:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Labcd/YK;

    invoke-virtual {v0}, Labcd/WK;->j6()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Labcd/YK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v2, p0, Labcd/tJ$c;->gW:Labcd/YK;

    iget-object v0, p0, Labcd/tJ$c;->gW:Labcd/YK;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Labcd/tJ$c;->yS:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Labcd/tJ$c;->yS:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Labcd/cI;->EQ()V
    :try_end_1
    .catch Labcd/hD; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/aI;->j6()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/tJ$c;->yS:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v2

    invoke-virtual {p1}, Labcd/jJ;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Labcd/tJ;->j6(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Labcd/tJ;->j6(Labcd/hD;Ljava/lang/String;)Labcd/hD;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Labcd/tJ$c;->close()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->remoteHungUpUnexpectedly:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Labcd/tJ$c;->close()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/cI;->u7()V

    iget-object v0, p0, Labcd/tJ$c;->gW:Labcd/YK;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Labcd/YK;->DW()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Labcd/tJ$c;->gW:Labcd/YK;

    :cond_0
    invoke-super {p0}, Labcd/cI;->close()V

    iget-object v0, p0, Labcd/tJ$c;->yS:Ljava/lang/Process;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/tJ$c;->gW:Labcd/YK;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
