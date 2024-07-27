.class abstract Lcom/jcraft/jsch/Request;
.super Ljava/lang/Object;


# instance fields
.field private DW:Lcom/jcraft/jsch/Session;

.field private FH:Lcom/jcraft/jsch/Channel;

.field private j6:Z


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Request;->j6:Z

    iput-object v1, p0, Lcom/jcraft/jsch/Request;->DW:Lcom/jcraft/jsch/Session;

    iput-object v1, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    return-void
.end method


# virtual methods
.method j6(Lcom/jcraft/jsch/Packet;)V
    .registers 9

    const/4 v6, -0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->j6:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iput v6, v0, Lcom/jcraft/jsch/Channel;->j3:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->DW:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->j6:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget v2, v2, Lcom/jcraft/jsch/Channel;->Mr:I

    int-to-long v2, v2

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget v4, v4, Lcom/jcraft/jsch/Channel;->j3:I

    if-eq v4, v6, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget v0, v0, Lcom/jcraft/jsch/Channel;->j3:I

    if-eqz v0, :cond_5

    :cond_3
    return-void

    :cond_4
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jsch/Channel;->j3:I

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel request: timeout"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "failed to send channel request"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Request;->DW:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget v0, p2, Lcom/jcraft/jsch/Channel;->Mr:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->j6(Z)V

    :cond_0
    return-void
.end method

.method j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/jcraft/jsch/Request;->j6:Z

    return-void
.end method

.method j6()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->j6:Z

    return v0
.end method
