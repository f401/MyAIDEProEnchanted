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
    .registers 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    const-string v0, "foo"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->v5:[B

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->Zo:I

    iget v0, p0, Lcom/jcraft/jsch/Channel;->Zo:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->VH:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->gn:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->u7:J

    iput v2, p0, Lcom/jcraft/jsch/Channel;->tp:I

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->XL:Z

    iput v3, p0, Lcom/jcraft/jsch/Channel;->aM:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->j3:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->a8:I

    sget-object v1, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/jcraft/jsch/Channel;->j6:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->j6:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->FH:I

    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static j6(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .registers 6

    sget-object v2, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget v3, v0, Lcom/jcraft/jsch/Channel;->FH:I

    if-ne v3, p0, :cond_1

    iget-object v3, v0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_1

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static j6(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .registers 2

    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    goto :goto_0

    :cond_4
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    goto :goto_0

    :cond_5
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    goto :goto_0

    :cond_6
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    goto :goto_0

    :cond_7
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6(Lcom/jcraft/jsch/Channel;)V
    .registers 3

    sget-object v1, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static j6(Lcom/jcraft/jsch/Session;)V
    .registers 8

    const/4 v2, 0x0

    sget-object v4, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [Lcom/jcraft/jsch/Channel;

    move v3, v2

    move v1, v2

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

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
    aget-object v2, v5, v0

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->DW()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/Channel;->DW:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget-object v6, v0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, p0, :cond_2

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public DW()V
    .registers 2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    if-nez v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->j6()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->we:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->j6()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->j6(Lcom/jcraft/jsch/Channel;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
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

    const-string v2, "open failed"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    sget-object v2, Lcom/jcraft/jsch/Util;->FH:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method DW(J)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->u7:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public EQ()Lcom/jcraft/jsch/Session;
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method FH()V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
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

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->FH()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method Hw(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->gn:I

    return-void
.end method

.method public J0()Z
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->U2:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected J8()V
    .registers 15

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->v5()Lcom/jcraft/jsch/Packet;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    const/16 v0, 0x7d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v2, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    int-to-long v4, v2

    cmp-long v2, v4, v12

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v2

    if-ne v2, v11, :cond_1

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v2

    if-eqz v2, :cond_1

    if-gtz v0, :cond_2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    if-eq v0, v11, :cond_6

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->XL:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    return-void

    :cond_2
    cmp-long v2, v4, v12

    if-lez v2, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    sub-long/2addr v2, v8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    cmp-long v2, v4, v12

    if-nez v2, :cond_4

    const-wide/16 v2, 0xa

    :goto_1
    const/4 v10, 0x1

    :try_start_2
    iput v10, p0, Lcom/jcraft/jsch/Channel;->a8:I

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v2, 0x0

    :try_start_3
    iput v2, p0, Lcom/jcraft/jsch/Channel;->a8:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move-wide v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel;->a8:I

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public QX()V
    .registers 1

    return-void
.end method

.method public VH()Ljava/io/InputStream;
    .registers 6

    const/4 v2, 0x0

    const v1, 0x8000

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const-string v3, "max_input_buffer_size"

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-direct {v3, p0, v1, v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;II)V

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v4, p0, v3, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v1, v4, v2}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/OutputStream;Z)V

    return-object v3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method VH(I)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    iget v0, p0, Lcom/jcraft/jsch/Channel;->a8:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    const/4 v2, 0x0

    const v1, 0x8000

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const-string v3, "max_input_buffer_size"

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-direct {v3, p0, v1, v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;II)V

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v4, p0, v3, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v1, v4, v2}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;Z)V

    return-object v3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method gn(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    return-void
.end method

.method j6()V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->Ws:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->J8:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->J0:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->tp()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->DW(Lcom/jcraft/jsch/Packet;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j6(I)V
    .registers 5

    iput p1, p0, Lcom/jcraft/jsch/Channel;->Mr:I

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->J8()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->QX()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->QX:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method j6(J)V
    .registers 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->u7:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->u7:J

    iget v0, p0, Lcom/jcraft/jsch/Channel;->a8:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->gn(I)V

    return-void
.end method

.method j6([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->DW([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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
