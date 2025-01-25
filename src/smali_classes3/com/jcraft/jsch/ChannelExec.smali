.class public Lcom/jcraft/jsch/ChannelExec;
.super Lcom/jcraft/jsch/ChannelSession;


# instance fields
.field KD:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->KD:[B

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->KD:[B

    return-void
.end method

.method public bridge synthetic DW(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->DW(Z)V

    return-void
.end method

.method public QX()V
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->XL()V

    new-instance v1, Lcom/jcraft/jsch/RequestExec;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelExec;->KD:[B

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/RequestExec;-><init>([B)V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestExec;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_44

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exec thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_3e
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_43
    return-void

    :catch_44
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_51

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelExec"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_51
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
.end method

.method public aM()Ljava/io/InputStream;
    .registers 2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->VH()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j6(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->j6(Z)V

    return-void
.end method

.method public bridge synthetic run()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method

.method we()V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->ro:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->cn:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    return-void
.end method
