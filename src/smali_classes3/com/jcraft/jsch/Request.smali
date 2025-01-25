.class abstract Lcom/jcraft/jsch/Request;
.super Ljava/lang/Object;


# instance fields
.field private DW:Lcom/jcraft/jsch/Session;

.field private FH:Lcom/jcraft/jsch/Channel;

.field private j6:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Request;->j6:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Request;->DW:Lcom/jcraft/jsch/Session;

    iput-object v0, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    return-void
.end method


# virtual methods
.method j6(Lcom/jcraft/jsch/Packet;)V
    .registers 10

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->j6:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iput v1, v0, Lcom/jcraft/jsch/Channel;->j3:I

    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->DW:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    iget-boolean p1, p0, Lcom/jcraft/jsch/Request;->j6:Z

    if-eqz p1, :cond_5d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget p1, p1, Lcom/jcraft/jsch/Channel;->Mr:I

    int-to-long v4, p1

    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget p1, p1, Lcom/jcraft/jsch/Channel;->j3:I

    if-eq p1, v1, :cond_2a

    goto :goto_4e

    :cond_2a
    const-wide/16 v6, 0xa

    :try_start_2c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception p1

    :goto_31
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long p1, v6, v4

    if-gtz p1, :cond_41

    goto :goto_1b

    :cond_41
    iget-object p1, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    const/4 v0, 0x0

    iput v0, p1, Lcom/jcraft/jsch/Channel;->j3:I

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "channel request: timeout"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget p1, p1, Lcom/jcraft/jsch/Channel;->j3:I

    if-eqz p1, :cond_55

    goto :goto_5d

    :cond_55
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "failed to send channel request"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    :goto_5d
    return-void
.end method

.method j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Request;->DW:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/Request;->FH:Lcom/jcraft/jsch/Channel;

    iget p1, p2, Lcom/jcraft/jsch/Channel;->Mr:I

    if-lez p1, :cond_c

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Request;->j6(Z)V

    :cond_c
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
