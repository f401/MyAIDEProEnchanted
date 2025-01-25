.class Lcom/jcraft/jsch/ChannelX11;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static BT:[B = null

.field static er:[B = null

.field private static gW:Ljava/util/Hashtable; = null

.field private static lg:Ljava/lang/String; = "127.0.0.1"

.field private static rN:I = 0x1770

.field private static yS:Ljava/util/Hashtable;


# instance fields
.field private P8:Ljava/net/Socket;

.field private ei:[B

.field private vy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->yS:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->gW:Ljava/util/Hashtable;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->BT:[B

    return-void

    :array_18
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelX11;->vy:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->P8:Ljava/net/Socket;

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->ei:[B

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const/16 v1, 0x4000

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    const-string v1, "x11"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    return-void
.end method

.method static FH(Lcom/jcraft/jsch/Session;)[B
    .registers 9

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->gW:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->gW:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_48

    sget-object v1, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    const/16 v2, 0x10

    new-array v3, v2, [B

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4a

    const/4 v4, 0x0

    :try_start_15
    invoke-interface {v1, v3, v4, v2}, Lcom/jcraft/jsch/Random;->j6([BII)V

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_45

    :try_start_19
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->yS:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    new-array v1, v1, [B

    :goto_22
    if-lt v4, v2, :cond_2a

    sget-object v2, Lcom/jcraft/jsch/ChannelX11;->gW:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_2a
    mul-int/lit8 v5, v4, 0x2

    sget-object v6, Lcom/jcraft/jsch/ChannelX11;->BT:[B

    aget-byte v7, v3, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-byte v7, v6, v7

    aput-byte v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v7, v3, v4

    and-int/lit8 v7, v7, 0xf

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_4a

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0

    :cond_48
    :goto_48
    monitor-exit v0

    return-object v1

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4a

    goto :goto_4e

    :goto_4d
    throw p0

    :goto_4e
    goto :goto_4d
.end method

.method private FH([BII)[B
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->ei:[B

    array-length v1, v0

    add-int/2addr v1, p3

    new-array v1, v1, [B

    array-length v0, v0

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelX11;->ei:[B

    array-length p2, p1

    if-lez p2, :cond_14

    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, v1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->ei:[B

    return-object v1
.end method

.method static Hw(Lcom/jcraft/jsch/Session;)V
    .registers 3

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->gW:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->gW:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->yS:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static j6([B[B)Z
    .registers 6

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p0

    if-lt v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method j6([BII)V
    .registers 10

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelX11;->vy:Z

    if-eqz v0, :cond_9e

    :try_start_4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0
    :try_end_8
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_4 .. :try_end_8} :catch_93

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelX11;->FH([BII)[B

    move-result-object p1

    array-length p2, p1

    const/16 p3, 0x9

    if-ge p2, p3, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr v2, p3

    const/4 p3, 0x0

    aget-byte v3, p1, p3

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0x42

    if-eq v4, v5, :cond_4e

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4e

    shl-int/lit8 v3, v1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    shl-int/lit8 v3, v2, 0x8

    and-int/2addr v3, v4

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    :cond_4e
    neg-int v3, v1

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v3

    add-int v3, v1, v2

    if-ge p2, v3, :cond_59

    return-void

    :cond_59
    new-array v3, v2, [B

    invoke-static {p1, v1, v3, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v4, Lcom/jcraft/jsch/ChannelX11;->yS:Ljava/util/Hashtable;

    monitor-enter v4

    :try_start_61
    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->yS:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_90

    invoke-static {v3, v0}, Lcom/jcraft/jsch/ChannelX11;->j6([B[B)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->er:[B

    if-eqz v0, :cond_86

    invoke-static {v0, p3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_86

    :cond_79
    iput-object v3, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->j6()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    :cond_86
    :goto_86
    iput-boolean p3, p0, Lcom/jcraft/jsch/ChannelX11;->vy:Z

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p3, p2}, Lcom/jcraft/jsch/IO;->DW([BII)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelX11;->ei:[B

    return-void

    :catchall_90
    move-exception p1

    :try_start_91
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p1

    :catch_93
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9e
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->DW([BII)V

    return-void
.end method

.method public run()V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->lg:Ljava/lang/String;

    sget v2, Lcom/jcraft/jsch/ChannelX11;->rN:I

    const/16 v3, 0x2710

    invoke-static {v1, v2, v3}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->P8:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    new-instance v1, Lcom/jcraft/jsch/IO;

    invoke-direct {v1}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->P8:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->P8:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->Ws()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_8e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :goto_42
    :try_start_42
    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-nez v2, :cond_51

    goto :goto_8a

    :cond_51
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

    if-gtz v2, :cond_69

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->FH()V

    goto :goto_8a

    :cond_69
    iget-boolean v3, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v3, :cond_6e

    goto :goto_8a

    :cond_6e
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
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_88} :catch_89

    goto :goto_42

    :catch_89
    move-exception v0

    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void

    :catch_8e
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->DW(I)V

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void
.end method
