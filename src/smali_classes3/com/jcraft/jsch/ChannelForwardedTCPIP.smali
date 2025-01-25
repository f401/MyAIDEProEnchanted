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
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->v5(I)V

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

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_f

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_f
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget-object v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->j6:Lcom/jcraft/jsch/Session;

    if-eq v3, p0, :cond_1c

    goto :goto_33

    :cond_1c
    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    if-eq v3, p2, :cond_29

    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    if-nez v3, :cond_33

    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->FH:I

    if-eq v3, p2, :cond_29

    goto :goto_33

    :cond_29
    if-eqz p1, :cond_36

    iget-object v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->Hw:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_36
    monitor-exit v0

    return-object v2

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    goto :goto_3c

    :goto_3b
    throw p0

    :goto_3c
    goto :goto_3b
.end method

.method static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "localhost"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    return-object p0

    :cond_15
    :goto_15
    const-string p0, ""

    return-object p0
.end method

.method static FH(Lcom/jcraft/jsch/Session;)V
    .registers 8

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_22

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_37

    :goto_17
    if-lt v2, v4, :cond_1a

    return-void

    :cond_1a
    aget v0, v1, v2

    invoke-static {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j6(Lcom/jcraft/jsch/Session;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    :try_start_22
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget-object v6, v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->j6:Lcom/jcraft/jsch/Session;

    if-ne v6, p0, :cond_34

    iget v5, v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw p0

    :goto_3b
    goto :goto_3a
.end method

.method static j6(Lcom/jcraft/jsch/Session;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    :cond_12
    if-nez v1, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    if-nez p1, :cond_1f

    iget-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->Hw:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_55

    :cond_1f
    if-nez p1, :cond_23

    const-string p1, "0.0.0.0"

    :cond_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_55

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_30
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    const-string v2, "cancel-tcpip-forward"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    move-exception p0

    :goto_54
    return-void

    :catchall_55
    move-exception p0

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .registers 9

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    monitor-enter v0

    :try_start_7
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    if-nez v1, :cond_27

    new-instance v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    invoke-direct {v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;-><init>()V

    iput-object p0, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->j6:Lcom/jcraft/jsch/Session;

    iput p2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->DW:I

    iput p3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->FH:I

    iput-object p4, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    iput p5, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->Zo:I

    iput-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->Hw:Ljava/lang/String;

    iput-object p6, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->VH:Lcom/jcraft/jsch/SocketFactory;

    sget-object p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lg:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_27
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PortForwardingR: remote port "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p0
.end method


# virtual methods
.method j6(Lcom/jcraft/jsch/Buffer;)V
    .registers 7

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->VH(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->DW(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->gn(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    const/4 p1, 0x0

    :try_start_24
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v2
    :try_end_28
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_2b

    :catch_29
    move-exception v2

    move-object v2, p1

    :goto_2b
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez v3, :cond_3d

    invoke-static {v2, p1, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    :cond_3d
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez p1, :cond_72

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ChannelForwardedTCPIP: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not registered."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_72
    return-void
.end method

.method public run()V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->yS:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    instance-of v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    if-eqz v2, :cond_45

    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    const v5, 0x8000

    invoke-direct {v4, p0, v2, v5}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;Z)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->gn()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, p0, v4, v2}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->j6(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iget-object v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->Zo:[Ljava/lang/Object;

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->j6([Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->er:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_7b

    :cond_45
    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->VH:Lcom/jcraft/jsch/SocketFactory;

    if-nez v2, :cond_56

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->Zo:I

    const/16 v3, 0x2710

    invoke-static {v2, v1, v3}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v1

    goto :goto_60

    :cond_56
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->VH:Lcom/jcraft/jsch/SocketFactory;

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->v5:Ljava/lang/String;

    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->Zo:I

    invoke-interface {v2, v3, v1}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    :goto_60
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rN:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    :goto_7b
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->Ws()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7e} :catch_e2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_90
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v2

    :goto_94
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-nez v3, :cond_a3

    goto :goto_de

    :cond_a3
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v5, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v5, v5

    const/16 v6, 0xe

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x54

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_bb

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    goto :goto_de

    :cond_bb
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    monitor-enter p0
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_cf} :catch_dd

    :try_start_cf
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v4, :cond_d5

    monitor-exit p0

    goto :goto_de

    :cond_d5
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    monitor-exit p0

    goto :goto_94

    :catchall_da
    move-exception v0

    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_cf .. :try_end_dc} :catchall_da

    :try_start_dc
    throw v0
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_dd} :catch_dd

    :catch_dd
    move-exception v0

    :cond_de
    :goto_de
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void

    :catch_e2
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->DW(I)V

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void
.end method
