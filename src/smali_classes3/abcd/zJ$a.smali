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
    .registers 4

    iput-object p1, p0, Labcd/zJ$a;->sh:Labcd/zJ;

    invoke-direct {p0, p1}, Labcd/eI;-><init>(Labcd/BI;)V

    new-instance v0, Labcd/WK;

    invoke-direct {v0}, Labcd/WK;-><init>()V

    invoke-virtual {p0, v0}, Labcd/aI;->j6(Ljava/io/Writer;)V

    invoke-virtual {p1}, Labcd/jJ;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/zJ;->FH(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    iput-object p1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    new-instance p1, Labcd/YK;

    iget-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Labcd/WK;->j6()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Labcd/YK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object p1, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Labcd/XK;

    invoke-direct {p1, v0}, Labcd/XK;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1, p1}, Labcd/cI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Labcd/cI;->EQ()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-super {p0}, Labcd/eI;->close()V

    iget-object v0, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception v0

    iput-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    throw v0

    :catch_10
    move-exception v0

    :goto_11
    iput-object v1, p0, Labcd/zJ$a;->ro:Ljava/lang/Process;

    :cond_13
    iget-object v0, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    if-eqz v0, :cond_22

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1f
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception v0

    iput-object v1, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    throw v0

    :catch_1f
    move-exception v0

    :goto_20
    iput-object v1, p0, Labcd/zJ$a;->cn:Ljava/lang/Thread;

    :cond_22
    return-void
.end method
