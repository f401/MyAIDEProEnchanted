.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Session$Forwarding;,
        Lcom/jcraft/jsch/Session$GlobalRequestReply;
    }
.end annotation


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field static j6:Lcom/jcraft/jsch/Random;


# instance fields
.field private BT:I

.field private CU:I

.field private EQ:[B

.field private Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field private Hw:[B

.field private I:Lcom/jcraft/jsch/IdentityRepository;

.field private J0:[B

.field private J8:[B

.field KD:Z

.field private Mr:Lcom/jcraft/jsch/MAC;

.field private Mz:I

.field OW:Ljava/lang/String;

.field private P8:Z

.field private QX:I

.field private Qq:J

.field SI:Z

.field private Sf:Lcom/jcraft/jsch/UserInfo;

.field private U2:Lcom/jcraft/jsch/MAC;

.field private VH:[B

.field private Ws:I

.field private XG:Z

.field XL:[Ljava/lang/String;

.field XX:Ljava/lang/String;

.field Xa:Ljava/lang/Runnable;

.field private Zo:[B

.field private a8:[B

.field private aM:Lcom/jcraft/jsch/Cipher;

.field aj:I

.field br:I

.field private ca:Lcom/jcraft/jsch/HostKeyRepository;

.field cb:Lcom/jcraft/jsch/Packet;

.field cn:Ljava/io/OutputStream;

.field dx:Lcom/jcraft/jsch/SocketFactory;

.field private ef:Lcom/jcraft/jsch/Proxy;

.field private ei:Ljava/lang/Thread;

.field private er:Lcom/jcraft/jsch/Compression;

.field private et:I

.field private g3:I

.field private gW:Ljava/net/Socket;

.field private gn:[B

.field private hz:Lcom/jcraft/jsch/HostKey;

.field private j3:Lcom/jcraft/jsch/Cipher;

.field jJ:[I

.field kQ:[B

.field private lg:[B

.field lp:Ljava/lang/String;

.field private nw:Ljava/lang/Object;

.field private rN:Lcom/jcraft/jsch/Compression;

.field ro:Ljava/io/InputStream;

.field private sG:Ljava/util/Hashtable;

.field sh:Lcom/jcraft/jsch/Buffer;

.field sy:I

.field private tp:[B

.field private u7:[B

.field private v5:[B

.field private vJ:Ljava/lang/String;

.field private volatile vy:Z

.field wc:[I

.field private we:[B

.field protected x9:Z

.field yO:Lcom/jcraft/jsch/JSch;

.field private yS:Lcom/jcraft/jsch/IO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->DW:[B

    const-string v0, "no-more-sessions@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->FH:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.51"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->v5:[B

    iput v3, p0, Lcom/jcraft/jsch/Session;->Ws:I

    iput v3, p0, Lcom/jcraft/jsch/Session;->QX:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->BT:I

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->vy:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->P8:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->SI:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->KD:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ro:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->cn:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->g3:I

    iput v4, p0, Lcom/jcraft/jsch/Session;->Mz:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ca:Lcom/jcraft/jsch/HostKeyRepository;

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->x9:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Session;->Qq:J

    const/4 v0, 0x6

    iput v0, p0, Lcom/jcraft/jsch/Session;->sy:I

    iput v3, p0, Lcom/jcraft/jsch/Session;->aj:I

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, Lcom/jcraft/jsch/Session;->br:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->XG:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->jJ:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->wc:[I

    iput v5, p0, Lcom/jcraft/jsch/Session;->et:I

    iput v5, p0, Lcom/jcraft/jsch/Session;->CU:I

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$GlobalRequestReply;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    iput-object p2, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    iput p4, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "username is not given."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->VH:[B

    :goto_0
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p1, Lcom/jcraft/jsch/Buffer;->Hw:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->VH:[B

    array-length v3, v2

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->J8()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->VH:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->j6([B[B)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P8:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Hw:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->v5:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->VH:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->VH:[B

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Algorithm negotiation fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private EQ(Ljava/lang/String;)V
    .registers 5

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P8:Z

    if-eqz v1, :cond_0

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Compression;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private FH(Lcom/jcraft/jsch/Packet;)V
    .registers 4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->j6(Lcom/jcraft/jsch/Packet;)V

    iget v0, p0, Lcom/jcraft/jsch/Session;->QX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->QX:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private J0()V
    .registers 6

    const/4 v1, 0x0

    const-string v0, "ClearAllForwardings"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->j6()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v2

    const-string v0, "LocalForward"

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_3

    :cond_2
    const-string v0, "RemoteForward"

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->VH(Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->Zo(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private J8()V
    .registers 13

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "cipher.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->gn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :cond_2
    const-string v2, "kex"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckKexes"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/Session;->u7(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_3
    iput-boolean v10, p0, Lcom/jcraft/jsch/Session;->XG:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jcraft/jsch/Session;->Qq:J

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v4, Lcom/jcraft/jsch/Packet;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    sget-object v5, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    iget-object v7, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v8, v3, Lcom/jcraft/jsch/Buffer;->FH:I

    const/16 v9, 0x10

    invoke-interface {v6, v7, v8, v9}, Lcom/jcraft/jsch/Random;->j6([BII)V

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v2, "server_host_key"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v10, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available kexes."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Ws()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private gn(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckCiphers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_3
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cipher.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    :goto_1
    array-length v7, v6

    if-lt v0, v7, :cond_5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    aget-object v7, v6, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private j6(Ljava/lang/String;I)I
    .registers 10

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(Ljava/lang/Thread;)V

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v4, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    const-string v4, "tcpip-forward"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW()I

    move-result v0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(Ljava/lang/Thread;)V

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6()I

    move-result v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW()I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remote port forwarding failed for listen port "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(Ljava/lang/Thread;)V

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .registers 11

    const/4 v4, 0x0

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->DW()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x40000

    if-eq p4, v0, :cond_1

    if-eqz p3, :cond_1

    :goto_0
    iget v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int v1, p5, v0

    :goto_1
    if-gtz v1, :cond_2

    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-interface {p3, v0, v4}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v0

    if-le v1, v2, :cond_4

    array-length v0, v0

    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v3, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/IO;->j6([BII)V

    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-interface {p3, v2, v4, v0}, Lcom/jcraft/jsch/MAC;->update([BII)V

    :cond_3
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    return-void
.end method

.method private j6(Lcom/jcraft/jsch/ChannelSession;)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->j6()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "ForwardAgent"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSession;->j6(Z)V

    :cond_2
    const-string v1, "RequestTTY"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSession;->DW(Z)V

    goto :goto_0
.end method

.method private j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .registers 4

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private j6(Lcom/jcraft/jsch/KeyExchange;)V
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->v5()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->DW()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->FH()Lcom/jcraft/jsch/HASH;

    move-result-object v5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gn:[B

    if-nez v0, :cond_0

    array-length v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->gn:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gn:[B

    array-length v1, v3

    invoke-static {v3, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->gn:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v1, v7, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->u7:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->gn:[B

    array-length v4, v4

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v6, v0, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    invoke-interface {v5, v0, v7, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->tp:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v1, v7, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v1, v7, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->we:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v1, v7, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J0:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v1, v7, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J8:[B

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v1, v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->we:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->tp:[B

    invoke-interface {v0, v1, v4, v6}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->et:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->J8:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J8:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->J8:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->j6([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->a8:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->lg:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v1, v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->u7:[B

    invoke-interface {v0, v1, v4, v6}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->CU:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->J0:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J0:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->J0:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->j6([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->tp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->EQ(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v1, v1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v8, v8

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_3

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v5, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v1, v1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->we:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v8, v8

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .registers 16

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "StrictHostKeyChecking"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->Hw()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->Zo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->j6()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->FH()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v1

    const-string v0, "HashKnownHosts"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "yes"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, v1, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v0, p1, v5}, Lcom/jcraft/jsch/KnownHosts;->DW(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-interface {v1, p1, v5}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Ljava/lang/String;[B)I

    move-result v8

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v0, "ask"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_2
    if-ne v8, v11, :cond_f

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Lcom/jcraft/jsch/HostKeyRepository;->j6()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    const-string v0, "known_hosts"

    :cond_3
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " host key has just been changed.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "The fingerprint for the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " key sent by the remote host is\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Please contact your system administrator.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Add correct host key in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to get rid of this message."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ask"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/jcraft/jsch/UserInfo;->Hw(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_e

    monitor-enter v1

    :try_start_2
    const-string v0, "DSA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ssh-dss"

    :goto_2
    const/4 v9, 0x0

    :try_start_3
    invoke-interface {v1, p1, v0, v9}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    :goto_3
    const-string v9, "ask"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "yes"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    if-eqz v8, :cond_5

    if-nez v0, :cond_5

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The authenticity of host \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' can\'t be established.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " key fingerprint is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Are you sure you want to continue connecting?"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/UserInfo;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    :cond_5
    const-string v7, "no"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-ne v3, v8, :cond_19

    move v4, v3

    :goto_4
    if-nez v8, :cond_6

    const-string v0, "DSA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "ssh-dss"

    :goto_5
    invoke-interface {v1, p1, v0}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    array-length v7, v5

    invoke-static {v5, v2, v7}, Lcom/jcraft/jsch/Util;->FH([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    :goto_6
    array-length v7, v0

    if-lt v2, v7, :cond_15

    :cond_6
    if-nez v8, :cond_7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Host \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is known and mathces the "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " host key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permanently added \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to the list of known hosts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_8
    if-eqz v4, :cond_9

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_9
    return-void

    :cond_a
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v0, p1, v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    goto/16 :goto_0

    :cond_b
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v9, v0}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    const-string v0, "ssh-rsa"

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HostKey has been changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_f
    move v0, v2

    goto/16 :goto_3

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reject HostKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    if-ne v8, v3, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnknownHostKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key fingerprint is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HostKey has been changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reject HostKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const-string v0, "ssh-rsa"

    goto/16 :goto_5

    :cond_15
    aget-object v7, v0, v8

    invoke-virtual {v7}, Lcom/jcraft/jsch/HostKey;->FH()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    aget-object v7, v0, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/HostKey;->Hw()Ljava/lang/String;

    move-result-object v7

    const-string v9, "@revoked"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " host key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is marked as revoked.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "This could mean that a stolen key is being used to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "impersonate this host."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has provided revoked key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "revoked HostKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_19
    move v4, v0

    goto/16 :goto_4
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .registers 8

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v4

    new-array v4, v4, [B

    invoke-interface {v0, v2, v3, v4}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .registers 12

    const/4 v4, 0x0

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->j6()I

    move-result v1

    :goto_0
    array-length v0, p4

    if-lt v0, p6, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->we()V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p5, v0, v4, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    array-length v0, p4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v2, p4

    invoke-static {p4, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v2

    array-length v3, p4

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->DW([B)V

    move-object p4, v0

    goto :goto_0
.end method

.method private tp(Ljava/lang/String;)V
    .registers 5

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P8:Z

    if-eqz v1, :cond_0

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x6

    :try_start_1
    const-string v1, "compression_level"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Compression;->j6(II)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private u7(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckKexes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_5

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private we(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .registers 8

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$Forwarding;)V

    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_a

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->Hw:I

    const/4 v0, 0x0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_9

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->FH:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_8

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v0, "0.0.0.0"

    :cond_3
    :try_start_1
    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "127.0.0.1"

    :cond_4
    :try_start_2
    iput-object v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-object v1

    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_6
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    const-string v0, "127.0.0.1"

    iput-object v0, v1, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :try_start_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private we()V
    .registers 11

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->j6()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v6

    invoke-interface {v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->DW()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    :cond_2
    invoke-interface {v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->FH()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    :cond_3
    invoke-interface {v6}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcom/jcraft/jsch/Session;->br:I

    :cond_4
    const-string v2, "kex"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "server_host_key"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.c2s"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.s2c"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.c2s"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.s2c"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.c2s"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.s2c"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression_level"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "StrictHostKeyChecking"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HashKnownHosts"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "PreferredAuthentications"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "MaxAuthTries"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "ClearAllForwardings"

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HostKeyAlias"

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->Hw(Ljava/lang/String;)V

    :cond_5
    const-string v2, "UserKnownHostsFile"

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/jcraft/jsch/KnownHosts;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/HostKeyRepository;)V

    :cond_6
    const-string v2, "IdentityFile"

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v2, "IdentityFile"

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move v0, v1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_b

    move-object v0, v2

    :goto_2
    array-length v2, v7

    array-length v3, v0

    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    new-instance v8, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v8, v2, v3}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    move v2, v1

    :goto_3
    array-length v3, v7

    if-lt v2, v3, :cond_d

    invoke-virtual {p0, v8}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/IdentityRepository;)V

    :cond_7
    const-string v0, "ServerAliveInterval"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :goto_4
    const-string v0, "ConnectTimeout"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->FH(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_5
    const-string v0, "MaxAuthTries"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "MaxAuthTries"

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "ClearAllForwardings"

    invoke-interface {v6, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ClearAllForwardings"

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_2

    :cond_d
    aget-object v4, v7, v2

    move v3, v1

    :goto_6
    array-length v9, v0

    if-lt v3, v9, :cond_e

    move-object v3, v4

    :goto_7
    if-nez v3, :cond_10

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    aget-object v9, v0, v3

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    move-object v3, v5

    goto :goto_7

    :cond_10
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-static {v3, v5, v4}, Lcom/jcraft/jsch/IdentityFile;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6(Lcom/jcraft/jsch/Identity;)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    return-object v0
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DW(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->FH(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->g3:I

    return-void
.end method

.method public DW(Lcom/jcraft/jsch/Packet;)V
    .registers 9

    const/16 v6, 0x1f

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->VH()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->FH(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->Qq:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v6, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public EQ()V
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    sget-object v2, Lcom/jcraft/jsch/Session;->DW:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public FH(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .registers 5

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->we()V

    instance-of v1, v2, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ChannelSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "session is down"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public FH()Lcom/jcraft/jsch/HostKeyRepository;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ca:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->DW()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public FH(I)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/jcraft/jsch/Session;->BT:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid timeout value"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->BT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method Hw()Lcom/jcraft/jsch/IdentityRepository;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    return-void
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Session;->BT:I

    return v0
.end method

.method public VH(Ljava/lang/String;)I
    .registers 9

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->we(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object v0

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;I)I

    move-result v3

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    iget-object v4, v0, Lcom/jcraft/jsch/Session$Forwarding;->FH:Ljava/lang/String;

    iget v5, v0, Lcom/jcraft/jsch/Session$Forwarding;->Hw:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return v3
.end method

.method public Zo(Ljava/lang/String;)I
    .registers 6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->we(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object v0

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    iget-object v3, v0, Lcom/jcraft/jsch/Session$Forwarding;->FH:Ljava/lang/String;

    iget v0, v0, Lcom/jcraft/jsch/Session$Forwarding;->Hw:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method Zo()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gn:[B

    return-object v0
.end method

.method public gn()Lcom/jcraft/jsch/UserInfo;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .registers 11

    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/PortWatcher;->j6(I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PortWatcher Thread for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget v0, v0, Lcom/jcraft/jsch/PortWatcher;->Hw:I

    return v0
.end method

.method public j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .registers 13

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget v3, p0, Lcom/jcraft/jsch/Session;->et:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->j6([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget v3, p0, Lcom/jcraft/jsch/Session;->et:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    :cond_1
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v1, v5

    shl-int/lit8 v2, v2, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    or-int/2addr v4, v1

    const/4 v1, 0x5

    if-lt v4, v1, :cond_f

    const/high16 v1, 0x40000

    if-gt v4, v1, :cond_f

    add-int/lit8 v1, v4, 0x4

    iget v2, p0, Lcom/jcraft/jsch/Session;->et:I

    sub-int v8, v1, v2

    iget v1, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int v2, v1, v8

    array-length v3, v0

    if-le v2, v3, :cond_2

    add-int v2, v1, v8

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/Session;->et:I

    rem-int v0, v8, v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad packet length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x40000

    iget v1, p0, Lcom/jcraft/jsch/Session;->et:I

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    const/4 v0, 0x0

    throw v0

    :cond_4
    if-lez v8, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/jcraft/jsch/IO;->j6([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v0, v8

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    if-eqz v5, :cond_5

    iget-object v6, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v7, p0, Lcom/jcraft/jsch/Session;->et:I

    move-object v9, v6

    move v10, v7

    invoke-interface/range {v5 .. v10}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/jcraft/jsch/Session;->Ws:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->update(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->a8:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lg:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->j6([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a8:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lg:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    const/high16 v0, 0x40000

    if-le v8, v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x40000

    sub-int v5, v0, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    const/4 v0, 0x0

    throw v0

    :cond_7
    iget v0, p0, Lcom/jcraft/jsch/Session;->Ws:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->Ws:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->jJ:[I

    const/4 v4, 0x0

    iget v5, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v5, v5, -0x5

    sub-int v2, v5, v2

    aput v2, v3, v4

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Compression;->DW([BI[I)[B

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jJ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_8
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "fail in inflater"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    return-object p1

    :cond_b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/Channel;->j6(J)V

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x34

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P8:Z

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->tp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->EQ(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_DISCONNECT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    const/high16 v5, 0x40000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j6()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnecting from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->j6(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->FH(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->Hw(Lcom/jcraft/jsch/Session;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->Xa:Ljava/lang/Runnable;

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->DW(Lcom/jcraft/jsch/Session;)Z

    goto/16 :goto_0

    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->close()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public j6(I)V
    .registers 15

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-nez v0, :cond_30

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    sget-object v0, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "random"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Random;

    sput-object v0, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    invoke-static {v0}, Lcom/jcraft/jsch/Packet;->j6(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-static {v0, v1, p1}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    :goto_1
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Connection established"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->j6(Lcom/jcraft/jsch/Session;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v5:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->v5:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->v5:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jcraft/jsch/IO;->DW([BII)V

    :cond_4
    move v0, v5

    move v1, v5

    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v2

    if-lt v0, v2, :cond_15

    :cond_6
    :goto_2
    if-ltz v1, :cond_2d

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    if-le v0, v6, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v1, v1

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v2, 0x48

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4

    :cond_8
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2c

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x31

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    const/16 v2, 0x39

    if-ne v1, v2, :cond_2c

    :cond_9
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->Hw:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Hw:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote version string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Hw:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Local version string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->v5:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->J8()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SSH_MSG_KEXINIT received"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->VH()I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    if-ne v1, v2, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jcraft/jsch/Session;->Qq:J

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->VH()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_c

    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-direct {p0, v1, v2, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->Ws()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_28

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "SSH_MSG_NEWKEYS received"

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "MaxAuthTries"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->sy:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_e
    :try_start_5
    const-string v0, "userauth.none"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    move-result v3

    const-string v1, "PreferredAuthentications"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-nez v3, :cond_16

    check-cast v0, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v0}, Lcom/jcraft/jsch/UserAuthNone;->j6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_f
    :goto_3
    const-string v0, ","

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v4, v5

    :goto_4
    move v0, v4

    move v6, v5

    :goto_5
    if-nez v3, :cond_31

    if-eqz v10, :cond_31

    array-length v4, v10

    if-lt v0, v4, :cond_17

    move v5, v6

    :cond_10
    :goto_6
    if-nez v3, :cond_23

    iget v0, p0, Lcom/jcraft/jsch/Session;->aj:I

    iget v1, p0, Lcom/jcraft/jsch/Session;->sy:I

    if-lt v0, v1, :cond_11

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login trials exceeds "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jcraft/jsch/Session;->sy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_11
    if-eqz v5, :cond_22

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth cancel"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    :goto_7
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->XG:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x54

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->j6(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const-string v2, "en"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_12
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->j6()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_9
    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->vy:Z

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2f

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_2e

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    iput-object v8, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    :try_start_b
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v4, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/jcraft/jsch/Proxy;->j6(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->DW()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->j6()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0

    :cond_15
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1}, Lcom/jcraft/jsch/IO;->DW()I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    goto/16 :goto_2

    :cond_16
    move-object v2, v8

    goto/16 :goto_3

    :cond_17
    add-int/lit8 v4, v0, 0x1

    aget-object v11, v10, v0

    move v0, v5

    :goto_a
    :try_start_e
    array-length v9, v1

    if-lt v0, v9, :cond_19

    move v0, v5

    :goto_b
    if-nez v0, :cond_1a

    :cond_18
    move v0, v4

    goto/16 :goto_5

    :cond_19
    aget-object v9, v1, v0

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    move v0, v7

    goto :goto_b

    :cond_1a
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Authentications that can continue: "

    add-int/lit8 v9, v4, -0x1

    :cond_1b
    :goto_c
    :try_start_f
    array-length v12, v10

    if-lt v9, v12, :cond_1e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const/4 v12, 0x1

    invoke-interface {v9, v12, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Next authentication method: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v12, v9}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_1c
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "userauth."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "userauth."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_d
    if-eqz v0, :cond_18

    :try_start_11
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Authentication succeeded ("

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V
    :try_end_11
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_1d
    move-object v0, v1

    :goto_e
    move-object v1, v0

    goto/16 :goto_4

    :cond_1e
    :try_start_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v10, v9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v9, v9, 0x1

    array-length v12, v10

    if-ge v9, v12, :cond_1b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "failed to load "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " method"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v12, v9}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_1f
    move-object v0, v8

    goto/16 :goto_d

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "an exception during authentication\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto/16 :goto_6

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchPartialAuthException;->j6()Ljava/lang/String;

    move-result-object v1

    const-string v0, ","

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    move v4, v5

    :cond_20
    move-object v2, v1

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move v0, v4

    move v6, v7

    goto/16 :goto_5

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_22
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-eqz v0, :cond_25

    if-gtz p1, :cond_24

    iget v0, p0, Lcom/jcraft/jsch/Session;->BT:I

    if-lez v0, :cond_25

    :cond_24
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    iget v1, p0, Lcom/jcraft/jsch/Session;->BT:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P8:Z

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connect thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->x9:Z

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_26
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->J0()V

    :cond_27
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    iput-object v8, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    return-void

    :catchall_2
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v0

    :catch_8
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MaxAuthTries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MaxAuthTries"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol(newkyes): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    :try_start_16
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->XG:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    throw v0

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol(kex): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid server\'s version string"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "connection is closed by foreign host"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_2e
    :try_start_18
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "Session.connect"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_30
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is already connected"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_9

    :catch_d
    move-exception v1

    goto/16 :goto_8

    :cond_31
    move v5, v6

    goto/16 :goto_6
.end method

.method j6(Lcom/jcraft/jsch/Channel;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->DW(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/HostKeyRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->ca:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/IdentityRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/IdentityRepository;

    return-void
.end method

.method public j6(Lcom/jcraft/jsch/Packet;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->wc:[I

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v4, v3, Lcom/jcraft/jsch/Buffer;->FH:I

    aput v4, v1, v2

    iget-object v4, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v5, 0x5

    invoke-interface {v0, v4, v5, v1}, Lcom/jcraft/jsch/Compression;->j6([BI[I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->wc:[I

    aget v1, v1, v2

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/jcraft/jsch/Session;->CU:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->j6(I)V

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    sget-object v1, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v5, v0

    invoke-interface {v3, v4, v5, v0}, Lcom/jcraft/jsch/Random;->j6([BII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/jcraft/jsch/Session;->QX:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->update(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v3, v2, v1}, Lcom/jcraft/jsch/MAC;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->FH:I

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->j6(I)V

    goto :goto_0
.end method

.method j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .registers 20

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->VH()I

    move-result v2

    int-to-long v12, v2

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jcraft/jsch/Session;->Qq:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v12

    if-gtz v2, :cond_1

    :cond_0
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "timeout in wating for rekeying process."

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    monitor-enter p2

    :try_start_1
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, p3

    int-to-long v10, v0

    const/4 v5, 0x1

    cmp-long v2, v2, v10

    if-gez v2, :cond_3

    :try_start_2
    move-object/from16 v0, p2

    iget v2, v0, Lcom/jcraft/jsch/Channel;->a8:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/jcraft/jsch/Channel;->a8:I

    const-wide/16 v2, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p2

    iget v2, v0, Lcom/jcraft/jsch/Channel;->a8:I

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/jcraft/jsch/Channel;->a8:I

    :cond_3
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J

    cmp-long v2, v2, v10

    if-ltz v2, :cond_5

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J

    sub-long/2addr v2, v10

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/Session;->FH(Lcom/jcraft/jsch/Packet;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    move-object/from16 v0, p2

    iget v3, v0, Lcom/jcraft/jsch/Channel;->a8:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p2

    iput v3, v0, Lcom/jcraft/jsch/Channel;->a8:I

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :catch_1
    move-exception v2

    :try_start_5
    move-object/from16 v0, p2

    iget v2, v0, Lcom/jcraft/jsch/Channel;->a8:I

    goto :goto_1

    :cond_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v2, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, -0x1

    monitor-enter p2

    :try_start_6
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/jcraft/jsch/Channel;->u7:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-lez v7, :cond_a

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/jcraft/jsch/Channel;->u7:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_6

    move-wide v8, v10

    :cond_6
    cmp-long v2, v8, v10

    if-eqz v2, :cond_7

    long-to-int v4, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jsch/Session;->CU:I

    move v3, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v2

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v2}, Lcom/jcraft/jsch/Packet;->j6(III)I

    move-result v3

    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v2

    sub-long v6, v10, v8

    long-to-int v0, v6

    move/from16 p3, v0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/jcraft/jsch/Channel;->u7:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/jcraft/jsch/Channel;->u7:J

    :goto_5
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/Session;->FH(Lcom/jcraft/jsch/Packet;)V

    if-eqz p3, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/jcraft/jsch/Packet;->j6(BIII)V

    :cond_8
    monitor-enter p2

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v2, :cond_b

    monitor-exit p2

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    :cond_9
    const/16 v2, 0x8

    move v3, v2

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    :try_start_8
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J

    move/from16 v0, p3

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/jcraft/jsch/Channel;->u7:J

    monitor-exit p2

    goto/16 :goto_2

    :cond_c
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    :cond_d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "channel is broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move v2, v6

    goto :goto_4
.end method

.method public j6(Lcom/jcraft/jsch/UserInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .registers 14

    const/16 v12, 0x51

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object p0, p0, Lcom/jcraft/jsch/Session;->Xa:Ljava/lang/Runnable;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v6, Lcom/jcraft/jsch/Packet;

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    new-array v7, v3, [I

    new-array v8, v3, [I

    :goto_0
    const/4 v1, 0x0

    :cond_0
    :goto_1
    move v2, v4

    :goto_2
    :try_start_0
    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->Xa:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    :cond_1
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->j6()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_4
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->vy:Z

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    and-int/lit16 v5, v2, 0xff

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyExchange;->VH()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/jcraft/jsch/Session;->Qq:J

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Buffer;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "verify: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->XG:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Caught an exception, leaving main loop due to "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    const/16 v2, 0x14

    if-eq v5, v2, :cond_10

    const/16 v2, 0x15

    if-eq v5, v2, :cond_f

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SSH message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    iput v5, v2, Lcom/jcraft/jsch/Channel;->j3:I

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    iput v5, v2, Lcom/jcraft/jsch/Channel;->j3:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v9

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_5
    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v10

    if-eqz v10, :cond_0

    const/16 v2, 0x64

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v9

    const-string v11, "exit-status"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/jcraft/jsch/Channel;->FH(I)V

    const/16 v2, 0x63

    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->DW()V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v10}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    :cond_5
    move v5, v4

    goto :goto_5

    :pswitch_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->DW()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->Hw()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0, v7, v8}, Lcom/jcraft/jsch/Buffer;->j6([I[I)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    if-eqz v2, :cond_0

    aget v9, v8, v4

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :try_start_5
    aget v9, v7, v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v2, v5, v9, v10}, Lcom/jcraft/jsch/Channel;->DW([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    aget v5, v8, v4

    :try_start_6
    iget v9, v2, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->v5(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->VH:I

    iget v9, v2, Lcom/jcraft/jsch/Channel;->Zo:I

    div-int/lit8 v9, v9, 0x2

    if-ge v5, v9, :cond_0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->Zo:I

    iget v9, v2, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int/2addr v5, v9

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-boolean v5, v2, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_6
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget v5, v2, Lcom/jcraft/jsch/Channel;->Zo:I

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->v5(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    :pswitch_6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {v0, v7, v8}, Lcom/jcraft/jsch/Buffer;->j6([I[I)[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v5

    if-eqz v2, :cond_0

    aget v9, v8, v4

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :try_start_b
    aget v9, v7, v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v2, v5, v9, v10}, Lcom/jcraft/jsch/Channel;->j6([BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    aget v5, v8, v4

    :try_start_c
    iget v9, v2, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->v5(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->VH:I

    iget v9, v2, Lcom/jcraft/jsch/Channel;->Zo:I

    div-int/lit8 v9, v9, 0x2

    if-ge v5, v9, :cond_0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->Zo:I

    iget v9, v2, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int/2addr v5, v9

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-boolean v5, v2, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v5, :cond_7

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_7
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget v5, v2, Lcom/jcraft/jsch/Channel;->Zo:I

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->v5(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_1
    move-exception v5

    :try_start_11
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->DW()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :pswitch_7
    :try_start_12
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/jcraft/jsch/Channel;->j6(J)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->FH(I)V

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/jcraft/jsch/Channel;->Ws:Z

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/jcraft/jsch/Channel;->J8:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->VH(I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v5

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v9

    if-eqz v2, :cond_0

    invoke-virtual {v2, v10, v11}, Lcom/jcraft/jsch/Channel;->DW(J)V

    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Channel;->gn(I)V

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/jcraft/jsch/Channel;->XL:Z

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->VH(I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    const-string v5, "forwarded-tcpip"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "x11"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->SI:Z

    if-nez v5, :cond_a

    :cond_8
    const-string v5, "auth-agent@openssh.com"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->KD:Z

    if-nez v5, :cond_a

    :cond_9
    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    sget-object v2, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    sget-object v2, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {v2}, Lcom/jcraft/jsch/Channel;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->we()V

    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Channel "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->x9:Z

    invoke-virtual {v9, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_b
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :pswitch_b
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->FH()Ljava/lang/Thread;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    if-ne v5, v12, :cond_d

    move v2, v3

    :goto_6
    invoke-virtual {v10, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW(I)V

    if-ne v5, v12, :cond_c

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(I)V

    :cond_c
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    :cond_d
    move v2, v4

    goto :goto_6

    :pswitch_c
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_7
    if-eqz v2, :cond_0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x52

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    :cond_e
    move v2, v4

    goto :goto_7

    :cond_f
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->Ws()V

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v1

    goto/16 :goto_1

    :catch_3
    move-exception v5

    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-nez v9, :cond_12

    iget v9, p0, Lcom/jcraft/jsch/Session;->Mz:I

    if-ge v2, v9, :cond_12

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->EQ()V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_12
    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v9, :cond_13

    iget v9, p0, Lcom/jcraft/jsch/Session;->Mz:I

    if-lt v2, v9, :cond_11

    :cond_13
    throw v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tp()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    return v0
.end method

.method public u7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Session;->br:I

    return v0
.end method

.method public v5(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    :cond_0
    return-void
.end method
