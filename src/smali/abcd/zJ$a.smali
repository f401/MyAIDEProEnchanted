.class Labcd/zJ$a;
.super Labcd/eI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/zJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private cn:Ljava/lang/Thread;

.field private ro:Ljava/lang/Process;

.field final sh:Labcd/zJ;


# direct methods
.method constructor <init>(Labcd/zJ;)V
    .registers 5

    iput-object p1, p0, Labcd/zJ$a;->sh:Labcd/zJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    new-instance v0, Labcd/WK;

    invoke-direct {v0}, Labcd/WK;-><init>()V

    invoke-virtual {p0, v0}, Labcd/aI;->j6(Ljava/io/Writer;)V

    invoke-virtual {p1}, Labcd/jJ;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/zJ;->FH(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    new-instance v1, Labcd/YK;

    iget-object v2, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Labcd/WK;->j6()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/YK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    iget-object v0, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Labcd/XK;

    invoke-direct {v0, v1}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2, v0}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/eI;->close()V

    iget-object v0, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    :cond_0
    iget-object v0, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    iput-object v1, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    throw v0

    :catchall_1
    move-exception v0

    iput-object v1, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
