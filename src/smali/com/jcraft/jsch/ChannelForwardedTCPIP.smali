.class public Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.super Lcom/jcraft/jsch/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;
    }
.end annotation


# static fields
.field private static lg:Ljava/util/Vector;


# instance fields
.field private er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

.field private rN:Ljava/net/Socket;

.field private yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/high16 v1, 0x20000

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    return-void
.end method

.method private static DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;
    .registers 7

    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget-object v3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->j6:Lcom/jcraft/jsch/Session;

    if-eq v3, p0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    if-eq v3, p2, :cond_3

    iget v3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    if-nez v3, :cond_1

    iget v3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->FH:I

    if-ne v3, p2, :cond_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->Hw:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_1

    const-string p0, "localhost"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method static FH(Lcom/jcraft/jsch/Session;)V
    .registers 8

    const/4 v2, 0x0

    sget-object v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [I

    move v3, v2

    move v1, v2

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_1
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v2, v5, v0

    invoke-static {p0, v2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j6(Lcom/jcraft/jsch/Session;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget-object v6, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->j6:Lcom/jcraft/jsch/Session;

    if-ne v6, p0, :cond_2

    iget v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static j6(Lcom/jcraft/jsch/Session;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .registers 7

    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->Hw:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "0.0.0.0"

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_2
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    const-string v3, "cancel-tcpip-forward"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .registers 11

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    invoke-direct {v2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;-><init>()V

    iput-object p0, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->j6:Lcom/jcraft/jsch/Session;

    iput p2, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    iput p3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->FH:I

    iput-object p4, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    iput p5, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->Zo:I

    iput-object v0, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->Hw:Ljava/lang/String;

    iput-object p6, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->VH:Lcom/jcraft/jsch/SocketFactory;

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PortForwardingR: remote port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method j6(Lcom/jcraft/jsch/Buffer;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->VH(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jcraft/jsch/Channel;->DW(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->gn(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez v4, :cond_0

    invoke-static {v0, v1, v3}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ChannelForwardedTCPIP: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public run()V
    .registers 8

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    instance-of v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    check-cast v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    iget-object v1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    new-instance v3, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    const v4, 0x8000

    invoke-direct {v3, p0, v1, v4}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;Z)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->gn()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v2, p0, v3, v1}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->j6(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->Zo:[Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->j6([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->Ws()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    :goto_3
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    check-cast v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    iget-object v1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->VH:Lcom/jcraft/jsch/SocketFactory;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    iget v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->Zo:I

    const/16 v2, 0x2710

    invoke-static {v1, v0, v2}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Channel;->DW(I)V

    iput-boolean v5, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->VH:Lcom/jcraft/jsch/SocketFactory;

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    iget v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->Zo:I

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_4

    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/16 v5, 0xe

    iget-object v6, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0xe

    add-int/lit8 v6, v6, -0x54

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v4, :cond_5

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :try_start_7
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1
.end method
