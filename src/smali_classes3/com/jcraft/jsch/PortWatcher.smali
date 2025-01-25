.class Lcom/jcraft/jsch/PortWatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static DW:Ljava/net/InetAddress;

.field private static j6:Ljava/util/Vector;


# instance fields
.field FH:Lcom/jcraft/jsch/Session;

.field Hw:I

.field VH:Ljava/net/InetAddress;

.field Zo:Ljava/lang/String;

.field gn:Ljava/lang/Runnable;

.field tp:I

.field u7:Ljava/net/ServerSocket;

.field v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->DW:Ljava/net/InetAddress;

    :try_start_a
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->DW:Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/PortWatcher;->tp:I

    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->FH:Lcom/jcraft/jsch/Session;

    iput p3, p0, Lcom/jcraft/jsch/PortWatcher;->Hw:I

    iput-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->Zo:Ljava/lang/String;

    iput p5, p0, Lcom/jcraft/jsch/PortWatcher;->v5:I

    :try_start_e
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->VH:Ljava/net/InetAddress;

    if-nez p6, :cond_1e

    new-instance p1, Ljava/net/ServerSocket;

    iget-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->VH:Ljava/net/InetAddress;

    invoke-direct {p1, p3, v0, p4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    goto :goto_22

    :cond_1e
    invoke-interface {p6, p3, v0, p1}, Lcom/jcraft/jsch/ServerSocketFactory;->j6(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object p1

    :goto_22
    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->u7:Ljava/net/ServerSocket;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_30

    if-nez p3, :cond_2f

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2f

    iput p1, p0, Lcom/jcraft/jsch/PortWatcher;->Hw:I

    :cond_2f
    return-void

    :catch_30
    move-exception p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "PortForwardingL: local port "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be bound."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;
    .registers 8

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_3f

    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_8
    :try_start_8
    sget-object v2, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_13

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_13
    sget-object v2, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/PortWatcher;

    iget-object v3, v2, Lcom/jcraft/jsch/PortWatcher;->FH:Lcom/jcraft/jsch/Session;

    if-ne v3, p0, :cond_39

    iget v3, v2, Lcom/jcraft/jsch/PortWatcher;->Hw:I

    if-ne v3, p2, :cond_39

    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->DW:Ljava/net/InetAddress;

    if-eqz v3, :cond_2f

    iget-object v4, v2, Lcom/jcraft/jsch/PortWatcher;->VH:Ljava/net/InetAddress;

    invoke-virtual {v4, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_2f
    iget-object v3, v2, Lcom/jcraft/jsch/PortWatcher;->VH:Ljava/net/InetAddress;

    invoke-virtual {v3, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_37
    monitor-exit v0

    return-object v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw p0

    :catch_3f
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PortForwardingL: invalid address "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specified."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    :goto_59
    throw p1

    :goto_5a
    goto :goto_59
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;
    .registers 13

    invoke-static {p1}, Lcom/jcraft/jsch/PortWatcher;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/jcraft/jsch/PortWatcher;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    if-nez p1, :cond_1b

    new-instance p1, Lcom/jcraft/jsch/PortWatcher;

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/PortWatcher;-><init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V

    sget-object p0, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p1

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "PortForwardingL: local port "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    :cond_11
    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "127.0.0.1"

    goto :goto_1e

    :cond_1c
    :goto_1c
    const-string p0, "0.0.0.0"

    :cond_1e
    :goto_1e
    return-object p0
.end method

.method static j6(Lcom/jcraft/jsch/Session;)V
    .registers 8

    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jcraft/jsch/PortWatcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_24

    :goto_16
    if-lt v2, v4, :cond_1a

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3a

    return-void

    :cond_1a
    aget-object p0, v1, v2

    :try_start_1c
    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {v3, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->j6:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/PortWatcher;

    iget-object v6, v5, Lcom/jcraft/jsch/PortWatcher;->FH:Lcom/jcraft/jsch/Session;

    if-ne v6, p0, :cond_37

    invoke-virtual {v5}, Lcom/jcraft/jsch/PortWatcher;->j6()V
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_3a

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    goto :goto_3e

    :goto_3d
    throw p0

    :goto_3e
    goto :goto_3d
.end method


# virtual methods
.method j6()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->gn:Ljava/lang/Runnable;

    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->u7:Ljava/net/ServerSocket;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    :cond_a
    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->u7:Ljava/net/ServerSocket;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method j6(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/PortWatcher;->tp:I

    return-void
.end method

.method public run()V
    .registers 5

    iput-object p0, p0, Lcom/jcraft/jsch/PortWatcher;->gn:Ljava/lang/Runnable;

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->gn:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    goto :goto_51

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->u7:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->we()V

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j6(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j6(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->FH:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Channel;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->Zo:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->DW(Ljava/lang/String;)V

    iget v1, p0, Lcom/jcraft/jsch/PortWatcher;->v5:I

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->tp(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->FH(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->u7(I)V

    iget v0, p0, Lcom/jcraft/jsch/PortWatcher;->tp:I

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j6(I)V

    iget v0, v3, Lcom/jcraft/jsch/Channel;->aM:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_2

    :catch_50
    move-exception v0

    :goto_51
    invoke-virtual {p0}, Lcom/jcraft/jsch/PortWatcher;->j6()V

    return-void
.end method
