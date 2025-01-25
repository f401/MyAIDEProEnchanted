.class Lcom/jcraft/jsch/ChannelSession;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static lg:[B


# instance fields
.field protected BT:Ljava/lang/String;

.field protected P8:I

.field protected SI:[B

.field protected ei:I

.field protected er:Z

.field protected gW:Z

.field protected nw:I

.field protected rN:Z

.field protected vy:I

.field protected yS:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "session"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelSession;->lg:[B

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->rN:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->er:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->yS:Ljava/util/Hashtable;

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->gW:Z

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->BT:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->vy:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->P8:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->ei:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->nw:I

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->SI:[B

    sget-object v0, Lcom/jcraft/jsch/ChannelSession;->lg:[B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    return-void
.end method

.method private j6(Ljava/lang/Object;)[B
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_b
    check-cast p1, [B

    return-object p1
.end method


# virtual methods
.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->gW:Z

    return-void
.end method

.method protected XL()V
    .registers 7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->rN:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/jcraft/jsch/RequestAgentForwarding;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestAgentForwarding;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestAgentForwarding;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_10
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->er:Z

    if-eqz v1, :cond_1c

    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestX11;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1c
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->gW:Z

    if-eqz v1, :cond_3f

    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->BT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/RequestPtyReq;->j6(Ljava/lang/String;)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelSession;->vy:I

    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->P8:I

    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->ei:I

    iget v5, p0, Lcom/jcraft/jsch/ChannelSession;->nw:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jcraft/jsch/RequestPtyReq;->j6(IIII)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->SI:[B

    if-eqz v2, :cond_3c

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/RequestPtyReq;->j6([B)V

    :cond_3c
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestPtyReq;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_3f
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->yS:Ljava/util/Hashtable;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_6c

    :cond_4e
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->yS:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {v4}, Lcom/jcraft/jsch/RequestEnv;-><init>()V

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSession;->j6(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSession;->j6(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/jcraft/jsch/RequestEnv;->j6([B[B)V

    invoke-virtual {v4, v0, p0}, Lcom/jcraft/jsch/RequestEnv;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    goto :goto_47

    :cond_6c
    :goto_6c
    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->rN:Z

    return-void
.end method

.method public run()V
    .registers 7

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-nez v2, :cond_21

    goto :goto_5e

    :cond_21
    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v4, v4

    const/16 v5, 0xe

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x54

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-nez v2, :cond_36

    goto :goto_c

    :cond_36
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3d

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    goto :goto_5e

    :cond_3d
    iget-boolean v3, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v3, :cond_42

    goto :goto_5e

    :cond_42
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget v3, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5c} :catch_5d

    goto :goto_c

    :catch_5d
    move-exception v0

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    if-eqz v0, :cond_6b

    monitor-enter v0

    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_6b

    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_68

    throw v1

    :cond_6b
    :goto_6b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    return-void
.end method
