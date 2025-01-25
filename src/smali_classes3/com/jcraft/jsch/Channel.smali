.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Channel$MyPipedInputStream;,
        Lcom/jcraft/jsch/Channel$PassiveInputStream;,
        Lcom/jcraft/jsch/Channel$PassiveOutputStream;
    }
.end annotation


# static fields
.field private static DW:Ljava/util/Vector;

.field static j6:I


# instance fields
.field EQ:Lcom/jcraft/jsch/IO;

.field FH:I

.field volatile Hw:I

.field volatile J0:Z

.field volatile J8:Z

.field volatile Mr:I

.field volatile QX:Z

.field private U2:Lcom/jcraft/jsch/Session;

.field volatile VH:I

.field volatile Ws:Z

.field volatile XL:Z

.field volatile Zo:I

.field a8:I

.field volatile aM:I

.field volatile gn:I

.field volatile j3:I

.field volatile tp:I

.field volatile u7:J

.field protected v5:[B

.field we:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    const-string v1, "foo"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    const/high16 v1, 0x100000

    iput v1, p0, Lcom/jcraft/jsch/Channel;->Zo:I

    iget v1, p0, Lcom/jcraft/jsch/Channel;->Zo:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->VH:I

    const/16 v1, 0x4000

    iput v1, p0, Lcom/jcraft/jsch/Channel;->gn:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jcraft/jsch/Channel;->u7:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->XL:Z

    iput v0, p0, Lcom/jcraft/jsch/Channel;->aM:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->j3:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->a8:I

    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3b
    sget v1, Lcom/jcraft/jsch/Channel;->j6:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->j6:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->FH:I

    sget-object v1, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method static j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .registers 6

    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    sget-object v2, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_f

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_f
    sget-object v2, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Channel;

    iget v3, v2, Lcom/jcraft/jsch/Channel;->FH:I

    if-ne v3, p0, :cond_21

    iget-object v3, v2, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_21

    monitor-exit v0

    return-object v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    goto :goto_28

    :goto_27
    throw p0

    :goto_28
    goto :goto_27
.end method

.method static j6(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .registers 2

    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    return-object p0

    :cond_e
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    return-object p0

    :cond_1c
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    return-object p0

    :cond_2a
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance p0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    return-object p0

    :cond_38
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance p0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    return-object p0

    :cond_46
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    return-object p0

    :cond_54
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    return-object p0

    :cond_62
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance p0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    return-object p0

    :cond_70
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7e

    new-instance p0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    return-object p0

    :cond_7e
    const/4 p0, 0x0

    return-object p0
.end method

.method static j6(Lcom/jcraft/jsch/Channel;)V
    .registers 3

    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method static j6(Lcom/jcraft/jsch/Session;)V
    .registers 8

    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jcraft/jsch/Channel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    sget-object v5, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

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
    aget-object p0, v1, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    :try_start_22
    sget-object v5, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/Channel;

    iget-object v6, v5, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_33
    .catchall {:try_start_22 .. :try_end_2c} :catchall_37

    if-ne v6, p0, :cond_34

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :catch_33
    move-exception v5

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_37
    move-exception p0

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw p0

    :goto_3b
    goto :goto_3a
.end method


# virtual methods
.method public DW()V
    .registers 2

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_29

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    if-nez v0, :cond_a

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_26

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    :try_start_e
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->j6()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_29

    :try_start_19
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->j6()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_29

    goto :goto_22

    :catch_21
    move-exception v0

    :cond_22
    :goto_22
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    throw v0
.end method

.method protected DW(I)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    const-string p1, "open failed"

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    sget-object p1, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    move-exception p1

    :goto_35
    return-void
.end method

.method DW(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->u7:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method DW(Lcom/jcraft/jsch/Session;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    return-void
.end method

.method DW([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->FH([BII)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    return-void
.end method

.method public EQ()Lcom/jcraft/jsch/Session;
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method FH()V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    return-void

    :cond_10
    :try_start_10
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v3, 0x60

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    monitor-enter p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_38

    :try_start_28
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_33
    monitor-exit p0

    goto :goto_39

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    :goto_39
    return-void
.end method

.method FH(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->aM:I

    return-void
.end method

.method Hw()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->FH()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    return-void
.end method

.method Hw(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->gn:I

    return-void
.end method

.method public J0()Z
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected J8()V
    .registers 14

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->v5()Lcom/jcraft/jsch/Packet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    int-to-long v3, v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_23

    :cond_21
    const/16 v8, 0x7d0

    :goto_23
    monitor-enter p0

    :goto_24
    :try_start_24
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5c

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v9

    if-eqz v9, :cond_5c

    if-gtz v8, :cond_34

    goto :goto_5c

    :cond_34
    const/4 v9, 0x0

    cmp-long v10, v3, v6

    if-lez v10, :cond_44

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_88

    sub-long/2addr v10, v1

    cmp-long v12, v10, v3

    if-lez v12, :cond_44

    const/4 v8, 0x0

    goto :goto_24

    :cond_44
    cmp-long v10, v3, v6

    if-nez v10, :cond_4b

    const-wide/16 v10, 0xa

    goto :goto_4c

    :cond_4b
    move-wide v10, v3

    :goto_4c
    :try_start_4c
    iput v5, p0, Lcom/jcraft/jsch/Channel;->a8:I

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_56
    .catchall {:try_start_4c .. :try_end_51} :catchall_52

    goto :goto_57

    :catchall_52
    move-exception v0

    :try_start_53
    iput v9, p0, Lcom/jcraft/jsch/Channel;->a8:I

    throw v0

    :catch_56
    move-exception v10

    :goto_57
    iput v9, p0, Lcom/jcraft/jsch/Channel;->a8:I

    add-int/lit8 v8, v8, -0x1

    goto :goto_24

    :cond_5c
    :goto_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_88

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    if-eq v0, v10, :cond_78

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->XL:Z

    if-eqz v0, :cond_70

    iput-boolean v5, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    return-void

    :cond_70
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0

    :cond_8b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_94

    :goto_93
    throw v0

    :goto_94
    goto :goto_93
.end method

.method public QX()V
    .registers 1

    return-void
.end method

.method public VH()Ljava/io/InputStream;
    .registers 6

    const v0, 0x8000

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    const-string v2, "max_input_buffer_size"

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v1

    const v1, 0x8000

    :goto_16
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-direct {v2, p0, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;II)V

    const/4 v3, 0x0

    if-ge v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v4, p0, v2, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v1, v4, v3}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/OutputStream;Z)V

    return-object v2
.end method

.method VH(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    iget p1, p0, Lcom/jcraft/jsch/Channel;->a8:I

    if-lez p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected Ws()V
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->FH:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->VH:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->gn:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Channel;->aM:I

    return v0
.end method

.method Zo(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->Zo:I

    return-void
.end method

.method public gn()Ljava/io/InputStream;
    .registers 6

    const v0, 0x8000

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    const-string v2, "max_input_buffer_size"

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v1

    const v1, 0x8000

    :goto_16
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-direct {v2, p0, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;II)V

    const/4 v3, 0x0

    if-ge v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v4, p0, v2, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v1, v4, v3}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;Z)V

    return-object v2
.end method

.method gn(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    return-void
.end method

.method j6()V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    return-void

    :cond_14
    :try_start_14
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->DW()V

    const/16 v3, 0x61

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    monitor-enter p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_38

    :try_start_2c
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    monitor-exit p0

    goto :goto_39

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    :goto_39
    return-void
.end method

.method public j6(I)V
    .registers 4

    iput p1, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    :try_start_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->J8()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->QX()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1

    :cond_17
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method j6(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->u7:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->u7:J

    iget p1, p0, Lcom/jcraft/jsch/Channel;->a8:I

    if-lez p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method j6(Lcom/jcraft/jsch/Buffer;)V
    .registers 4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->VH(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->EQ()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->DW(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->gn(I)V

    return-void
.end method

.method j6([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->DW([BII)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    return-void
.end method

.method public run()V
    .registers 1

    return-void
.end method

.method tp()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    return v0
.end method

.method public u7()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/jcraft/jsch/Channel$1;

    invoke-direct {v0, p0, p0}, Lcom/jcraft/jsch/Channel$1;-><init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V

    return-object v0
.end method

.method protected v5()Lcom/jcraft/jsch/Packet;
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

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

    return-object v1
.end method

.method v5(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->VH:I

    return-void
.end method

.method we()V
    .registers 1

    return-void
.end method
