.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;


# instance fields
.field KD:Z

.field cn:Z

.field ro:Z

.field sh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->KD:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->ro:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->cn:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->sh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->ro:Z

    return-void
.end method

.method public QX()V
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    :try_start_4
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->KD:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestX11;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_10
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->ro:Z

    if-eqz v1, :cond_1c

    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestPtyReq;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1c
    new-instance v1, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSubsystem;->sh:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->cn:Z

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/jcraft/jsch/RequestSubsystem;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_59

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-eqz v1, :cond_58

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subsystem for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_53
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_58
    return-void

    :catch_59
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_66

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelSubsystem"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_66
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
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
