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
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.51"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->v5:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Session;->Ws:I

    iput v0, p0, Lcom/jcraft/jsch/Session;->QX:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    iput v0, p0, Lcom/jcraft/jsch/Session;->BT:I

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P8:Z

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->SI:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->KD:Z

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->ro:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->cn:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    iput v0, p0, Lcom/jcraft/jsch/Session;->g3:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Session;->Mz:I

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->ca:Lcom/jcraft/jsch/HostKeyRepository;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->x9:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/jcraft/jsch/Session;->Qq:J

    const/4 v3, 0x6

    iput v3, p0, Lcom/jcraft/jsch/Session;->sy:I

    iput v0, p0, Lcom/jcraft/jsch/Session;->aj:I

    const-string v3, "127.0.0.1"

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    const/16 v3, 0x16

    iput v3, p0, Lcom/jcraft/jsch/Session;->br:I

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->jJ:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->wc:[I

    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/Session;->et:I

    iput v0, p0, Lcom/jcraft/jsch/Session;->CU:I

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$GlobalRequestReply;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    iput-object p2, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    iput p4, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->we()V

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    if-nez p1, :cond_9c

    :try_start_8c
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string p2, "user.name"

    invoke-virtual {p1, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/SecurityException; {:try_start_8c .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception p1

    :cond_9c
    :goto_9c
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    if-eqz p1, :cond_a1

    return-void

    :cond_a1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "username is not given."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .registers 8

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v1

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->VH:[B

    goto :goto_21

    :cond_16
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->VH:[B

    :goto_21
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget p1, p1, Lcom/jcraft/jsch/Buffer;->Hw:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->VH:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-nez p1, :cond_33

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->J8()V

    :cond_33
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->VH:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/KeyExchange;->j6([B[B)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    if-eqz p1, :cond_8d

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P8:Z

    if-nez v0, :cond_62

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_62

    :cond_5a
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    :goto_62
    :try_start_62
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/KeyExchange;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_74} :catch_82

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Hw:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->v5:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->VH:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object p1

    :catch_82
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8d
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "Algorithm negotiation fail"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private EQ(Ljava/lang/String;)V
    .registers 4

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P8:Z

    if-eqz v1, :cond_42

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/jcraft/jsch/Compression;->j6(II)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_37

    goto :goto_42

    :catch_37
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_42
    :goto_42
    return-void
.end method

.method private FH(Lcom/jcraft/jsch/Packet;)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/IO;->j6(Lcom/jcraft/jsch/Packet;)V

    iget p1, p0, Lcom/jcraft/jsch/Session;->QX:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jcraft/jsch/Session;->QX:I

    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private J0()V
    .registers 6

    const-string v0, "ClearAllForwardings"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->j6()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "LocalForward"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    const/4 v3, 0x0

    :goto_28
    array-length v4, v1

    if-lt v3, v4, :cond_2c

    goto :goto_34

    :cond_2c
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->Zo(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_34
    :goto_34
    const-string v1, "RemoteForward"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    :goto_3c
    array-length v1, v0

    if-lt v2, v1, :cond_40

    goto :goto_48

    :cond_40
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->VH(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_48
    :goto_48
    return-void
.end method

.method private J8()V
    .registers 12

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cipher.s2c"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->gn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    array-length v3, v2

    if-lez v3, :cond_35

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_35
    const-string v2, "kex"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckKexes"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/Session;->u7(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    array-length v4, v3

    if-lez v4, :cond_59

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    goto :goto_59

    :cond_51
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available kexes."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    :goto_59
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->XG:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jcraft/jsch/Session;->Qq:J

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v5, Lcom/jcraft/jsch/Packet;

    invoke-direct {v5, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v6, 0x14

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    sget-object v6, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter v6

    :try_start_77
    sget-object v7, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    iget-object v8, v4, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v9, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    const/16 v10, 0x10

    invoke-interface {v7, v8, v9, v10}, Lcom/jcraft/jsch/Random;->j6([BII)V

    invoke-virtual {v4, v10}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    monitor-exit v6
    :try_end_86
    .catchall {:try_start_77 .. :try_end_86} :catchall_123

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v2, "server_host_key"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->Hw(I)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Zo:[B

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v3, v1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_122
    return-void

    :catchall_123
    move-exception v0

    :try_start_124
    monitor-exit v6
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v0
.end method

.method private Ws()V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_25
    return-void
.end method

.method private gn(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_ab

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_ab

    :cond_b
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckCiphers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_2b
    const-string v1, "cipher.c2s"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cipher.s2c"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const-string v5, ","

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_44
    array-length v7, p1

    if-lt v6, v7, :cond_8b

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_4e

    return-object v0

    :cond_4e
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_8a

    :goto_69
    if-lt v5, p1, :cond_6c

    goto :goto_8a

    :cond_6c
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_8a
    :goto_8a
    return-object v0

    :cond_8b
    aget-object v7, p1, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9b

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_9b

    goto :goto_a8

    :cond_9b
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a8

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a8
    :goto_a8
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_ab
    :goto_ab
    return-object v0
.end method

.method private j6(Ljava/lang/String;I)I
    .registers 10

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(Ljava/lang/Thread;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v3, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(I)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_96

    const/4 v3, 0x0

    :try_start_22
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    const-string v4, "tcpip-forward"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_86
    .catchall {:try_start_22 .. :try_end_44} :catchall_96

    :try_start_44
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW()I

    move-result p1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_96

    const/4 v1, 0x0

    :goto_4b
    const/16 v2, 0xa

    if-ge v1, v2, :cond_63

    const/4 v2, -0x1

    if-eq p1, v2, :cond_53

    goto :goto_63

    :cond_53
    const-wide/16 v5, 0x3e8

    :try_start_55
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_96

    goto :goto_5a

    :catch_59
    move-exception p1

    :goto_5a
    add-int/lit8 v1, v1, 0x1

    :try_start_5c
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW()I

    move-result p1

    goto :goto_4b

    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(Ljava/lang/Thread;)V

    if-ne p1, v4, :cond_72

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6()I

    move-result p1

    monitor-exit v0

    return p1

    :cond_72
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remote port forwarding failed for listen port "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_86
    move-exception p1

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p2, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(Ljava/lang/Thread;)V

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_5c .. :try_end_98} :catchall_96

    goto :goto_9a

    :goto_99
    throw p1

    :goto_9a
    goto :goto_99
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .registers 9

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->DW()Z

    move-result p2

    const-string v0, "Packet corrupt"

    if-eqz p2, :cond_3e

    const/high16 p2, 0x40000

    if-eq p4, p2, :cond_f

    if-eqz p3, :cond_f

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    :goto_10
    iget p2, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr p5, p2

    :goto_13
    const/4 p2, 0x0

    if-gtz p5, :cond_23

    if-eqz p3, :cond_1d

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-interface {p3, p1, p2}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    :cond_1d
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v1, p4

    if-le p5, v1, :cond_2d

    array-length p4, p4

    goto :goto_2e

    :cond_2d
    move p4, p5

    :goto_2e
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-virtual {v1, v2, p2, p4}, Lcom/jcraft/jsch/IO;->j6([BII)V

    if-eqz p3, :cond_3c

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-interface {p3, v1, p2, p4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    :cond_3c
    sub-int/2addr p5, p4

    goto :goto_13

    :cond_3e
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->XG:Z

    return-void
.end method

.method private j6(Lcom/jcraft/jsch/ChannelSession;)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->j6()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "ForwardAgent"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    if-eqz v1, :cond_20

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSession;->j6(Z)V

    :cond_20
    const-string v1, "RequestTTY"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSession;->DW(Z)V

    :cond_2f
    return-void
.end method

.method private j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private j6(Lcom/jcraft/jsch/KeyExchange;)V
    .registers 12

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->v5()[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->DW()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->FH()Lcom/jcraft/jsch/HASH;

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gn:[B

    const/4 v9, 0x0

    if-nez v0, :cond_1a

    array-length v0, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->gn:[B

    array-length v1, v8

    invoke-static {v8, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->gn:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->u7:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->gn:[B

    array-length v2, v2

    sub-int v2, v1, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v4, v0, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->tp:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->we:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J0:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J8:[B

    :try_start_b6
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

    :goto_cb
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v2, v1

    if-gt v0, v2, :cond_1cc

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->tp:[B

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

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

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J8:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/MAC;->j6([B)V

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

    :goto_13a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v2, v1

    if-gt v0, v2, :cond_191

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->u7:[B

    invoke-interface {v0, v9, v1, v2}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

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

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->J0:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/MAC;->j6([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->tp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->EQ(Ljava/lang/String;)V

    return-void

    :cond_191
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v9, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->EQ:[B

    goto/16 :goto_13a

    :cond_1cc
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v2, v1

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    array-length v4, v1

    invoke-static {v1, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->we:[B

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v9, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->we:[B
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_205} :catch_207

    goto/16 :goto_cb

    :catch_207
    move-exception p1

    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_20d

    throw p1

    :cond_20d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_218

    :goto_217
    throw v0

    :goto_218
    goto :goto_217
.end method

.method private j6(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .registers 14

    const-string v0, "StrictHostKeyChecking"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object p1, v1

    :cond_b
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->Hw()[B

    move-result-object v1

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->j6()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->vJ:Ljava/lang/String;

    if-nez v3, :cond_35

    const/16 v3, 0x16

    if-eq p2, v3, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_35
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->FH()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object p2

    const-string v3, "HashKnownHosts"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    instance-of v3, p2, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v3, :cond_53

    move-object v3, p2

    check-cast v3, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v3, p1, v1}, Lcom/jcraft/jsch/KnownHosts;->DW(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v3

    goto :goto_58

    :cond_53
    new-instance v3, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v3, p1, v1}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    :goto_58
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    monitor-enter p2

    :try_start_5b
    invoke-interface {p2, p1, v1}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Ljava/lang/String;[B)I

    move-result v3

    monitor-exit p2
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_2f4

    const-string v4, "ask"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_73

    const-string v4, "yes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    :cond_73
    if-ne v3, v5, :cond_115

    monitor-enter p2

    :try_start_76
    invoke-interface {p2}, Lcom/jcraft/jsch/HostKeyRepository;->j6()Ljava/lang/String;

    move-result-object v4

    monitor-exit p2
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_112

    if-nez v4, :cond_7f

    const-string v4, "known_hosts"

    :cond_7f
    iget-object v8, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    if-eqz v8, :cond_e3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " host key has just been changed.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "The fingerprint for the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " key sent by the remote host is\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Please contact your system administrator.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Add correct host key in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to get rid of this message."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "ask"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Lcom/jcraft/jsch/UserInfo;->Hw(Ljava/lang/String;)Z

    move-result v4

    goto :goto_e4

    :cond_de
    iget-object v8, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v8, v4}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    :cond_e3
    const/4 v4, 0x0

    :goto_e4
    if-eqz v4, :cond_fe

    monitor-enter p2

    :try_start_e7
    const-string v4, "DSA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_ed
    .catchall {:try_start_e7 .. :try_end_ed} :catchall_fb

    if-eqz v4, :cond_f2

    const-string v4, "ssh-dss"

    goto :goto_f4

    :cond_f2
    const-string v4, "ssh-rsa"

    :goto_f4
    const/4 v8, 0x0

    :try_start_f5
    invoke-interface {p2, p1, v4, v8}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit p2

    const/4 v4, 0x1

    goto :goto_116

    :catchall_fb
    move-exception p1

    monitor-exit p2
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_fb

    throw p1

    :cond_fe
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "HostKey has been changed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_112
    move-exception p1

    :try_start_113
    monitor-exit p2
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw p1

    :cond_115
    const/4 v4, 0x0

    :goto_116
    const-string v8, "ask"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_126

    const-string v8, "yes"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d0

    :cond_126
    if-eqz v3, :cond_1d0

    if-nez v4, :cond_1d0

    const-string v4, "yes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ba

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    if-eqz v4, :cond_17e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "The authenticity of host \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' can\'t be established.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " key fingerprint is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".\n"

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Are you sure you want to continue connecting?"

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p3}, Lcom/jcraft/jsch/UserInfo;->Hw(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_168

    const/4 v4, 0x1

    goto :goto_1d0

    :cond_168
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "reject HostKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_17e
    new-instance p1, Ljava/lang/StringBuilder;

    if-ne v3, v7, :cond_1a6

    const-string p2, "UnknownHostKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key fingerprint is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1a6
    const-string p2, "HostKey has been changed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1ba
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "reject HostKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1d0
    :goto_1d0
    const-string p3, "no"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1db

    if-ne v7, v3, :cond_1db

    const/4 v4, 0x1

    :cond_1db
    if-nez v3, :cond_284

    const-string p3, "DSA"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e8

    const-string p3, "ssh-dss"

    goto :goto_1ea

    :cond_1e8
    const-string p3, "ssh-rsa"

    :goto_1ea
    invoke-interface {p2, p1, p3}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object p1

    array-length p3, v1

    invoke-static {v1, v6, p3}, Lcom/jcraft/jsch/Util;->FH([BII)[B

    move-result-object p3

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object p3

    :goto_1f7
    array-length v0, p1

    if-lt v6, v0, :cond_1fc

    goto/16 :goto_284

    :cond_1fc
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    aget-object v0, p1, v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->Hw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@revoked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    if-eqz p1, :cond_244

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " host key for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is marked as revoked.\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "This could mean that a stolen key is being used to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "impersonate this host."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/UserInfo;->DW(Ljava/lang/String;)V

    :cond_244
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_26a

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Host \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' has provided revoked key."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v7, p2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_26a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "revoked HostKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_280
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1f7

    :cond_284
    :goto_284
    if-nez v3, :cond_2b4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2b4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Host \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is known and mathces the "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " host key"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v7, p3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_2b4
    if-eqz v4, :cond_2e4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2e4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Permanently added \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") to the list of known hosts."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_2e4
    if-eqz v4, :cond_2f3

    monitor-enter p2

    :try_start_2e7
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->hz:Lcom/jcraft/jsch/HostKey;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {p2, p1, p3}, Lcom/jcraft/jsch/HostKeyRepository;->j6(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    monitor-exit p2

    goto :goto_2f3

    :catchall_2f0
    move-exception p1

    monitor-exit p2
    :try_end_2f2
    .catchall {:try_start_2e7 .. :try_end_2f2} :catchall_2f0

    throw p1

    :cond_2f3
    :goto_2f3
    return-void

    :catchall_2f4
    move-exception p1

    :try_start_2f5
    monitor-exit p2
    :try_end_2f6
    .catchall {:try_start_2f5 .. :try_end_2f6} :catchall_2f4

    goto :goto_2f8

    :goto_2f7
    throw p1

    :goto_2f8
    goto :goto_2f7
.end method

.method static j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .registers 8

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method static j6(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/Cipher;

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {p0, v0, v1, v2}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    const/4 p0, 0x1

    return p0

    :catch_1c
    move-exception p0

    return v0
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .registers 12

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->j6()I

    move-result v0

    :goto_4
    array-length v1, p4

    if-lt v1, p6, :cond_8

    return-object p4

    :cond_8
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->we()V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->FH([B)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->FH:I

    const/4 v3, 0x0

    invoke-interface {p5, v1, v3, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    array-length v1, p4

    add-int/2addr v1, v0

    new-array v1, v1, [B

    array-length v2, p4

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v2

    array-length v4, p4

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->DW([B)V

    move-object p4, v1

    goto :goto_4
.end method

.method private tp(Ljava/lang/String;)V
    .registers 4

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P8:Z

    if-eqz v1, :cond_5c

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;
    :try_end_32
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_26 .. :try_end_32} :catch_51
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_46

    :try_start_32
    const-string p1, "compression_level"

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_32 .. :try_end_3c} :catch_51

    goto :goto_3f

    :catch_3d
    move-exception p1

    const/4 p1, 0x6

    :goto_3f
    :try_start_3f
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/jcraft/jsch/Compression;->j6(II)V
    :try_end_45
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3f .. :try_end_45} :catch_51
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_5c

    :catch_46
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_51
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5c
    :goto_5c
    return-void
.end method

.method private u7(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_93

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_93

    :cond_b
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckKexes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_2b
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string v3, ","

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_38
    array-length v5, p1

    if-lt v4, v5, :cond_7f

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_42

    return-object v0

    :cond_42
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    :goto_5d
    if-lt v3, p1, :cond_60

    goto :goto_7e

    :cond_60
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " is not available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_7e
    :goto_7e
    return-object v0

    :cond_7f
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_90

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_93
    :goto_93
    return-object v0
.end method

.method private we(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .registers 10

    const-string v0, "parseForwarding: "

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const-string v4, ":"

    const/4 v5, 0x1

    if-le v2, v5, :cond_53

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 p1, 0x0

    :goto_15
    array-length v6, v1

    if-lt p1, v6, :cond_3e

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p1, 0x0

    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_29

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_53

    :cond_29
    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_1e

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_3e
    aget-object v6, v1, p1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_47

    goto :goto_50

    :cond_47
    aget-object v6, v1, p1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_50
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    :cond_53
    :goto_53
    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$Forwarding;)V

    :try_start_59
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_e6

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->Hw:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_d4

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->FH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_94} :catch_f8

    const-string v7, "127.0.0.1"

    if-eq v2, v6, :cond_cc

    :try_start_98
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_bd

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_bb} :catch_f8

    if-eqz v2, :cond_bf

    :cond_bd
    const-string p1, "0.0.0.0"

    :cond_bf
    :try_start_bf
    const-string v2, "localhost"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_c9

    :cond_c8
    move-object v7, p1

    :goto_c9
    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    goto :goto_d3

    :cond_cc
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    goto :goto_c9

    :goto_d3
    return-object v1

    :cond_d4
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e6
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_bf .. :try_end_f8} :catch_f8

    :catch_f8
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_110

    :goto_10f
    throw p1

    :goto_110
    goto :goto_10f
.end method

.method private we()V
    .registers 13

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->j6()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->OW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v1

    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->DW()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->XX:Ljava/lang/String;

    :cond_17
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->FH()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    :cond_1f
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    iput v2, p0, Lcom/jcraft/jsch/Session;->br:I

    :cond_28
    const-string v2, "kex"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "server_host_key"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression_level"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "StrictHostKeyChecking"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HashKnownHosts"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "PreferredAuthentications"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "MaxAuthTries"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v3, "ClearAllForwardings"

    invoke-direct {p0, v1, v3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v4, "HostKeyAlias"

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_79

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->Hw(Ljava/lang/String;)V

    :cond_79
    const-string v4, "UserKnownHostsFile"

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8e

    new-instance v5, Lcom/jcraft/jsch/KnownHosts;

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-direct {v5, v6}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/KnownHosts;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/HostKeyRepository;)V

    :cond_8e
    const-string v4, "IdentityFile"

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f0

    const-string v6, ""

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/ConfigRepository;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->j6(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_b2

    const/4 v6, 0x0

    :goto_a4
    array-length v7, v0

    if-lt v6, v7, :cond_a8

    goto :goto_b4

    :cond_a8
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a4

    :cond_b2
    new-array v0, v4, [Ljava/lang/String;

    :goto_b4
    array-length v6, v5

    array-length v7, v0

    sub-int/2addr v6, v7

    if-lez v6, :cond_f0

    new-instance v6, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v7}, Lcom/jcraft/jsch/JSch;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    const/4 v7, 0x0

    :goto_c6
    array-length v8, v5

    if-lt v7, v8, :cond_cd

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/IdentityRepository;)V

    goto :goto_f0

    :cond_cd
    aget-object v8, v5, v7

    const/4 v9, 0x0

    :goto_d0
    array-length v10, v0

    const/4 v11, 0x0

    if-lt v9, v10, :cond_d5

    goto :goto_e1

    :cond_d5
    aget-object v10, v0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e0

    add-int/lit8 v9, v9, 0x1

    goto :goto_d0

    :cond_e0
    move-object v8, v11

    :goto_e1
    if-nez v8, :cond_e4

    goto :goto_ed

    :cond_e4
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-static {v8, v11, v9}, Lcom/jcraft/jsch/IdentityFile;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6(Lcom/jcraft/jsch/Identity;)V

    :goto_ed
    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    :cond_f0
    :goto_f0
    const-string v0, "ServerAliveInterval"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_101

    :try_start_f8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->DW(I)V
    :try_end_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_f8 .. :try_end_ff} :catch_100

    goto :goto_101

    :catch_100
    move-exception v0

    :cond_101
    :goto_101
    const-string v0, "ConnectTimeout"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_112

    :try_start_109
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->FH(I)V
    :try_end_110
    .catch Ljava/lang/NumberFormatException; {:try_start_109 .. :try_end_110} :catch_111

    goto :goto_112

    :catch_111
    move-exception v0

    :cond_112
    :goto_112
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11b

    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_124

    invoke-virtual {p0, v3, v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    return-void
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

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_f
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public DW(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->FH(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->g3:I

    return-void
.end method

.method public DW(Lcom/jcraft/jsch/Packet;)V
    .registers 8

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->VH()I

    move-result v0

    int-to-long v0, v0

    :goto_5
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-nez v2, :cond_a

    goto :goto_54

    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->Qq:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "timeout in wating for rekeying process."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_54

    const/16 v3, 0x15

    if-eq v2, v3, :cond_54

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_54

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_54

    if-eq v2, v3, :cond_54

    const/16 v3, 0x20

    if-eq v2, v3, :cond_54

    const/16 v3, 0x21

    if-eq v2, v3, :cond_54

    const/16 v3, 0x22

    if-eq v2, v3, :cond_54

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    goto :goto_54

    :cond_4c
    const-wide/16 v2, 0xa

    :try_start_4e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_5

    :catch_52
    move-exception v2

    goto :goto_5

    :cond_54
    :goto_54
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->FH(Lcom/jcraft/jsch/Packet;)V

    return-void
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
    .registers 3

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v0, :cond_1c

    :try_start_4
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->we()V

    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/ChannelSession;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    :cond_18
    return-object p1

    :catch_19
    move-exception p1

    const/4 p1, 0x0

    return-object p1

    :cond_1c
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "session is down"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public FH()Lcom/jcraft/jsch/HostKeyRepository;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ca:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->DW()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public FH(I)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-nez v0, :cond_11

    if-ltz p1, :cond_9

    iput p1, p0, Lcom/jcraft/jsch/Session;->BT:I

    return-void

    :cond_9
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "invalid timeout value"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :try_start_11
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->BT:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method Hw()Lcom/jcraft/jsch/IdentityRepository;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->Hw()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    :cond_a
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
    .registers 11

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->we(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p1, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    iget v4, p1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    iget-object v6, p1, Lcom/jcraft/jsch/Session$Forwarding;->FH:Ljava/lang/String;

    iget v7, p1, Lcom/jcraft/jsch/Session$Forwarding;->Hw:I

    const/4 v8, 0x0

    move-object v2, p0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return v0
.end method

.method public Zo(Ljava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->we(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->j6:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->DW:I

    iget-object v2, p1, Lcom/jcraft/jsch/Session$Forwarding;->FH:Ljava/lang/String;

    iget p1, p1, Lcom/jcraft/jsch/Session$Forwarding;->Hw:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
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

    move-result p1

    return p1
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

    move-result p1

    return p1
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .registers 7

    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->j6(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/jcraft/jsch/PortWatcher;->j6(I)V

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "PortWatcher Thread for "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz p3, :cond_24

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_24
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget p1, p1, Lcom/jcraft/jsch/PortWatcher;->Hw:I

    return p1
.end method

.method public j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    :cond_4
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v2, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v3, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget v4, v6, Lcom/jcraft/jsch/Session;->et:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/jcraft/jsch/IO;->j6([BII)V

    iget v0, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget v10, v6, Lcom/jcraft/jsch/Session;->et:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget-object v7, v6, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    if-eqz v7, :cond_25

    iget-object v11, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v8, v11

    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    :cond_25
    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    const/4 v7, 0x2

    aget-byte v8, v0, v7

    const/4 v9, 0x3

    aget-byte v10, v0, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/high16 v11, -0x1000000

    and-int/2addr v3, v11

    shl-int/lit8 v5, v5, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v5, v11

    or-int/2addr v3, v5

    shl-int/lit8 v5, v8, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    or-int v5, v10, v3

    const/4 v8, 0x0

    const/4 v3, 0x5

    if-lt v5, v3, :cond_1f9

    const/high16 v10, 0x40000

    if-gt v5, v10, :cond_1f9

    add-int/lit8 v11, v5, 0x4

    iget v12, v6, Lcom/jcraft/jsch/Session;->et:I

    sub-int/2addr v11, v12

    iget v12, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int v13, v12, v11

    array-length v14, v0

    if-le v13, v14, :cond_64

    new-array v13, v13, [B

    invoke-static {v0, v2, v13, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v13, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_64
    iget v0, v6, Lcom/jcraft/jsch/Session;->et:I

    rem-int v0, v11, v0

    const/4 v12, 0x4

    if-eqz v0, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bad packet length "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v12, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_8a
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v6, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget v0, v6, Lcom/jcraft/jsch/Session;->et:I

    sub-int v7, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    throw v8

    :cond_9c
    if-lez v11, :cond_be

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v13, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v14, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v0, v13, v14, v11}, Lcom/jcraft/jsch/IO;->j6([BII)V

    iget v0, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    iget-object v13, v6, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    if-eqz v13, :cond_be

    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v15, v6, Lcom/jcraft/jsch/Session;->et:I

    move-object v14, v0

    move/from16 v18, v15

    move/from16 v16, v11

    move-object/from16 v17, v0

    invoke-interface/range {v13 .. v18}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    :cond_be
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_103

    iget v13, v6, Lcom/jcraft/jsch/Session;->Ws:I

    invoke-interface {v0, v13}, Lcom/jcraft/jsch/MAC;->update(I)V

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget-object v13, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v14, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v13, v2, v14}, Lcom/jcraft/jsch/MAC;->update([BII)V

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    iget-object v13, v6, Lcom/jcraft/jsch/Session;->a8:[B

    invoke-interface {v0, v13, v2}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v13, v6, Lcom/jcraft/jsch/Session;->lg:[B

    array-length v14, v13

    invoke-virtual {v0, v13, v2, v14}, Lcom/jcraft/jsch/IO;->j6([BII)V

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->a8:[B

    iget-object v13, v6, Lcom/jcraft/jsch/Session;->lg:[B

    invoke-static {v0, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_103

    if-le v11, v10, :cond_f3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v6, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    sub-int v7, v10, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    throw v8

    :cond_103
    iget v0, v6, Lcom/jcraft/jsch/Session;->Ws:I

    add-int/2addr v0, v4

    iput v0, v6, Lcom/jcraft/jsch/Session;->Ws:I

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_131

    iget-object v5, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v8, v5, v12

    iget-object v10, v6, Lcom/jcraft/jsch/Session;->jJ:[I

    iget v11, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v11, v3

    sub-int/2addr v11, v8

    aput v11, v10, v2

    invoke-interface {v0, v5, v3, v10}, Lcom/jcraft/jsch/Compression;->DW([BI[I)[B

    move-result-object v0

    if-eqz v0, :cond_128

    iput-object v0, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->jJ:[I

    aget v0, v0, v2

    add-int/2addr v0, v3

    iput v0, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    goto :goto_131

    :cond_128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "fail in inflater"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1b6

    :cond_131
    :goto_131
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v4, :cond_1ba

    if-eq v0, v7, :cond_4

    if-ne v0, v9, :cond_16b

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_16b
    if-ne v0, v12, :cond_178

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    goto/16 :goto_4

    :cond_178
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_198

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-static {v0, v6}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/Channel;->j6(J)V

    goto/16 :goto_4

    :cond_198
    const/16 v2, 0x34

    if-ne v0, v2, :cond_1b6

    iput-boolean v4, v6, Lcom/jcraft/jsch/Session;->P8:Z

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->er:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_1b6

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_1b6

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Session;->tp(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->XL:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Session;->EQ(Ljava/lang/String;)V

    :cond_1b6
    :goto_1b6
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    return-object v1

    :cond_1ba
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_DISCONNECT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f9
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->aM:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v6, Lcom/jcraft/jsch/Session;->Mr:Lcom/jcraft/jsch/MAC;

    const/high16 v7, 0x40000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto :goto_20a

    :goto_209
    throw v8

    :goto_20a
    goto :goto_209
.end method

.method public j6()V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnecting from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jcraft/jsch/Session;->br:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_31
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->vy:Z

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->j6(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->FH(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->Hw(Lcom/jcraft/jsch/Session;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_43
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_a2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Xa:Ljava/lang/Runnable;

    :try_start_55
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_7e

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_64
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_71
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_7e
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_98

    :cond_8a
    monitor-enter v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_8b} :catch_97

    :try_start_8b
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v1}, Lcom/jcraft/jsch/Proxy;->close()V

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_94

    :try_start_91
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_93} :catch_97

    goto :goto_98

    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_97} :catch_97

    :catch_97
    move-exception v0

    :cond_98
    :goto_98
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->DW(Lcom/jcraft/jsch/Session;)Z

    return-void

    :catchall_a2
    move-exception v1

    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public j6(I)V
    .registers 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->vy:Z

    if-nez v3, :cond_5c2

    new-instance v3, Lcom/jcraft/jsch/IO;

    invoke-direct {v3}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    sget-object v3, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    if-nez v3, :cond_32

    :try_start_13
    const-string v3, "random"

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Random;

    sput-object v3, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_26

    goto :goto_32

    :catch_26
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_32
    :goto_32
    sget-object v3, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    invoke-static {v3}, Lcom/jcraft/jsch/Packet;->j6(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connecting to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/jcraft/jsch/Session;->br:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_63
    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    :try_start_69
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    if-nez v9, :cond_ae

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    if-nez v9, :cond_86

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v10, v1, Lcom/jcraft/jsch/Session;->br:I

    invoke-static {v9, v10, v2}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    goto :goto_9e

    :cond_86
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v11, v1, Lcom/jcraft/jsch/Session;->br:I

    invoke-interface {v9, v10, v11}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    invoke-interface {v10, v9}, Lcom/jcraft/jsch/SocketFactory;->j6(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v9

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-interface {v10, v11}, Lcom/jcraft/jsch/SocketFactory;->DW(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v10

    :goto_9e
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    invoke-virtual {v11, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v11, v9}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    goto :goto_d9

    :cond_ae
    monitor-enter v9
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_af} :catch_554
    .catchall {:try_start_69 .. :try_end_af} :catchall_551

    :try_start_af
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->dx:Lcom/jcraft/jsch/SocketFactory;

    iget-object v12, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v13, v1, Lcom/jcraft/jsch/Session;->br:I

    invoke-interface {v10, v11, v12, v13, v2}, Lcom/jcraft/jsch/Proxy;->j6(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v11}, Lcom/jcraft/jsch/Proxy;->DW()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v11}, Lcom/jcraft/jsch/Proxy;->j6()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->ef:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v10}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    monitor-exit v9
    :try_end_d9
    .catchall {:try_start_af .. :try_end_d9} :catchall_54d

    :goto_d9
    if-lez v2, :cond_e2

    :try_start_db
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-eqz v9, :cond_e2

    invoke-virtual {v9, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_e2
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->vy:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_f7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const-string v10, "Connection established"

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_f7
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->yO:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v9, v1}, Lcom/jcraft/jsch/JSch;->j6(Lcom/jcraft/jsch/Session;)V

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->v5:[B

    array-length v10, v9

    add-int/2addr v10, v4

    new-array v11, v10, [B

    array-length v12, v9

    invoke-static {v9, v8, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v10, -0x1

    const/16 v12, 0xa

    aput-byte v12, v11, v9

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9, v11, v8, v10}, Lcom/jcraft/jsch/IO;->DW([BII)V

    :cond_111
    :goto_111
    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_113
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v11, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v11, v11

    if-lt v9, v11, :cond_11b

    goto :goto_12f

    :cond_11b
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->yS:Lcom/jcraft/jsch/IO;

    invoke-virtual {v10}, Lcom/jcraft/jsch/IO;->DW()I

    move-result v10

    if-gez v10, :cond_124

    goto :goto_12f

    :cond_124
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v11, Lcom/jcraft/jsch/Buffer;->DW:[B

    int-to-byte v13, v10

    aput-byte v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v10, v12, :cond_113

    :goto_12f
    if-ltz v10, :cond_545

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    add-int/lit8 v11, v9, -0x1

    aget-byte v10, v10, v11

    if-ne v10, v12, :cond_14a

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_14a

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    add-int/lit8 v11, v9, -0x1

    aget-byte v10, v10, v11

    if-ne v10, v3, :cond_14a

    move v9, v11

    :cond_14a
    if-le v9, v5, :cond_111

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v10, v10

    if-eq v9, v10, :cond_17a

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v10, v10, v8

    const/16 v11, 0x53

    if-ne v10, v11, :cond_111

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v10, v10, v4

    if-ne v10, v11, :cond_111

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v10, v10, v7

    const/16 v11, 0x48

    if-ne v10, v11, :cond_111

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    aget-byte v10, v10, v5

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_17a

    goto :goto_111

    :cond_17a
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v10, v10

    if-eq v9, v10, :cond_53d

    const/4 v10, 0x7

    if-lt v9, v10, :cond_53d

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    const/16 v11, 0x31

    if-ne v10, v11, :cond_19a

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v11, 0x6

    aget-byte v10, v10, v11

    const/16 v11, 0x39

    if-ne v10, v11, :cond_53d

    :cond_19a
    new-array v10, v9, [B

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->Hw:[B

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->Hw:[B

    invoke-static {v10, v8, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_1e7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Remote version string: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->Hw:[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Local version string: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->v5:[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_1e7
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->J8()V

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_520

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_20d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const-string v10, "SSH_MSG_KEXINIT received"

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_20d
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v9}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v9

    :cond_213
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/KeyExchange;->VH()I

    move-result v10

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v11

    if-ne v10, v11, :cond_503

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/jcraft/jsch/Session;->Qq:J

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Buffer;)Z

    move-result v10

    if-eqz v10, :cond_4ec

    invoke-virtual {v9}, Lcom/jcraft/jsch/KeyExchange;->VH()I

    move-result v10
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_239} :catch_554
    .catchall {:try_start_db .. :try_end_239} :catchall_551

    if-nez v10, :cond_213

    :try_start_23b
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    iget v11, v1, Lcom/jcraft/jsch/Session;->br:I

    invoke-direct {v1, v10, v11, v9}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    :try_end_242
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_23b .. :try_end_242} :catch_4e3
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_242} :catch_554
    .catchall {:try_start_23b .. :try_end_242} :catchall_551

    :try_start_242
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->Ws()V

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_4c6

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    invoke-interface {v10, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_268

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    const-string v11, "SSH_MSG_NEWKEYS received"

    invoke-interface {v10, v4, v11}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_268
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v10, v9}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_26d} :catch_554
    .catchall {:try_start_242 .. :try_end_26d} :catchall_551

    :try_start_26d
    const-string v9, "MaxAuthTries"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_27b

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/jcraft/jsch/Session;->sy:I
    :try_end_27b
    .catch Ljava/lang/NumberFormatException; {:try_start_26d .. :try_end_27b} :catch_4aa
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_27b} :catch_554
    .catchall {:try_start_26d .. :try_end_27b} :catchall_551

    :cond_27b
    :try_start_27b
    const-string v9, "userauth.none"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jcraft/jsch/UserAuth;
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_28b} :catch_49e
    .catchall {:try_start_27b .. :try_end_28b} :catchall_551

    :try_start_28b
    invoke-virtual {v9, v1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    move-result v10

    const-string v11, "PreferredAuthentications"

    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-static {v11, v12}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-nez v10, :cond_2aa

    check-cast v9, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v9}, Lcom/jcraft/jsch/UserAuthNone;->j6()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2ab

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto :goto_2ab

    :cond_2aa
    move-object v11, v6

    :cond_2ab
    :goto_2ab
    const-string v9, ","

    invoke-static {v11, v9}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    :goto_2b2
    const/4 v14, 0x0

    :goto_2b3
    if-nez v10, :cond_40e

    if-eqz v12, :cond_40e

    array-length v15, v12
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_2b8} :catch_554
    .catchall {:try_start_28b .. :try_end_2b8} :catchall_551

    if-lt v13, v15, :cond_2bc

    goto/16 :goto_40e

    :cond_2bc
    add-int/lit8 v15, v13, 0x1

    aget-object v13, v12, v13

    const/4 v5, 0x0

    :goto_2c1
    :try_start_2c1
    array-length v3, v9

    if-lt v5, v3, :cond_2c6

    const/4 v3, 0x0

    goto :goto_2cf

    :cond_2c6
    aget-object v3, v9, v5

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_409

    const/4 v3, 0x1

    :goto_2cf
    if-nez v3, :cond_2d3

    goto/16 :goto_402

    :cond_2d3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2db} :catch_554
    .catchall {:try_start_2c1 .. :try_end_2db} :catchall_551

    if-eqz v3, :cond_32b

    const-string v3, "Authentications that can continue: "

    add-int/lit8 v5, v15, -0x1

    :cond_2e1
    :goto_2e1
    :try_start_2e1
    array-length v8, v12

    if-lt v5, v8, :cond_301

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Next authentication method: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    goto :goto_32b

    :cond_301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v12, v5

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    array-length v8, v12

    if-ge v5, v8, :cond_2e1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_32a} :catch_554
    .catchall {:try_start_2e1 .. :try_end_32a} :catchall_551

    goto :goto_2e1

    :cond_32b
    :goto_32b
    :try_start_32b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "userauth."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_381

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "userauth."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/UserAuth;
    :try_end_35b
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_35b} :catch_35c
    .catchall {:try_start_32b .. :try_end_35b} :catchall_551

    goto :goto_382

    :catch_35c
    move-exception v0

    :try_start_35d
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_381

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "failed to load "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " method"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_35d .. :try_end_381} :catch_554
    .catchall {:try_start_35d .. :try_end_381} :catchall_551

    :cond_381
    move-object v3, v6

    :goto_382
    if-eqz v3, :cond_402

    :try_start_384
    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/UserAuth;->j6(Lcom/jcraft/jsch/Session;)Z

    move-result v10

    if-eqz v10, :cond_3ae

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3ae

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Authentication succeeded ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V
    :try_end_3ae
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_384 .. :try_end_3ae} :catch_3f9
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_384 .. :try_end_3ae} :catch_3dd
    .catch Ljava/lang/RuntimeException; {:try_start_384 .. :try_end_3ae} :catch_3da
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_384 .. :try_end_3ae} :catch_3d7
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_3ae} :catch_3b0
    .catchall {:try_start_384 .. :try_end_3ae} :catchall_551

    :cond_3ae
    :goto_3ae
    move v13, v15

    goto :goto_3f3

    :catch_3b0
    move-exception v0

    move-object v3, v0

    :try_start_3b2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3d5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "an exception during authentication\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v7, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_3d5
    const/4 v14, 0x0

    goto :goto_40e

    :catch_3d7
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_3da
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_3dd
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/jcraft/jsch/JSchPartialAuthException;->j6()Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-static {v3, v5}, Lcom/jcraft/jsch/Util;->j6(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f0

    const/4 v15, 0x0

    :cond_3f0
    move-object v11, v3

    move-object v9, v5

    goto :goto_3ae

    :goto_3f3
    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v8, 0x0

    goto/16 :goto_2b2

    :catch_3f9
    move-exception v0

    move v13, v15

    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2b3

    :cond_402
    :goto_402
    move v13, v15

    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v8, 0x0

    goto/16 :goto_2b3

    :cond_409
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2c1

    :cond_40e
    :goto_40e
    if-nez v10, :cond_449

    iget v2, v1, Lcom/jcraft/jsch/Session;->aj:I

    iget v3, v1, Lcom/jcraft/jsch/Session;->sy:I

    if-lt v2, v3, :cond_437

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_437

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Login trials exceeds "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/jcraft/jsch/Session;->sy:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_437
    if-eqz v14, :cond_441

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Auth cancel"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_441
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Auth fail"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_449
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->gW:Ljava/net/Socket;

    if-eqz v3, :cond_458

    if-gtz v2, :cond_453

    iget v2, v1, Lcom/jcraft/jsch/Session;->BT:I

    if-lez v2, :cond_458

    :cond_453
    iget v2, v1, Lcom/jcraft/jsch/Session;->BT:I

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_458
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->P8:Z

    iget-object v2, v1, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v2
    :try_end_45d
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_45d} :catch_554
    .catchall {:try_start_3b2 .. :try_end_45d} :catchall_551

    :try_start_45d
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v3, :cond_491

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Connect thread "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " session"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v3, :cond_489

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    invoke-virtual {v5, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_489
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->ei:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->J0()V

    :cond_491
    monitor-exit v2
    :try_end_492
    .catchall {:try_start_45d .. :try_end_492} :catchall_49a

    iget-object v2, v1, Lcom/jcraft/jsch/Session;->kQ:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->DW([B)V

    iput-object v6, v1, Lcom/jcraft/jsch/Session;->kQ:[B

    return-void

    :catchall_49a
    move-exception v0

    move-object v3, v0

    :try_start_49c
    monitor-exit v2
    :try_end_49d
    .catchall {:try_start_49c .. :try_end_49d} :catchall_49a

    :try_start_49d
    throw v3

    :catch_49e
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4aa
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "MaxAuthTries: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "MaxAuthTries"

    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4c6
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "invalid protocol(newkyes): "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4e3
    .catch Ljava/lang/Exception; {:try_start_49d .. :try_end_4e3} :catch_554
    .catchall {:try_start_49d .. :try_end_4e3} :catchall_551

    :catch_4e3
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_4e6
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->XG:Z
    :try_end_4e8
    .catch Ljava/lang/Exception; {:try_start_4e6 .. :try_end_4e8} :catch_4e9
    .catchall {:try_start_4e6 .. :try_end_4e8} :catchall_551

    :try_start_4e8
    throw v2

    :catch_4e9
    move-exception v0

    :goto_4ea
    move-object v2, v0

    goto :goto_556

    :cond_4ec
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "verify: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_503
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "invalid protocol(kex): "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_520
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->XG:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "invalid protocol: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_53d
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "invalid server\'s version string"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_545
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "connection is closed by foreign host"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_54d
    .catch Ljava/lang/Exception; {:try_start_4e8 .. :try_end_54d} :catch_554
    .catchall {:try_start_4e8 .. :try_end_54d} :catchall_551

    :catchall_54d
    move-exception v0

    move-object v2, v0

    :try_start_54f
    monitor-exit v9
    :try_end_550
    .catchall {:try_start_54f .. :try_end_550} :catchall_54d

    :try_start_550
    throw v2
    :try_end_551
    .catch Ljava/lang/Exception; {:try_start_550 .. :try_end_551} :catch_554
    .catchall {:try_start_550 .. :try_end_551} :catchall_551

    :catchall_551
    move-exception v0

    move-object v2, v0

    goto :goto_5ba

    :catch_554
    move-exception v0

    goto :goto_4ea

    :goto_556
    const/4 v3, 0x0

    :try_start_557
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->XG:Z
    :try_end_559
    .catchall {:try_start_557 .. :try_end_559} :catchall_551

    :try_start_559
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v3, :cond_59b

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xd

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x54

    invoke-virtual {v5, v8}, Lcom/jcraft/jsch/Buffer;->j6(I)V

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v3, v1, Lcom/jcraft/jsch/Session;->sh:Lcom/jcraft/jsch/Buffer;

    const-string v4, "en"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v3, v1, Lcom/jcraft/jsch/Session;->cb:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_599
    .catch Ljava/lang/Exception; {:try_start_559 .. :try_end_599} :catch_59a
    .catchall {:try_start_559 .. :try_end_599} :catchall_551

    goto :goto_59b

    :catch_59a
    move-exception v0

    :cond_59b
    :goto_59b
    :try_start_59b
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->j6()V
    :try_end_59e
    .catch Ljava/lang/Exception; {:try_start_59b .. :try_end_59e} :catch_5a0
    .catchall {:try_start_59b .. :try_end_59e} :catchall_551

    :goto_59e
    const/4 v3, 0x0

    goto :goto_5a2

    :catch_5a0
    move-exception v0

    goto :goto_59e

    :goto_5a2
    :try_start_5a2
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->vy:Z

    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_5b7

    instance-of v3, v2, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_5af

    check-cast v2, Lcom/jcraft/jsch/JSchException;

    throw v2

    :cond_5af
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v4, "Session.connect"

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_5b7
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_5ba
    .catchall {:try_start_5a2 .. :try_end_5ba} :catchall_551

    :goto_5ba
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->kQ:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->DW([B)V

    iput-object v6, v1, Lcom/jcraft/jsch/Session;->kQ:[B

    throw v2

    :cond_5c2
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "session is already connected"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_5cb

    :goto_5ca
    throw v2

    :goto_5cb
    goto :goto_5ca
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
    .registers 11

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->rN:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->wc:[I

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v4, v3, Lcom/jcraft/jsch/Buffer;->FH:I

    aput v4, v2, v1

    iget-object v4, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v5, 0x5

    invoke-interface {v0, v4, v5, v2}, Lcom/jcraft/jsch/Compression;->j6([BI[I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->wc:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_1e
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/jcraft/jsch/Session;->CU:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->j6(I)V

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    sget-object v2, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    monitor-enter v2

    :try_start_31
    sget-object v3, Lcom/jcraft/jsch/Session;->j6:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v5, v0

    invoke-interface {v3, v4, v5, v0}, Lcom/jcraft/jsch/Random;->j6([BII)V

    monitor-exit v2

    goto :goto_49

    :catchall_41
    move-exception p1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_41

    throw p1

    :cond_44
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->j6(I)V

    :goto_49
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_68

    iget v2, p0, Lcom/jcraft/jsch/Session;->QX:I

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/MAC;->j6([BI)V

    :cond_68
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    if-eqz v3, :cond_78

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    iget-object v7, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v5, 0x0

    iget v6, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    const/4 v8, 0x0

    move-object v4, v7

    invoke-interface/range {v3 .. v8}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    :cond_78
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_85

    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    :cond_85
    return-void
.end method

.method j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .registers 15

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->VH()I

    move-result v0

    int-to-long v0, v0

    :goto_5
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->XG:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2b

    cmp-long v2, v0, v3

    if-lez v2, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->Qq:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "timeout in wating for rekeying process."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    const-wide/16 v2, 0xa

    :try_start_25
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_5

    :catch_29
    move-exception v2

    goto :goto_5

    :cond_2b
    monitor-enter p2

    :try_start_2c
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->u7:J
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_da

    int-to-long v7, p3

    const/4 v2, 0x1

    cmp-long v9, v5, v7

    if-gez v9, :cond_4d

    :try_start_34
    iget v5, p2, Lcom/jcraft/jsch/Channel;->a8:I

    add-int/2addr v5, v2

    iput v5, p2, Lcom/jcraft/jsch/Channel;->a8:I

    const-wide/16 v5, 0x64

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3e} :catch_48
    .catchall {:try_start_34 .. :try_end_3e} :catchall_41

    :goto_3e
    :try_start_3e
    iget v5, p2, Lcom/jcraft/jsch/Channel;->a8:I

    goto :goto_4a

    :catchall_41
    move-exception p1

    iget p3, p2, Lcom/jcraft/jsch/Channel;->a8:I

    sub-int/2addr p3, v2

    iput p3, p2, Lcom/jcraft/jsch/Channel;->a8:I

    throw p1

    :catch_48
    move-exception v5

    goto :goto_3e

    :goto_4a
    sub-int/2addr v5, v2

    iput v5, p2, Lcom/jcraft/jsch/Channel;->a8:I

    :cond_4d
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->u7:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_5b

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->u7:J

    sub-long/2addr v0, v7

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->u7:J

    monitor-exit p2

    goto/16 :goto_c8

    :cond_5b
    monitor-exit p2
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_da

    iget-boolean v5, p2, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v5, :cond_d2

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v5

    if-eqz v5, :cond_d2

    monitor-enter p2

    :try_start_67
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->u7:J

    const/4 v9, 0x0

    cmp-long v10, v5, v3

    if-lez v10, :cond_a4

    iget-wide v3, p2, Lcom/jcraft/jsch/Channel;->u7:J

    cmp-long p3, v3, v7

    if-lez p3, :cond_75

    move-wide v3, v7

    :cond_75
    cmp-long p3, v3, v7

    if-eqz p3, :cond_8f

    long-to-int p3, v3

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->j3:Lcom/jcraft/jsch/Cipher;

    if-eqz v5, :cond_81

    iget v5, p0, Lcom/jcraft/jsch/Session;->CU:I

    goto :goto_83

    :cond_81
    const/16 v5, 0x8

    :goto_83
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->U2:Lcom/jcraft/jsch/MAC;

    if-eqz v6, :cond_8b

    invoke-interface {v6}, Lcom/jcraft/jsch/MAC;->j6()I

    move-result v9

    :cond_8b
    invoke-virtual {p1, p3, v5, v9}, Lcom/jcraft/jsch/Packet;->j6(III)I

    move-result v9

    :cond_8f
    iget-object p3, p1, Lcom/jcraft/jsch/Packet;->DW:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result p3

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v5

    sub-long/2addr v7, v3

    long-to-int v6, v7

    iget-wide v7, p2, Lcom/jcraft/jsch/Channel;->u7:J

    sub-long/2addr v7, v3

    iput-wide v7, p2, Lcom/jcraft/jsch/Channel;->u7:J

    move v3, v9

    move v9, p3

    move p3, v6

    goto :goto_a7

    :cond_a4
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a7
    monitor-exit p2
    :try_end_a8
    .catchall {:try_start_67 .. :try_end_a8} :catchall_cf

    if-eqz v2, :cond_b3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->FH(Lcom/jcraft/jsch/Packet;)V

    if-nez p3, :cond_b0

    return-void

    :cond_b0
    invoke-virtual {p1, v9, v5, v3, p3}, Lcom/jcraft/jsch/Packet;->j6(BIII)V

    :cond_b3
    monitor-enter p2

    :try_start_b4
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v2, :cond_bb

    :cond_b8
    monitor-exit p2

    goto/16 :goto_5

    :cond_bb
    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->u7:J

    int-to-long v4, p3

    cmp-long v6, v2, v4

    if-ltz v6, :cond_b8

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->u7:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->u7:J

    monitor-exit p2
    :try_end_c8
    .catchall {:try_start_b4 .. :try_end_c8} :catchall_cc

    :goto_c8
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->FH(Lcom/jcraft/jsch/Packet;)V

    return-void

    :catchall_cc
    move-exception p1

    :try_start_cd
    monitor-exit p2
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw p1

    :catchall_cf
    move-exception p1

    :try_start_d0
    monitor-exit p2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p1

    :cond_d2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "channel is broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_da
    move-exception p1

    :try_start_db
    monitor-exit p2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    goto :goto_de

    :goto_dd
    throw p1

    :goto_de
    goto :goto_dd
.end method

.method public j6(Lcom/jcraft/jsch/UserInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->Sf:Lcom/jcraft/jsch/UserInfo;

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->nw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    :cond_e
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->sG:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public run()V
    .registers 13

    iput-object p0, p0, Lcom/jcraft/jsch/Session;->Xa:Ljava/lang/Runnable;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    :goto_11
    const/4 v5, 0x0

    :cond_12
    :goto_12
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_14
    :try_start_14
    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->vy:Z

    if-eqz v8, :cond_359

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->Xa:Ljava/lang/Runnable;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_333

    if-nez v8, :cond_1e

    goto/16 :goto_359

    :cond_1e
    :try_start_1e
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/InterruptedIOException; {:try_start_1e .. :try_end_22} :catch_319
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_333

    :try_start_22
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->DW()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-eqz v5, :cond_51

    invoke-virtual {v5}, Lcom/jcraft/jsch/KeyExchange;->VH()I

    move-result v8

    if-ne v8, v7, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/jcraft/jsch/Session;->Qq:J

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/KeyExchange;->j6(Lcom/jcraft/jsch/Buffer;)Z

    move-result v7

    if-eqz v7, :cond_3d

    goto :goto_12

    :cond_3d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "verify: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/16 v8, 0x14

    if-eq v7, v8, :cond_313

    const/16 v8, 0x15

    if-eq v7, v8, :cond_30b

    packed-switch v7, :pswitch_data_364

    const/16 v8, 0x5d

    packed-switch v7, :pswitch_data_36e

    new-instance v0, Ljava/io/IOException;

    goto/16 :goto_2f9

    :pswitch_65  #0x51, 0x52
    iget-object v8, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->FH()Ljava/lang/Thread;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/16 v10, 0x51

    if-ne v7, v10, :cond_75

    const/4 v11, 0x1

    goto :goto_76

    :cond_75
    const/4 v11, 0x0

    :goto_76
    invoke-virtual {v9, v11}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW(I)V

    if-ne v7, v10, :cond_92

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6()I

    move-result v7

    if-nez v7, :cond_92

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->Eq:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6(I)V

    :cond_92
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_12

    :pswitch_97  #0x50
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v7

    if-eqz v7, :cond_a8

    const/4 v7, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v7, 0x0

    :goto_a9
    if-eqz v7, :cond_12

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v7, 0x52

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    :goto_b3
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_12

    :pswitch_b8  #0x64
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_ca

    goto/16 :goto_12

    :cond_ca
    iput v6, v7, Lcom/jcraft/jsch/Channel;->j3:I

    goto/16 :goto_12

    :pswitch_ce  #0x63
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_e0

    goto/16 :goto_12

    :cond_e0
    iput v2, v7, Lcom/jcraft/jsch/Channel;->j3:I

    goto/16 :goto_12

    :pswitch_e4  #0x62
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v9

    if-eqz v9, :cond_fa

    const/4 v9, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v9, 0x0

    :goto_fb
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v8

    const-string v10, "exit-status"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_117

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->FH(I)V

    const/16 v8, 0x63

    goto :goto_119

    :cond_117
    const/16 v8, 0x64

    :goto_119
    if-eqz v9, :cond_12

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    goto :goto_b3

    :pswitch_129  #0x61
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->DW()V

    goto/16 :goto_12

    :pswitch_13e  #0x60
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->Hw()V

    goto/16 :goto_12

    :pswitch_153  #0x5f
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/Buffer;->j6([I[I)[B

    move-result-object v9
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_168} :catch_333

    if-nez v7, :cond_16c

    goto/16 :goto_12

    :cond_16c
    aget v10, v4, v6

    if-nez v10, :cond_172

    goto/16 :goto_12

    :cond_172
    :try_start_172
    aget v11, v3, v6

    invoke-virtual {v7, v9, v11, v10}, Lcom/jcraft/jsch/Channel;->DW([BII)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_177} :catch_333

    aget v9, v4, v6

    :try_start_179
    iget v10, v7, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int/2addr v10, v9

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Channel;->v5(I)V

    iget v9, v7, Lcom/jcraft/jsch/Channel;->VH:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->Zo:I

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_12

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v8, v7, Lcom/jcraft/jsch/Channel;->Zo:I

    iget v9, v7, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    monitor-enter v7
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_19d} :catch_333

    :try_start_19d
    iget-boolean v8, v7, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v8, :cond_1a4

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_1a4
    monitor-exit v7
    :try_end_1a5
    .catchall {:try_start_19d .. :try_end_1a5} :catchall_1ac

    :try_start_1a5
    iget v8, v7, Lcom/jcraft/jsch/Channel;->Zo:I

    :goto_1a7
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->v5(I)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1aa} :catch_333

    goto/16 :goto_12

    :catchall_1ac
    move-exception v0

    :try_start_1ad
    monitor-exit v7
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    :try_start_1ae
    throw v0

    :pswitch_1af  #0x5e
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j6()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/Buffer;->j6([I[I)[B

    move-result-object v9
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1c4} :catch_333

    if-nez v7, :cond_1c8

    goto/16 :goto_12

    :cond_1c8
    aget v10, v4, v6

    if-nez v10, :cond_1ce

    goto/16 :goto_12

    :cond_1ce
    :try_start_1ce
    aget v11, v3, v6

    invoke-virtual {v7, v9, v11, v10}, Lcom/jcraft/jsch/Channel;->j6([BII)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d3} :catch_207

    aget v9, v4, v6

    :try_start_1d5
    iget v10, v7, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int/2addr v10, v9

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Channel;->v5(I)V

    iget v9, v7, Lcom/jcraft/jsch/Channel;->VH:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->Zo:I

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_12

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v8, v7, Lcom/jcraft/jsch/Channel;->Zo:I

    iget v9, v7, Lcom/jcraft/jsch/Channel;->VH:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    monitor-enter v7
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1f9} :catch_333

    :try_start_1f9
    iget-boolean v8, v7, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v8, :cond_200

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_200
    monitor-exit v7
    :try_end_201
    .catchall {:try_start_1f9 .. :try_end_201} :catchall_204

    :try_start_201
    iget v8, v7, Lcom/jcraft/jsch/Channel;->Zo:I
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_203} :catch_333

    goto :goto_1a7

    :catchall_204
    move-exception v0

    :try_start_205
    monitor-exit v7
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_204

    :try_start_206
    throw v0
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_207} :catch_333

    :catch_207
    move-exception v6

    :try_start_208
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->DW()V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_20b} :catch_20d

    goto/16 :goto_12

    :catch_20d
    move-exception v6

    goto/16 :goto_12

    :pswitch_210  #0x5d
    :try_start_210
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_222

    goto/16 :goto_12

    :cond_222
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/jcraft/jsch/Channel;->j6(J)V

    goto/16 :goto_12

    :pswitch_22b  #0x5c
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->FH(I)V

    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->Ws:Z

    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->J8:Z

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Channel;->VH(I)V

    goto/16 :goto_12

    :pswitch_24b  #0x5b
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v8

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v11

    if-eqz v7, :cond_12

    invoke-virtual {v7, v9, v10}, Lcom/jcraft/jsch/Channel;->DW(J)V

    invoke-virtual {v7, v11}, Lcom/jcraft/jsch/Channel;->gn(I)V

    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->XL:Z

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->VH(I)V

    goto/16 :goto_12

    :pswitch_274  #0x5a
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->u7()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v7

    const-string v8, "forwarded-tcpip"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c0

    const-string v8, "x11"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_296

    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->SI:Z

    if-nez v8, :cond_2c0

    :cond_296
    const-string v8, "auth-agent@openssh.com"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a2

    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->KD:Z

    if-nez v8, :cond_2c0

    :cond_2a2
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v7, 0x5c

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    sget-object v7, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    sget-object v7, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    goto/16 :goto_b3

    :cond_2c0
    invoke-static {v7}, Lcom/jcraft/jsch/Channel;->j6(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v8, v0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v8}, Lcom/jcraft/jsch/Channel;->we()V

    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Channel "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->lp:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/jcraft/jsch/Session;->x9:Z

    if-eqz v7, :cond_2f4

    invoke-virtual {v9, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_2f4
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_12

    :goto_2f9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown SSH message type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30b
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->Ws()V

    invoke-direct {p0, v0, v5}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    goto/16 :goto_11

    :cond_313
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v5

    goto/16 :goto_12

    :catch_319
    move-exception v8

    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-nez v9, :cond_326

    iget v9, p0, Lcom/jcraft/jsch/Session;->Mz:I

    if-ge v7, v9, :cond_326

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->EQ()V

    goto :goto_32e

    :cond_326
    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->XG:Z

    if-eqz v9, :cond_332

    iget v9, p0, Lcom/jcraft/jsch/Session;->Mz:I

    if-ge v7, v9, :cond_332

    :goto_32e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_14

    :cond_332
    throw v8
    :try_end_333
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_333} :catch_333

    :catch_333
    move-exception v0

    iput-boolean v6, p0, Lcom/jcraft/jsch/Session;->XG:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_359

    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught an exception, leaving main loop due to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_359
    :goto_359
    :try_start_359
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->j6()V
    :try_end_35c
    .catch Ljava/lang/NullPointerException; {:try_start_359 .. :try_end_35c} :catch_35f
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_35c} :catch_35d

    goto :goto_360

    :catch_35d
    move-exception v0

    goto :goto_360

    :catch_35f
    move-exception v0

    :goto_360
    iput-boolean v6, p0, Lcom/jcraft/jsch/Session;->vy:Z

    return-void

    nop

    :pswitch_data_364
    .packed-switch 0x50
        :pswitch_97  #00000050
        :pswitch_65  #00000051
        :pswitch_65  #00000052
    .end packed-switch

    :pswitch_data_36e
    .packed-switch 0x5a
        :pswitch_274  #0000005a
        :pswitch_24b  #0000005b
        :pswitch_22b  #0000005c
        :pswitch_210  #0000005d
        :pswitch_1af  #0000005e
        :pswitch_153  #0000005f
        :pswitch_13e  #00000060
        :pswitch_129  #00000061
        :pswitch_e4  #00000062
        :pswitch_ce  #00000063
        :pswitch_b8  #00000064
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
    .registers 2

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->kQ:[B

    :cond_8
    return-void
.end method
