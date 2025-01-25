.class public Lcom/jcraft/jsch/ChannelDirectTCPIP;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static final lg:[B


# instance fields
.field er:I

.field gW:I

.field rN:Ljava/lang/String;

.field yS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "direct-tcpip"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->lg:[B

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->yS:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->gW:I

    sget-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->lg:[B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->rN:Ljava/lang/String;

    return-void
.end method

.method public FH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->yS:Ljava/lang/String;

    return-void
.end method

.method public j6(I)V
    .registers 5

    iput p1, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    :try_start_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DirectTCPIP thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    iget-boolean p1, p1, Lcom/jcraft/jsch/Session;->x9:Z

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_3b
    iget-object p1, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_5d

    :cond_41
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->J8()V

    goto :goto_5d

    :cond_45
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "session is down"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-nez v0, :cond_5e

    :goto_5d
    return-void

    :cond_5e
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1
.end method

.method public j6(Ljava/io/InputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    return-void
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    return-void
.end method

.method public run()V
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->J8()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v2

    :goto_13
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-nez v3, :cond_28

    goto :goto_62

    :cond_28
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

    if-gtz v3, :cond_40

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    goto :goto_62

    :cond_40
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    monitor-enter p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_69

    :try_start_54
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v4, :cond_5a

    monitor-exit p0

    goto :goto_62

    :cond_5a
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    monitor-exit p0

    goto :goto_13

    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_69

    :cond_62
    :goto_62
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void

    :catch_69
    move-exception v0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    if-nez v0, :cond_71

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    :cond_71
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void
.end method

.method public tp(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->er:I

    return-void
.end method

.method public u7(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->gW:I

    return-void
.end method

.method protected v5()Lcom/jcraft/jsch/Packet;
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->rN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->yS:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x54

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->FH:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->VH:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->gn:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->rN:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->er:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->yS:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->gW:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    return-object v1
.end method

.method we()V
    .registers 2

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    return-void
.end method
